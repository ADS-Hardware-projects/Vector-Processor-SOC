`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 06:14:59 PM
// Design Name: 
// Module Name: register_tb
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


module register_tb(

    );
    localparam CLK_PERIOD=10, WordSize = 512;

    logic CLK = 0; // the master clock

    logic [WordSize-1:0] DataIn; // data input
    logic CS, WE, OE, RST;// contol logic
    logic [WordSize-1:0] DataOut; // data output

    initial forever #(CLK_PERIOD/2) CLK <= ~CLK;

    register #(WordSize) dut(.*);

    assign CS = 1; // always chip enabled

    initial begin
        repeat(10) @(posedge CLK) #1 RST = 0; OE = 1; WE = 0; // resetting the chip
        @(posedge CLK)            #1 RST = 1; // stop resetting the chip
        @(posedge CLK)            #1 DataIn = 128'h8723; WE = 1; // set data
        repeat(3) @(posedge CLK) #1 WE = 0; // set data
        repeat(3)  @(posedge CLK)            #1 OE = 1; // set data

        repeat(3) @(posedge CLK)            #1 RST = 0;
        @(posedge CLK)            #1 RST = 1;

    end
endmodule
