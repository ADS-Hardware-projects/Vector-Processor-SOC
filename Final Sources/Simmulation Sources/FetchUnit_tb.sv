`timescale 1ns / 1ps


module FetchUnit_tb(

    );


    localparam CLK_PERIOD=2;
    localparam matSize = 16;
    localparam memDepth = 12;


    logic clk = 0;
    initial forever #(CLK_PERIOD/2) clk <= ~clk;


    logic [31:0] dataIn; // this is the data input from the BLOCK RAM
    logic [$clog2(matSize*2 - 1) - 1: 0] readAddr; // address of the read port (FROM logic part)
    logic RESET;

    logic [matSize * 32 - 1: 0] dataOut; // output from the fetch unit
    logic [memDepth - 1: 0] addrIn; // address to the BLOCK ram
    logic valid; // this will be high when the data is valid for read

    FetchUnit fu(.*);

    initial begin

        @(posedge clk) #1 readAddr = 5'b11001; // setting the address

        // resetting the system
        @(posedge clk) #1 RESET = 0;
        @(posedge clk) #1 RESET = 1;

        repeat(2) @(posedge clk) #1 dataIn = 32'hffffffff;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffffe;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffffd;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffffc;

        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffffb;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffffa;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff9;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff8;

        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff7;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff6;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff5;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff4;

        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff3;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff2;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff1;
        repeat(2) @(posedge clk) #1 dataIn = 32'hfffffff0;


    end

endmodule
