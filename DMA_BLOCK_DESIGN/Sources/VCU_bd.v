`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 09:46:19 AM
// Design Name: 
// Module Name: VCU_bd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module VCU_bd#(
    parameter matSize = 16,
    parameter NoOfElem = 16,
    parameter wordSize = 32,
    parameter words = 16,
    parameter memDepth = 30
)(

    input clk,
    input RESET,

    input memWRTDone,

    input [wordSize - 1:0] BRAMdataIn, // this is the data input from the BLOCK RAM
    output [wordSize-1: 0] BRAMDataOut, // output data width is the block ram data width
    output [memDepth-1+2:0] BRAMaddrByte,
    
    output [3:0] BRAMWREN,
    output BRAMENMEM,
    output done


    );
    
    VCU #(
    .matSize(matSize),
    .NoOfElem(NoOfElem),
    .wordSize(wordSize),
    .words(words),
    .memDepth(memDepth)) inst_1(
    
    .clk(clk),
    .RESET(RESET),

    .memWRTDone(memWRTDone),
    

    .BRAMdataIn(BRAMdataIn), // this is the data input from the BLOCK RAM
    .BRAMDataOut(BRAMDataOut), // output data width is the block ram data width
    .BRAMaddrByte(BRAMaddrByte),
    
    .BRAMWREN(BRAMWREN),
    .BRAMENMEM(BRAMENMEM),
    .done(done)
    );
endmodule
