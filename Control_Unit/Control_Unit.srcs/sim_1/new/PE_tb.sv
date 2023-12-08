`timescale 1ns / 1ps
module PE_tb(

    );

localparam NoOfElem = 16; 
localparam wordSize = 32;
localparam CLK_PERIOD=2;

logic clk = 0;
logic RESET;
logic signed [NoOfElem-1 : 0][wordSize-1 : 0] in1;  //---------vector 1 
logic signed [NoOfElem-1 : 0][wordSize-1 : 0] in2;  //---------vector 2

logic signed [wordSize-1 : 0] out; //-------Truncated output
logic  valid;

PE pe(.*);

initial forever #(CLK_PERIOD/2) clk <= ~clk;

initial begin
    @(posedge clk) #1 RESET = 0;
    @(posedge clk) #1 in1 = 512'h00000031000000180000000c000000290000004e0000003e0000005800000007000000360000004a000000160000001e000000210000001b0000003200000063;
    @(posedge clk) #1 in2 = 512'h00000015000000140000003d00000063000000370000002f0000001600000028000000250000003c00000015000000070000005d000000270000003400000010;
    @(posedge clk) #1 RESET = 1;


end

endmodule
