`timescale 1ns / 1ps

module SystemV3_tb(

    );

    localparam CLK_PERIOD=2;


    logic CLK = 0, WE, RESET, start;

    /// These are for inputting data to the RAM
    logic [4:0] InAddress; // address bus for input
    logic [511:0] DataIn; // data bus for output

    logic [3:0] ResultAddress; // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    logic [511:0] FinalDataOut; // the column (calculated combined output)

    logic AnsValid;

    initial forever #(CLK_PERIOD/2) CLK <= ~CLK;

    SystemV3 mainSYS(.*);

    initial begin

        // resetting the system
        repeat(10) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1; WE = 1;





 @(posedge CLK) #1 DataIn = 512'h00000000000000170000000e00000004000000360000000400000014000000220000000f000000260000000a000000340000004e000000350000001c00000002; InAddress = 5'h00;
 @(posedge CLK) #1 DataIn = 512'h0000000b00000029000000480000003f000000260000001f000000550000004a00000048000000420000002e0000001f000000480000002d0000004500000009; InAddress = 5'h01;
 @(posedge CLK) #1 DataIn = 512'h000000630000001b0000004c00000028000000070000000b0000002900000032000000250000002f000000620000002900000044000000460000004000000060; InAddress = 5'h02;
 @(posedge CLK) #1 DataIn = 512'h0000000800000047000000430000002c0000000a00000048000000560000003c00000048000000530000002c0000005200000052000000140000004000000050; InAddress = 5'h03;
 @(posedge CLK) #1 DataIn = 512'h0000004d0000001b000000140000002a000000180000005100000015000000010000005d000000340000005500000039000000550000005e0000003800000047; InAddress = 5'h04;
 @(posedge CLK) #1 DataIn = 512'h000000060000004b00000037000000380000004200000008000000160000001900000037000000630000004b000000420000000c0000000b0000004a00000011; InAddress = 5'h05;
 @(posedge CLK) #1 DataIn = 512'h00000010000000630000003a0000002d0000004f00000012000000230000002b0000000f000000450000004e0000004e000000620000001b000000470000002c; InAddress = 5'h06;
 @(posedge CLK) #1 DataIn = 512'h0000005200000002000000410000000c0000003a0000004f000000610000004e0000002a0000002b000000090000003b0000004d000000020000001500000057; InAddress = 5'h07;
 @(posedge CLK) #1 DataIn = 512'h0000004700000024000000020000001a0000002e0000002e000000490000005a000000060000001f000000260000004e000000330000001d000000250000001a; InAddress = 5'h08;
 @(posedge CLK) #1 DataIn = 512'h00000003000000370000000d000000370000002c000000580000002600000053000000400000005b0000005b0000005a00000011000000320000003200000006; InAddress = 5'h09;
 @(posedge CLK) #1 DataIn = 512'h00000006000000600000002b0000001b000000320000004e0000004b000000070000005b0000002b0000005c0000005a0000006300000003000000570000001b; InAddress = 5'h0a;
 @(posedge CLK) #1 DataIn = 512'h0000001200000049000000400000005e0000003f0000002e0000002200000048000000490000003b00000034000000170000000d000000110000002100000013; InAddress = 5'h0b;
 @(posedge CLK) #1 DataIn = 512'h0000002e000000280000000a0000004e0000005a000000300000002a000000080000004e0000002d000000170000003f00000015000000490000001700000063; InAddress = 5'h0c;
 @(posedge CLK) #1 DataIn = 512'h000000540000000b0000004d0000001d0000003200000062000000570000004e0000004b0000005d00000039000000500000000d000000400000000700000055; InAddress = 5'h0d;
 @(posedge CLK) #1 DataIn = 512'h000000270000002200000058000000380000005b00000001000000280000002e000000270000006100000058000000250000002b000000320000005000000032; InAddress = 5'h0e;
 @(posedge CLK) #1 DataIn = 512'h0000005c00000017000000610000004200000021000000610000000d0000002a000000480000000600000063000000540000004200000051000000050000003a; InAddress = 5'h0f;






 @(posedge CLK) #1 DataIn = 512'h0000005a000000520000004e000000390000000c0000005a00000063000000430000000d00000057000000240000000c0000003c00000020000000620000000e; InAddress = 5'h10;
 @(posedge CLK) #1 DataIn = 512'h000000200000005b0000002e000000630000003a0000004d000000340000001b000000410000003a0000002d0000003300000037000000080000001900000024; InAddress = 5'h11;
 @(posedge CLK) #1 DataIn = 512'h000000210000004d000000040000001a0000005b0000002b0000003a000000390000002000000003000000000000004f000000230000000d0000005b00000016; InAddress = 5'h12;
 @(posedge CLK) #1 DataIn = 512'h0000004000000036000000090000000e0000000f0000004e000000360000001e0000000c00000019000000600000001a0000004d00000063000000370000004a; InAddress = 5'h13;
 @(posedge CLK) #1 DataIn = 512'h000000400000003d0000005c00000063000000020000005f000000280000005a00000040000000260000004c000000260000005c0000002c000000440000003f; InAddress = 5'h14;
 @(posedge CLK) #1 DataIn = 512'h00000060000000170000005f000000410000003e00000047000000320000003a000000220000001800000031000000360000003300000063000000050000003f; InAddress = 5'h15;
 @(posedge CLK) #1 DataIn = 512'h0000002e00000044000000240000002a00000020000000480000002d0000003600000001000000530000004b000000200000000200000061000000630000005a; InAddress = 5'h16;
 @(posedge CLK) #1 DataIn = 512'h0000004500000031000000470000004b000000140000002100000011000000460000005c0000002b0000003d0000003a00000031000000570000006100000003; InAddress = 5'h17;
 @(posedge CLK) #1 DataIn = 512'h00000043000000490000002c0000004b000000080000002b000000190000001700000020000000100000001a0000002900000059000000000000003500000062; InAddress = 5'h18;
 @(posedge CLK) #1 DataIn = 512'h0000003100000042000000390000002f0000003e0000002c0000001c0000006300000032000000000000001f0000000b0000001c0000001c000000300000000d; InAddress = 5'h19;
 @(posedge CLK) #1 DataIn = 512'h0000005e0000001700000014000000030000006300000055000000530000003b000000340000005d000000070000001b00000019000000110000003b0000005c; InAddress = 5'h1a;
 @(posedge CLK) #1 DataIn = 512'h000000310000003400000034000000570000005a0000001e000000220000002600000001000000390000002b0000000200000009000000510000005100000054; InAddress = 5'h1b;
 @(posedge CLK) #1 DataIn = 512'h000000030000000c000000630000003d0000002a00000007000000070000004f000000180000006300000032000000130000002200000054000000520000002a; InAddress = 5'h1c;
 @(posedge CLK) #1 DataIn = 512'h00000043000000240000001800000000000000480000000b0000001d0000003a00000024000000200000005500000036000000380000005e000000370000000c; InAddress = 5'h1d;
 @(posedge CLK) #1 DataIn = 512'h0000003e000000270000002d0000000700000036000000440000006100000016000000260000004e0000002b0000003a00000016000000490000005000000054; InAddress = 5'h1e;
 @(posedge CLK) #1 DataIn = 512'h0000000b0000001e0000001d0000002b000000050000002c0000004a000000580000000000000034000000570000000100000004000000330000003a00000024; InAddress = 5'h1f;








        repeat(3) @(posedge CLK) #1 WE = 0;

        repeat(112) @(posedge CLK) #1 start = 1;

        @(posedge CLK) #1 start = 0; RESET = 0;
    
    end


endmodule
