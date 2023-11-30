module system #(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepth = 12
)
(
    input clk,
    input RESET,
    input MemWE,

    input memWRTDone,

    input [memDepth - 1:0] MemInAddress, // address bus for input
    input [wordSize-1:0] MemDataIn, // data bus for output

    output [wordSize-1: 0] BRAMDataOut, // output data width is the block ram data width
    output [3:0]BRAMWREN
);

    logic [memDepth-1:0] dummyAddr;
    // Creating the memmory
    logic [wordSize - 1 :0] MemDataOut; // data bus for output


    logic [memDepth-1:0] AddrSelected;

    assign AddrSelected = MemWE ? MemInAddress : dummyAddr; 

    DataMemory #(memDepth) memmory(
        .clk(clk),
        .RESET(RESET),
        .WE(MemWE),
        .InAddress(AddrSelected),
        .DataIn(MemDataIn),
        .OutAddress(AddrSelected),
        .DataOut(MemDataOut)

    );

    logic BRAMENMEM;
    logic done;
    // Making the instance of the SYSTEM
     VCU #(matSize, NoOfElem, wordSize, words, memDepth) processUnit(
        .clk(clk),
        .RESET(RESET),
        .memWRTDone(memWRTDone),
        
        .BRAMdataIn(MemDataOut),
        .BRAMDataOut(BRAMDataOut),

        .BRAMWREN(BRAMWREN),
        .BRAMaddr(dummyAddr),

        .BRAMENMEM(BRAMENMEM),
        .done(done)
     );



endmodule
