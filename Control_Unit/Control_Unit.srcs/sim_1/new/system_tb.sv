`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 11:38:34 AM
// Design Name: 
// Module Name: system_tb
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


module system_tb(

    );

    localparam CLK_PERIOD=10;

    // for system inputs
    logic clk = 0; // the master clock
    logic [511:0] mainMemDataIn = 64'h0;
    logic [4:0] mainMemOutAddr = 5'b0;
    logic EXTread = 0;
    logic EXTwrite = 0;
    logic systemRESET = 0;
    logic [7:0]matDimData;
    logic [2:0]matDimWE;

    // for system outputs
    logic proc_done;
    logic [31: 0] PEDataOut [0 : 3];


    ///// JUST TO CHECK ///////////////////////////////////////////////////////////
    logic [7:0] l_val;
    logic [7:0] m_val;
    logic [7:0] n_val;

    logic [4:0] ROWcount;
    logic rowRegDone_;
    logic row_counter_WE_;

    logic [4:0]rowCountDataIn_;

    ///////////////////////////////////////////////////////////////////////////////

    initial forever #(CLK_PERIOD/2) clk <= ~clk;

    system #(5, 412, 4) mainSYS (
        // Just to check connections////////////////////
        .dim_l_dataOut(l_val),
        .dim_m_dataOut(m_val),
        .dim_n_dataOut(n_val),

        .rowCountDataOut(ROWcount),
        .ROW_reg_DONE(rowRegDone_),
        .row_counter_WE(row_counter_WE_),
        .rowCountDataIn(rowCountDataIn_),

        ////////////////////////////////////////////////

        // Essential Connections
        .dimDataIn(matDimData), 
        .dim_WE(matDimWE), 
        .RESET(systemRESET), 
        .process_DONE(proc_done), 
        .ShiftDataIn(PEDataOut), 
        .masterCLK(clk), 
        .mainMemoryWriteEXT(mainMemDataIn), 
        .mainMemAddrOutExternal(mainMemOutAddr), 
        .memoryReadSelect(EXTread), 
        .memoryWriteSelect(EXTwrite)
        );

    initial begin
        repeat(5) @(posedge clk) #1 systemRESET = 0;
        @(posedge clk) #1 systemRESET = 1;

        // sending matrix dimensions
        @(posedge clk) #1 matDimData = 8'b0000100; matDimWE = 3'b111; // setting all to 4 and write enable
        @(posedge clk) #1 matDimData = 2'h00; matDimWE = 3'b000; // disabling write enable

    end
endmodule
