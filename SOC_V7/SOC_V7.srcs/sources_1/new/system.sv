module system #(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16

)
(
    input clk,
    input RESET,

    input memWRTDone,

    input MemWE, // contol logic
    input [8:0] MemInAddress, // address bus for input
    input [31:0] MemDataIn, // data bus for output


    output [words * wordSize - 1: 0] RFDataOut [0 : NoOfElem - 1], // output from the register file
    output [matSize * 32 - 1: 0] FUdataOut // output from the fetch unit


);


    // LOGIC WIRES FOR THE FETCH UNIT
    logic [31:0] BRAMdata; // this is the data input from the BLOCK RAM
    logic [$clog2(matSize*2 - 1) - 1: 0] BRAMaddrFU; // address of the read port (FROM logic part)
    // logic [matSize * 32 - 1: 0] FUdataOut; // output from the fetch unit
    logic [$clog2(matSize*matSize*2 - 1) - 1: 0] BRAMaddr; // address to the BLOCK ram
    logic FUvalid; // this will be high when the data is valid for read
    logic FURESET;

    FetchUnit fetch_unit(
        .dataIn(BRAMdata),
        .readAddr(BRAMaddrFU),
        .clk(clk),
        .RESET(FURESET),
        .dataOut(FUdataOut),
        .addrIn(BRAMaddr),
        .valid(FUvalid)
    );


    // LOGIC WIRES FOR REGISTER FILE
    logic [words * wordSize - 1 : 0] RFDataIn; // data input to the register file
    logic [$clog2(NoOfElem - 1) - 1 : 0] RFAddr; // write address to the register file
    logic RFWE; // write enable for the register file
    // logic [words * wordSize - 1: 0] RFDataOut [0 : NoOfElem - 1]; // output from the register file


    regFile reg_file(
        .dataIn(RFDataIn),
        .addr(RFAddr),
        .RESET(RESET),
        .WE(RFWE),
        .clk(clk),
        .dataOut(RFDataOut)
    );


    // LOGIC FOR DATA MEMMORY
    logic [8:0] MemOutAddress; // address bus for input
    logic [31:0] MemDataOut; // data bus for output
    

    DataMemory memory(
        .InAddress(MemInAddress),
        .DataIn(MemDataIn),
        .OutAddress(MemOutAddress),
        .DataOut(MemDataOut),
        .WE(MemWE),
        .clk(clk),
        .RESET(RESET)
    );




















    reg [$clog2(NoOfElem - 1) : 0]regFileAddrCounter;

    ////////////////////////// COMBINATIONAL LOGIC PART ////////////////////////////////

    assign RFDataIn = FUdataOut;
    assign BRAMdata = MemDataOut;
    assign MemOutAddress = BRAMaddr;
    assign RFAddr   = regFileAddrCounter;

    assign BRAMaddrFU = regFileAddrCounter;

    assign RFWE = ~regFileAddrCounter[$clog2(NoOfElem - 1)] && FUvalid; 

    

    ////////////////////////// SEQUENTIAL LOGIC PART //////////////////////////
    

    always @(posedge clk or negedge RESET) begin
        // RESET LOGIC
        if(!RESET) begin
            regFileAddrCounter <= 0;
            FURESET <= 0;
        end 
        
        // other combinational logic
        else begin

            if (memWRTDone) begin
                if (FUvalid) begin 
                    regFileAddrCounter <= regFileAddrCounter + 1; // increment the address by one
                    FURESET <= 0; // reset the fetch unit
                end else begin
                    FURESET <= 1; // stop resetting the fetch unit so it can start readin
                end
            end else begin
                FURESET <= 0; // constantly resetting the Fetch unit until memmory write done
            end
        end
    end


endmodule
