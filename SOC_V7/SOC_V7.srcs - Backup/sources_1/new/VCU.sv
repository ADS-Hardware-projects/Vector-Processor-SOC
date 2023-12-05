module VCU#(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepthC = 32,


    localparam memDepth = memDepthC - 2
)
(
    input clk,
    input RESET,

    input memWRTDone,

    input [wordSize - 1:0] BRAMdataIn, // this is the data input from the BLOCK RAM
    output logic [wordSize-1: 0] BRAMDataOut, // output data width is the block ram data width
    output logic [memDepth-1+2:0]BRAMaddrByte,

    output logic [3:0]BRAMWREN,
    output logic BRAMENMEM,
    output logic done

);

    logic [memDepth-1:0]selectedAddress;
    logic [$clog2(matSize) - 1: 0] resultWRAddrCounter ;

    logic [wordSize - 1:0] FUdataIn; // this is the data input from the BLOCK RAM
    logic [$clog2(matSize*2) - 1: 0] FUreadAddr; // address of the read port (FROM logic part)
    logic WriterBusy;
    logic FURESET;

    logic [matSize * 32 - 1: 0] FUdataOut; // output from the fetch unit
    logic [memDepth - 1: 0] FUaddrIn; // address to the BLOCK ram
    logic FUvalid; // this will be high when the data is valid for read
    logic FUMEMenable;

    logic [$clog2(matSize*2) : 0] addrCounter;

    FetchUnit #(.matSize(matSize), .memDepth(memDepth)) fu(
        .dataIn(FUdataIn),
        .readAddr(FUreadAddr),
        .WriterBusy(WriterBusy),
        .RESET(FURESET),
        .clk(clk),

        .dataOut(FUdataOut),
        .addrIn(FUaddrIn),
        .valid(FUvalid),
        .MEMenable(FUMEMenable)
    );



    logic [words * wordSize - 1 : 0] RFdataIn;
    logic [$clog2(NoOfElem) - 1 : 0] RFaddr;
    logic RFWE;
    logic [words * wordSize - 1: 0] RFdataOut [0 : NoOfElem - 1]; // this is the register file

    logic [words * wordSize - 1 : 0] column; // this will save the column from matrix B


    regFile #(.wordSize(wordSize), .words(words), .NoOfElem(NoOfElem)) rf(
        .dataIn(RFdataIn),
        .addr(RFaddr),
        .RESET(RESET),
        .WE(RFWE),
        .clk(clk),
        .dataOut(RFdataOut)
    );




    ////////////////////////////////////////////////////////////
    // LOGIC FOR PROCESSING ELEMENTS 
    logic [NoOfElem - 1 : 0]v_valid;
    logic PEValid;

    logic PEEnable;
    logic [wordSize-1 : 0]PEOutput[0: NoOfElem - 1];
    



    genvar i;
    generate
    for (i = 0; i < NoOfElem; i = i + 1) begin : PEs
        PE #(matSize, wordSize, wordSize) ProcElem_inst (
        .clk(clk),
        .enable(PEEnable),
        .k(RFdataOut[i]),
        .x(column),
        .y_out(PEOutput[i]),
        .v_valid(v_valid[i])
        );
    end
    endgenerate




    // Conneting the memmory writer
    logic MEMWRRESET;
    logic [memDepth-1 : 0] BRAMAddrOut;
    logic MRwriteEN;
    logic WRdone;
    logic [$clog2(NoOfElem) - 1: 0]ResultWRAddr;

    memWriter #(NoOfElem, wordSize, memDepth) memoryWriteBuff (
        .clk(clk),
        .RESET(MEMWRRESET),
        .dataIn(PEOutput),
        .writeAddr(ResultWRAddr),
        .dataOut(BRAMDataOut),
        .writeAddrBRAM(BRAMAddrOut),
        .writeEN(MRwriteEN),
        .WRdone(WRdone)
    );


    
    ////////////////////////// COMBINATIONAL LOGIC PART ////////////////////////////////
    assign BRAMENMEM = FUMEMenable || MRwriteEN;
 

    assign FUreadAddr = addrCounter[$clog2(matSize*2) - 1 : 0];
    assign FUdataIn = BRAMdataIn;

    assign done = (&resultWRAddrCounter) && WRdone && firstPEValid & ~BRAMENMEM;

    assign ResultWRAddr = resultWRAddrCounter;

    assign selectedAddress = MRwriteEN ? BRAMAddrOut : FUaddrIn; // select Fetch unit address if Memmory writer is not writing

    assign WriterBusy = ~WRdone; // writer bussy if the writer is not done

    assign BRAMWREN = MRwriteEN ? 4'b1111 : 4'b0000; // generating 4 bit memeory write enable signal
    assign PEValid = (&v_valid) ? 1 : 0; // if all v_valid is 1 then PEvalid is 1

    assign RFWE = ~addrCounter[$clog2(matSize)] && FUvalid; // Register File Write Enable is NOT of MSB of addr counter
    assign RFaddr = addrCounter[$clog2(matSize) - 1 :0]; // register file address is 4 LSBs of address counter
    assign RFdataIn = FUdataOut; // fetch unit output is the input for the register file

    assign BRAMaddrByte = {selectedAddress, 2'b00}; // generating the byte addressible memmory address
    ////////////////////////// SEQUENTIAL LOGIC PART //////////////////////////
    
    logic firstTime;
    logic firstPEValid;
    

    always @(posedge clk or negedge RESET) begin
        // RESET LOGIC
        if(!RESET) begin

            // resetting the Fetch Unit
            addrCounter <= 0;
            FURESET <= 0;

            // resetting memmory writer
            MEMWRRESET <= 0;

            // other resets
            firstTime <= 1;
            firstPEValid <= 0;
            resultWRAddrCounter <= matSize - 1;
            PEEnable <= 0;
            column <= 0;
        end 
        
        // other combinational logic
        else begin
            if (memWRTDone) begin
                if(FUvalid && addrCounter < NoOfElem*2+1) begin

                    if (addrCounter < matSize) begin 
                        addrCounter <= addrCounter + 1;
                        FURESET <= 0;
                    end else begin

                        if (firstTime || PEValid) begin 
                            column <= FUdataOut;
                            addrCounter <= addrCounter + 1;
                            FURESET <= 0;
                            PEEnable <= 0;
                            firstTime <= 0;


                            if(PEValid) begin 
                                MEMWRRESET <= 0;
                                firstPEValid <= 1;
                                resultWRAddrCounter <= resultWRAddrCounter + 1;
                            end 

                        end else begin
                            PEEnable <= 1;
                        end
                        
                    end

                end else begin 
                    FURESET <= 1; // let the fetch unit fetch
                    // PEEnable <= 1; // let the processing element do the work
                    if (firstPEValid) begin 
                        MEMWRRESET <= 1;
                    end
                    
                end
                
            end else begin
                FURESET <= 0;
            end
        end
    end


endmodule
