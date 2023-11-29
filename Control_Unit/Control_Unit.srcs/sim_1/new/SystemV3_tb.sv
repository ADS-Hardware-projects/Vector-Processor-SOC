`timescale 1ns / 1ps

module SystemV3_tb(

    );

    localparam CLK_PERIOD=2;


    logic CLK = 0, WE, RESET, start;

    /// These are for inputting data to the RAM
    logic [4:0] InAddress; // address bus for input
    logic [511:0] DataIn; // data bus for output

    logic [4:0] ResultAddress; // address of the (this will tell what the output is For saliya) (4 bit 0 - 16)
    logic [255:0] FinalDataOut; // the column (calculated combined output)

    logic AnsValid;

    initial forever #(CLK_PERIOD/2) CLK <= ~CLK;

    SystemV6 mainSYS(.*);

    initial begin

        // resetting the system
        repeat(2) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1;


        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000100000002800000011000000490000005500000057000000080000001f0000000c000000310000003e0000004c00000063000000050000002800000014; InAddress = 5'h00;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000000500000053000000030000005400000059000000330000006200000055000000370000000c000000290000003d00000036000000460000006300000035; InAddress = 5'h01;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000049000000080000003900000049000000510000003d0000002e0000001600000018000000120000000d000000000000003f0000005f0000003200000011; InAddress = 5'h02;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000056000000020000004800000013000000190000000800000055000000480000005900000000000000210000005100000062000000630000003c00000030; InAddress = 5'h03;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000004a000000410000001c000000280000000a00000058000000060000005300000022000000340000001b0000003a00000026000000300000003b00000041; InAddress = 5'h04;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000280000004f0000003a0000004a000000450000002b00000001000000580000004f000000430000001b0000002b00000033000000340000002500000012; InAddress = 5'h05;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000330000001f000000470000005f0000000c000000330000002f0000005e0000005c000000100000005b000000050000000f000000350000004100000027; InAddress = 5'h06;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000001700000059000000420000003b0000004f00000058000000340000005c000000430000002e000000310000000700000018000000180000004100000028; InAddress = 5'h07;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000007000000320000000d000000500000005c0000000c0000003a0000003c000000040000000000000014000000380000005b000000130000004600000008; InAddress = 5'h08;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000002d0000001a0000003f0000000e0000005f000000620000002a0000002900000031000000520000004c0000006200000010000000540000002a00000061; InAddress = 5'h09;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000280000004d000000310000001c0000000d0000002600000003000000000000003200000022000000410000002c000000590000005f0000005c00000044; InAddress = 5'h0a;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000170000001b000000440000003d0000000d000000500000000900000017000000200000004f0000005b0000003a00000059000000630000002a00000006; InAddress = 5'h0b;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000000a00000054000000110000001b00000061000000310000001d000000440000000b0000003000000051000000370000000c000000050000002200000051; InAddress = 5'h0c;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000004400000023000000530000005c000000600000002a00000007000000520000001800000020000000060000001a000000360000002a0000000100000021; InAddress = 5'h0d;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003c0000005e000000490000000d00000033000000340000001a000000450000000d000000450000000f000000420000004d000000320000002100000048; InAddress = 5'h0e;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000250000005b000000610000003500000018000000130000005e00000049000000370000005c0000005e00000033000000530000004b0000003e00000005; InAddress = 5'h0f;
        @(posedge CLK) #1 WE = 1;
        @(posedge CLK) #1 WE = 0;


        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000062000000450000004d0000002000000011000000180000003b0000001c000000400000004b000000180000003f00000032000000460000004900000036; InAddress = 5'h10;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000042000000620000003d000000100000003c0000003a000000280000006000000005000000470000006300000019000000260000004d0000004700000015; InAddress = 5'h11;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000034000000390000002d00000016000000220000005f000000490000002d000000210000003c000000030000005800000057000000570000002c00000043; InAddress = 5'h12;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000044000000260000000c000000180000005c00000024000000330000002a000000520000002e0000001e0000003e000000280000005a0000001100000062; InAddress = 5'h13;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000310000004100000003000000340000003d000000300000002a000000200000000f0000004d00000032000000030000002800000017000000280000000b; InAddress = 5'h14;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003500000014000000570000000a0000002a000000170000002a0000000200000012000000210000005100000033000000400000005b0000005c00000043; InAddress = 5'h15;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000004f0000001d0000005c0000005d000000580000001800000058000000270000001900000032000000410000000a000000190000002e0000000c0000000e; InAddress = 5'h16;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000260000005a00000062000000060000003200000010000000150000002e000000230000000d0000001b0000004d0000005f00000014000000070000000a; InAddress = 5'h17;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000024000000070000001b0000001700000049000000130000005c000000260000003a0000002c000000240000003f00000041000000000000003b0000004c; InAddress = 5'h18;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003400000061000000390000002500000027000000620000000d0000004f0000001f0000004d000000370000000000000060000000310000002b0000000d; InAddress = 5'h19;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000004a0000004c000000240000002e000000290000002400000058000000090000004c000000210000005600000055000000020000002d0000001200000058; InAddress = 5'h1a;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000002e000000610000002f000000550000002f00000029000000610000005d000000220000003f000000020000000f0000004e000000210000000300000027; InAddress = 5'h1b;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003c000000610000004d0000002c000000000000004400000005000000430000000000000002000000180000005d0000000c00000048000000080000000c; InAddress = 5'h1c;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000001c0000002e00000005000000340000003f0000001b0000005b000000340000002d000000450000003d0000000600000057000000450000001800000034; InAddress = 5'h1d;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000058000000530000000b00000028000000130000001100000024000000460000003e000000610000001a0000003900000002000000590000000500000034; InAddress = 5'h1e;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000000000000330000005600000018000000390000004a0000005200000020000000160000000600000030000000040000002200000016000000110000003b; InAddress = 5'h1f;
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;

        repeat (3) @(posedge CLK) #1 WE = 0;
        repeat (224)@(posedge CLK) #1 start = 1;


        //////// 7 x 2 = 14 CLKS to calculate a single column
        //////// 14 x 16 = 224 CLKS to calculate the whole matrix

        //////////////////////////////////////////////////////////////////////////// TEST 2 ////////////////////////////////////////////////////////////////////////////////
        // resetting the system
        repeat(2) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1;

        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000005700000004000000290000001e000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h00; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000210000002f000000340000004d000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h01; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000024000000330000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h02; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000002b000000120000004900000058000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h03; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;


        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003100000014000000590000003a000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h10; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000002a000000080000000c00000046000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h11; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000470000001d0000001900000063000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h12; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000005f00000010000000320000004c000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h13; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;

        repeat (3) @(posedge CLK) #1 WE = 0;
        repeat (56)@(posedge CLK) #1 start = 1;


        //////// 7 x 2 = 14 CLKS to calculate a single column
        //////// 14 x 4 = 56 CLKS to calculate the whole matrix

        //////////////////////////////////////////////////////////////////////////// TEST 3 ////////////////////////////////////////////////////////////////////////////////
        // resetting the system
        repeat(2) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1;

        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000004b0000003800000039000000440000004700000020000000140000004a0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h00; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000019000000360000000900000004000000080000003800000005000000360000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h01; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000000a000000230000003200000055000000190000000500000023000000510000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h02; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;






        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000460000003f000000340000003d00000005000000560000004e0000002e0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h10; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000013000000140000005700000025000000110000000e000000580000000e0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h11; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000060000001900000059000000090000001d0000003d00000021000000030000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h12; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h00000000000000000000005d0000000a0000005a0000000a000000320000005a0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h13; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003b0000005800000012000000120000005f0000003f00000044000000020000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h14; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;


        repeat (3) @(posedge CLK) #1 WE = 0;
        repeat (70)@(posedge CLK) #1 start = 1;


        //////// 7 x 2 = 14 CLKS to calculate a single column
        //////// 14 x 5 = 70 CLKS to calculate the whole matrix

        //////////////////////////////////////////////////////////////////////////// TEST 4 ////////////////////////////////////////////////////////////////////////////////
        // resetting the system
        repeat(2) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1;

        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000eafffffe5affffff0bffffffc6000001ec00000109ffffffeb0000013dffffffacffffffb4fffffffd0000000000000000000000000000000000000000; InAddress = 5'h00; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000480000013e0000005ffffffe230000002a00000107ffffff52000001a100000125fffffe1f000001be0000000000000000000000000000000000000000; InAddress = 5'h01; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h000001b9000000de0000002affffffb70000019affffff95000000c3fffffedcffffffd4ffffffe8ffffffa80000000000000000000000000000000000000000; InAddress = 5'h02; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'h0000003f000000a200000103ffffff8c000000f700000083000001160000001efffffea50000013dffffff730000000000000000000000000000000000000000; InAddress = 5'h03; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'hffffffe4ffffffa4fffffe9cffffff0affffffad00000040ffffff670000016e000000a600000140000000ec0000000000000000000000000000000000000000; InAddress = 5'h04; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;



        repeat(1) @(posedge CLK) #1 DataIn = 512'h000000fa000000acffffff72000000e4ffffff74fffffe7c000001b500000130ffffffbaffffff9a000000e00000000000000000000000000000000000000000; InAddress = 5'h10; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;
        repeat(1) @(posedge CLK) #1 DataIn = 512'hfffffe15ffffffd800000014fffffe2fffffffcafffffee7000000b400000136fffffea2fffffee5000001a20000000000000000000000000000000000000000; InAddress = 5'h11; 
        @(posedge CLK) WE = 1;
        @(posedge CLK) WE = 0;


        repeat (3) @(posedge CLK) #1 WE = 0;
        repeat (28)@(posedge CLK) #1 start = 1;


        //////// 7 x 2 = 14 CLKS to calculate a single column
        //////// 14 x 2 = 28 CLKS to calculate the whole matrix

        //////////////////////////////////////////////////////////////////////////// TEST 5 ////////////////////////////////////////////////////////////////////////////////
        // resetting the system
        repeat(2) @(posedge CLK) #1 RESET = 0; start = 0; WE = 0;
        @(posedge CLK) #1 RESET = 1;


       
    
    end


endmodule
