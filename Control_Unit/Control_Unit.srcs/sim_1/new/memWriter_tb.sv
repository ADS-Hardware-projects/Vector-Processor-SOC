`timescale 1ns / 1ps
module memWriter_tb(

    );


    localparam CLK_PERIOD=2;

    localparam NoOfElem = 16;
    localparam wordSize = 32;
    localparam memDepthC = 14;
    localparam memDepth = memDepthC - 2;

    logic clk = 0;
    initial forever #(CLK_PERIOD/2) clk <= ~clk;


    logic RESET;
    logic [NoOfElem-1 : 0][wordSize - 1: 0] dataIn; // inputs from the processing elements
    logic [memDepth-1 : 0] writeAddr; // write address from the logic part. this will be processed and sent to the block ram
    
    logic [wordSize-1: 0] dataOut; // output data width is the block ram data width
    logic [memDepth-1 : 0] writeAddrBRAM; // this is the address the BLOCK RAM sees
    logic writeEN;
    logic WRdone;




    memWriter #(
        .NoOfElem(NoOfElem),
        .wordSize(wordSize),
        .memDepth(memDepth)
    ) mw(.*); 


    initial begin
        @(posedge clk) #1 RESET = 0;
        @(posedge clk) #1 dataIn = 512'h0000000600000062000000390000002c000000050000001b00000047000000500000005a00000054000000200000004f00000008000000160000003400000008;
        @(posedge clk) #1 writeAddr = 12'h526;
        @(posedge clk) #1 RESET = 1;



    end




endmodule
