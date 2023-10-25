`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 09:23:09 PM
// Design Name: 
// Module Name: system_new_sim_tb
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


module system_new_sim_tb(

    );


    localparam CLK_PERIOD=10, MainMemoryDataWidth = 512;

    // for system inputs
    logic clk = 0; // the master clock
    logic RESET = 0;


    //////// Temporaty system logic WIRES /////////////////////////////////////
    
    //////// sys inputs
    logic [MainMemoryDataWidth - 1: 0] reg1DataIn;
    logic [MainMemoryDataWidth - 1: 0] reg2DataIn;
    logic [MainMemoryDataWidth - 1: 0] reg3DataIn;
    logic [MainMemoryDataWidth - 1: 0] reg4DataIn;

    logic [MainMemoryDataWidth - 1: 0] xDataBUS;

    logic [3:0] regWE; // Write Enable of the PE registers
    logic regOE; // Output Enable of the PE registers

    logic PEenable;

    /////// sys outputs
    logic [31: 0] PEDataOut1;
    logic [31: 0] PEDataOut2;
    logic [31: 0] PEDataOut3;
    logic [31: 0] PEDataOut4;

    logic [3:0] PEValid;

    ///////////////////////////////////////////////////////////////////////////


    initial forever #(CLK_PERIOD/2) clk <= ~clk;

    SystemV2 #(5, 512, 4) mainSYS (
        .clk(clk), 
        .RESET(RESET),

        .regWE(regWE),
        .regOE(regOE),

        .reg1DataIn(reg1DataIn),
        .reg2DataIn(reg2DataIn),
        .reg3DataIn(reg3DataIn),
        .reg4DataIn(reg4DataIn),

        .PEDataOut1(PEDataOut1),
        .PEDataOut2(PEDataOut2),
        .PEDataOut3(PEDataOut3),
        .PEDataOut4(PEDataOut4),

        .xDataBUS(xDataBUS),

        .PEenable(PEenable),
        .PEValid(PEValid)

    );

    initial begin

        /// RESET the system
        repeat(5) @(posedge clk) #1 RESET = 0; regOE = 0; regWE = 4'b0; PEenable = 0;
        @(posedge clk) #1 RESET = 1; regOE = 1;

        /// Add Data to busses and writing to the registers
        @(posedge clk) #1 
        reg1DataIn = 128'h0000000c000000220000000c0000000b000000000000000000000000000000000010000000000010000000000000000000000000000000000000001100000001; 
        reg2DataIn = 128'h0000002b0000004c0000000c0000000a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010; 
        reg3DataIn = 128'h0000000b000000090000002d00000032000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100; 
        reg4DataIn = 128'h00000017000000160000003d0000002d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000; 
        regWE = 4'b1111;

        @(posedge clk) #1 regWE = 4'b0;

        /// Add Data to other part of the PE
        @(posedge clk) #1
        xDataBUS = 128'h000000170000002c0000000c00000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
        PEenable = 0;





    end
endmodule
