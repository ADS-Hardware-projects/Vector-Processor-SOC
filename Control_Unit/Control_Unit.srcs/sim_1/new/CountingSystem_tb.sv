`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 09:50:48 AM
// Design Name: 
// Module Name: CountingSystem_tb
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


module CountingSystem_tb(

    );

    localparam CLK_PERIOD=10, MainMemoryDataWidth = 512;

    // for system inputs
    logic clk = 0; // the master clock
    logic RESET = 0;
    logic [3:0]rowCountDataOut;
    logic [3:0]colCountDataOut;
    logic [3:0]rowCountDataIn;

    logic valid;

    logic [7:0] dimDataIn;
    logic [1:0] dim_WE;

    logic enable;

    logic ROW_count_Done;
    
    logic [7:0]checkSUB;

    logic StartPROC;

    initial forever #(CLK_PERIOD/2) clk <= ~clk;

    CountingSystem MainCounters(
        .clk(clk), 
        .RESET(RESET), 
        .rowCountDataOut(rowCountDataOut), 
        .colCountDataOut(colCountDataOut),
    
        .valid(valid),
        

        .dimDataIn(dimDataIn),
        .dim_WE(dim_WE),

        .enable(enable),

        .ROW_count_Done(ROW_count_Done),

        .checkSUB(checkSUB),

        .StartPROC(StartPROC)
        );

    initial begin

        // resetting the system
        repeat(5) @(posedge clk) #1 StartPROC = 0; RESET = 0; valid = 0;
        repeat(2) @(posedge clk) #1 RESET = 1; 

        // setting the l value
        @(posedge clk) #1 dimDataIn = 8'h07; dim_WE = 3'b01;
        @(posedge clk) #1 dim_WE = 3'b000;

        // setting the n value
        @(posedge clk) #1 dimDataIn = 8'h06; dim_WE = 3'b10;
        repeat(5) @(posedge clk) #1 dim_WE = 3'b000;


        /// After this we need to start the process
        @(posedge clk) #1 StartPROC = 1;


        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

        @(posedge clk) #1 valid = 1;
        repeat(5) @(posedge clk) #1 valid = 0;

    end
endmodule
