`timescale 1ns / 1ps

module memmory_tb( 

);

    localparam CLK_PERIOD=10;

    logic [4:0] InAddress; // address bus for input
    logic [511:0] DataIn; // data bus for output

    logic [4:0] OutAddress; // address bus for input
    logic [511:0] DataOut; // data bus for output

    logic CS;
    logic WE;
    logic OE;
    logic CLK = 0; // contol logic

    // // dedicated outputs
    logic [511:0] Out0;
    logic [511:0] Out1;
    logic [511:0] Out2;
    logic [511:0] Out3;

    logic [511:0] Out4;
    logic [511:0] Out5;
    logic [511:0] Out6;
    logic [511:0] Out7;

    logic [511:0] Out8;
    logic [511:0] Out9;
    logic [511:0] Out10;
    logic [511:0] Out11;

    logic [511:0] Out12;
    logic [511:0] Out13;
    logic [511:0] Out14;
    logic [511:0] Out15;



    initial forever #(CLK_PERIOD/2) CLK <= ~CLK;

    assign CS = 1; // always connect to power

    DataMemory dut(.*);

    initial begin

        // sending data
        repeat(5) @(posedge CLK) #1 WE = 1; OE = 1;

        @(posedge CLK) #1 DataIn = 512'h0000000c000000220000000c0000000b0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h0;
        @(posedge CLK) #1 DataIn = 512'h0000002b0000004c0000000c0000000a0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h1;
        @(posedge CLK) #1 DataIn = 512'h0000000b000000090000002d000000320000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h2;
        @(posedge CLK) #1 DataIn = 512'h00000017000000160000003d0000002d0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h3;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h4;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h5;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h6;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h7;

        @(posedge CLK) #1 DataIn = 512'h000000170000002c0000000c000000500000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h8;
        @(posedge CLK) #1 DataIn = 512'h0000000c0000002a0000005a0000000d0000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'h9;
        @(posedge CLK) #1 DataIn = 512'h0000000c0000003000000056000000200000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'ha;
        @(posedge CLK) #1 DataIn = 512'h000000340000002700000051000000160000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'hb;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'hc;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'hd;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'he;
        @(posedge CLK) #1 DataIn = 512'h000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000; InAddress = 5'hf;

        repeat(10) @(posedge CLK) #1 WE = 0;


        // Now reading data
        @(posedge CLK) #1 OutAddress = 5'h0;
        @(posedge CLK) #1 OutAddress = 5'h1;
        @(posedge CLK) #1 OutAddress = 5'h2;
        @(posedge CLK) #1 OutAddress = 5'h3;
        @(posedge CLK) #1 OutAddress = 5'h4;
        @(posedge CLK) #1 OutAddress = 5'h5;
        @(posedge CLK) #1 OutAddress = 5'h6;
        @(posedge CLK) #1 OutAddress = 5'h7;
        @(posedge CLK) #1 OutAddress = 5'h8;
        @(posedge CLK) #1 OutAddress = 5'h9;
        @(posedge CLK) #1 OutAddress = 5'ha;
        @(posedge CLK) #1 OutAddress = 5'hb;
        @(posedge CLK) #1 OutAddress = 5'hc;
        @(posedge CLK) #1 OutAddress = 5'hd;
        @(posedge CLK) #1 OutAddress = 5'he;
        @(posedge CLK) #1 OutAddress = 5'hf;
         
    end
endmodule
