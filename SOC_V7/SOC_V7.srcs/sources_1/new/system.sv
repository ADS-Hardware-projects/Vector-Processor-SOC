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
    output [memDepth-1 : 0] BRAMAddrOut, // this is the address the BLOCK RAM sees
    output BRAMWREN
);


    // Creating the memmory
    logic [memDepth - 1:0] MemOutAddress; // address bus for input
    logic [wordSize - 1 :0] MemDataOut; // data bus for output

    DataMemory #(memDepth) memmory(
        .clk(clk),
        .RESET(RESET),
        .WE(MemWE),
        .InAddress(MemInAddress),
        .DataIn(MemDataIn),
        .OutAddress(MemOutAddress),
        .DataOut(MemDataOut)

    );


    // Making the instance of the SYSTEM
     VCU #(matSize, NoOfElem, wordSize, words, memDepth) processUnit(
        .clk(clk),
        .RESET(RESET),
        .memWRTDone(memWRTDone),
        
        .BRAMdataIn(MemDataOut),
        .BRAMaddrIn(MemOutAddress),

        .BRAMDataOut(BRAMDataOut),
        .BRAMAddrOut(BRAMAddrOut),
        .BRAMWREN(BRAMWREN)
     );



endmodule
