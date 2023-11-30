module VCU#(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepth = 12
)
(
    input clk,
    input RESET,

    input memWRTDone,

    input [wordSize - 1:0] BRAMdataIn, // this is the data input from the BLOCK RAM
    output [wordSize-1: 0] BRAMDataOut, // output data width is the block ram data width
    output [memDepth-1:0]BRAMaddr,

    output [3:0]BRAMWREN,
    output BRAMENMEM,
    output done

);
    logic BRAMWREN1bit;
    logic [memDepth - 1: 0] BRAMaddrIn; // address to the BLOCK ram
    logic [memDepth-1 : 0] BRAMAddrOut; // this is the address the BLOCK RAM sees

    logic [$clog2(NoOfElem) + 1 : 0] regCheck;

    // LOGIC WIRES FOR THE FETCH UNIT

    logic [$clog2(matSize*2) - 1: 0] BRAMaddrFU; // address of the read port (FROM logic part)
    logic [matSize * 32 - 1: 0] FUdataOut; // output from the fetch unit
    logic FUvalid; // this will be high when the data is valid for read
    logic FURESET;
    logic MEMenableFU;

    FetchUnit #(matSize, memDepth) fetch_unit (
        .dataIn(BRAMdataIn),
        .readAddr(BRAMaddrFU),
        .clk(clk),
        .RESET(FURESET),
        .dataOut(FUdataOut),
        .addrIn(BRAMaddrIn),
        .valid(FUvalid),
        .MEMenable(MEMenableFU),
        .WriterBusy(~WRdone)
    );


    // LOGIC WIRES FOR REGISTER FILE
    logic [words * wordSize - 1 : 0] RFDataIn; // data input to the register file
    logic [$clog2(NoOfElem) - 1 : 0] RFAddr; // write address to the register file
    logic RFWE; // write enable for the register file
    logic [words * wordSize - 1: 0] RFDataOut [0 : NoOfElem - 1]; // output from the register file


    regFile #(wordSize, words, NoOfElem) reg_file(
        .dataIn(RFDataIn),
        .addr(RFAddr),
        .RESET(RESET),
        .WE(RFWE),
        .clk(clk),
        .dataOut(RFDataOut)
    );


    // LOGIC FOR DATA MEMMORY
    logic [memDepth - 1:0] MemOutAddress; // address bus for input
    logic [31:0] MemDataOut; // data bus for output
    

    // LOGIC FOR PROCESSING ELEMENTS 
    logic [NoOfElem - 1 : 0]v_valid;
    logic PEEnable;
    logic PEValid;
    logic [wordSize-1 : 0]PEOutput[0: NoOfElem - 1];
    
    reg [wordSize * words - 1: 0] regColumn; // this will hold the column to multiply
    reg [$clog2(NoOfElem) + 1: 0]regAddrCounter; // this will control the writing address of the register file
    reg ProcessBegin;



    genvar i;
    generate
    for (i = 0; i < NoOfElem; i = i + 1) begin : gen_proc_elems
        PE #(matSize, wordSize, wordSize) ProcElem_inst (
        .clk(clk),
        .enable(PEEnable),
        .k(RFDataOut[i]),
        .x(regColumn),
        .y_out(PEOutput[i]),
        .v_valid(v_valid[i])
        );
    end
    endgenerate




    // Conneting the memmory writer
    logic MEMWRRESET;
    logic WRdone;
    logic addrDone;
    reg startedWriting;

    memWriter #(NoOfElem, wordSize, memDepth) memoryWriteBuff (
        .clk(clk),
        .RESET(MEMWRRESET),
        .dataIn(PEOutput),
        .writeAddr(regCheck[$clog2(NoOfElem) - 1: 0]),
        .dataOut(BRAMDataOut),
        .writeAddrBRAM(BRAMAddrOut),
        .writeEN(BRAMWREN1bit),
        .WRdone(WRdone)
    );

    
    ////////////////////////// COMBINATIONAL LOGIC PART ////////////////////////////////
    assign BRAMaddr = BRAMWREN1bit ? BRAMAddrOut : BRAMaddrIn;

    assign BRAMENMEM = BRAMWREN1bit || MEMenableFU;

    assign BRAMWREN = BRAMWREN1bit ? 4'b1111 : 4'b0000;
    assign addrDone = (&regCheck[3 : 0]) ? 1 : 0;
    assign done = addrDone && WRdone && startedWriting;

    assign regCheck = regAddrCounter - 2;

    assign RFDataIn = FUdataOut;
    assign RFAddr   = regAddrCounter [$clog2(NoOfElem) - 1 : 0];
    assign BRAMaddrFU = regAddrCounter [$clog2(matSize*2) - 1: 0];

    assign RFWE = ~regAddrCounter[$clog2(NoOfElem)] && FUvalid; 


    assign PEValid = (&v_valid) ? 1 : 0;

    ////////////////////////// SEQUENTIAL LOGIC PART //////////////////////////
    

    always @(posedge clk or negedge RESET) begin
        // RESET LOGIC
        if(!RESET) begin
            regAddrCounter <= 0;
            regColumn <= 0;
            ProcessBegin <= 1;
            FURESET <= 0;
            startedWriting <= 0;
            PEEnable <= 0;
        end 
        
        // other combinational logic
        else begin
            if (memWRTDone) begin
                if (FUvalid && regAddrCounter < NoOfElem*2+1) begin 

                    if (regAddrCounter < NoOfElem) begin // This block fills the register file in the begining
                        regAddrCounter <= regAddrCounter + 1; // increment the address by one
                        FURESET <= 0; // reset the fetch unit
                        PEEnable <= 0; // disable the Processing elements
                        MEMWRRESET <= 0;

                    end else begin
                        // this block is responsible for putting column to the all processing elements and calculating the row

                        if (ProcessBegin || PEValid) begin
                            regColumn <= FUdataOut; // assigning data out from the fetch unit to the column reader
                            regAddrCounter <= regAddrCounter + 1; // increment the adderess
                            FURESET <= 0; // reset the fetch unit so it can fetch data while process the data
                            PEEnable <= 0; // Reset the Processing element after giving the necessary information
                            ProcessBegin <= 0;

                            if (PEValid) begin 
                                MEMWRRESET <= 0;
                                startedWriting <= 1;
                            end else begin
                                MEMWRRESET <= 1;
                            end

                        end else begin
                            PEEnable <= 1; // enable Processing element so it can start working
                            MEMWRRESET <= 1;
                        end
                        
                    end
                end else begin
                    FURESET <= 1; // stop resetting the fetch unit so it can start reading
                end

                if (PEValid) begin 
                    MEMWRRESET <= 0;
                end else begin
                    MEMWRRESET <= 1;
                end
            end else begin
                FURESET <= 0; // constantly resetting the Fetch unit until memmory write done
            end
        end
    end


endmodule
