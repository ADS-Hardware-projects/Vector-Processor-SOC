`timescale 1ns / 1ps
module regFile_tb(

    );

    localparam CLK_PERIOD=2;
    localparam matSize = 16;
    parameter wordSize = 32;
    parameter words = 16;
    parameter NoOfElem = 16;

    logic clk = 0;
    initial forever #(CLK_PERIOD/2) clk <= ~clk;


    logic [words * wordSize - 1 : 0] dataIn;
    logic [$clog2(NoOfElem - 1) - 1 : 0] addr;
    logic RESET, WE;
    logic [words * wordSize - 1: 0] dataOut [0 : NoOfElem - 1]; // this is the register file

    regFile rf(.*);

    initial begin

        // resetting the system
        @(posedge clk) #1 RESET = 0; WE = 0;
        @(posedge clk) #1 RESET = 1;

        @(posedge clk) #1 dataIn = 512'hfffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0fffffff0; addr = 4'h0; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1fffffff1; addr = 4'h1; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2fffffff2; addr = 4'h2; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3fffffff3; addr = 4'h3; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4fffffff4; addr = 4'h4; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5fffffff5; addr = 4'h5; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6fffffff6; addr = 4'h6; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7fffffff7; addr = 4'h7; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8fffffff8; addr = 4'h8; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9fffffff9; addr = 4'h9; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffafffffffa; addr = 4'ha; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffbfffffffb; addr = 4'hb; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffcfffffffc; addr = 4'hc; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffdfffffffd; addr = 4'hd; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hfffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffefffffffe; addr = 4'he; WE = 1;
        @(posedge clk) #1 WE = 0;

        @(posedge clk) #1 dataIn = 512'hffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff; addr = 4'hf; WE = 1;
        @(posedge clk) #1 WE = 0;


    end

endmodule
