`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2023 09:13:58 PM
// Design Name: 
// Module Name: PEadd_tb
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


module PEadd_tb ();
localparam CLK_PERIOD=2;
    parameter matsize = 16;
    parameter wordsize = 32;

    logic RESET;
    logic ctrl;

    logic [matsize - 1 : 0][wordsize -1 : 0] a; // one of the inputs
    logic [matsize - 1 : 0][wordsize -1 : 0] b; // one of the inputs

    logic [matsize - 1 : 0][wordsize -1 : 0] c; // one of the inputs

    logic clk = 0;
    initial forever #(CLK_PERIOD/2) clk <= ~clk;

    PEadd #(matsize, wordsize) peadd(.*);


    initial begin

        repeat(5) @(posedge clk) #1 RESET = 0;
        @(posedge clk) #1 ctrl = 1;
        @(posedge clk) #1 a = 512'h0000000600000062000000390000002c000000050000001b00000047000000500000005a00000054000000200000004f00000008000000160000003400000008;
        @(posedge clk) #1 b = 512'h0000004100000054000000610000003d000000260000002600000047000000400000001400000036000000070000005700000018000000270000004400000002;
        @(posedge clk) #1 RESET = 1;

    end
endmodule
