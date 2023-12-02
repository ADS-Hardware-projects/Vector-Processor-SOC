module system #(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepthC = 14,

    localparam memDepth = memDepthC - 2
)
(
    input clk,
    input RESETmem,
    input RESETvcu,
    input memWRTDone,

    input WEmem,

    input [memDepth-1:0]MemInAddr,
    input [wordSize-1:0]MemInData
);

    logic [memDepth-1:0]MemAddr;
    logic [wordSize-1:0]MemDataOut;

    logic [wordSize-1:0]VCUdataOut;

    DataMemory #(memDepth) memmory(
        .clk(clk),
        .RESET(RESETmem),
        .WE(WEmem),
        .InAddress(MemAddr),
        .DataIn(MemInData),
        .OutAddress(MemAddr),
        .DataOut(MemDataOut)

    );

    logic [3:0]BRAMWREN;
    logic [memDepthC-1:0]BRAMaddrByte;
    logic done;
    logic BRAMENMEM;
    
    // Making the instance of the SYSTEM
     VCU #(matSize, NoOfElem, wordSize, words, memDepthC) processUnit(
        .clk(clk),
        .RESET(RESETvcu),
        .memWRTDone(memWRTDone),
        
        .BRAMdataIn(MemDataOut),
        .BRAMDataOut(VCUdataOut),

        .BRAMWREN(BRAMWREN),
        .BRAMaddrByte(BRAMaddrByte),

        .BRAMENMEM(BRAMENMEM),
        .done(done)
     );

    assign MemAddr = WEmem ? MemInAddr : BRAMaddrByte[memDepthC-1:2];

endmodule
