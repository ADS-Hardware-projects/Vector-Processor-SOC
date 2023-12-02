`timescale 1ns / 1ps

module VCU_wrapper_tb(

    );

    localparam CLK_PERIOD=2;

    localparam matSize = 16;
    localparam NoOfElem = 16;
    localparam wordSize = 32;
    localparam words = 16;
    localparam memDepthC = 14;

    localparam memDepth = memDepthC - 2;

    logic clk = 0;
    logic RESETmem;
    logic RESETvcu;
    logic memWRTDone;
    logic WEmem;
    logic [memDepth-1:0]MemInAddr;
    logic [wordSize-1:0]MemInData;


    initial forever #(CLK_PERIOD/2) clk <= ~clk;


    system #(matSize, NoOfElem, wordSize, words, memDepthC) sys(.*);


    initial begin
        @(posedge clk) #1 RESETmem = 0;
        @(posedge clk) #1 RESETmem = 1;

        @(posedge clk) #1 memWRTDone = 0;
        @(posedge clk) #1 WEmem = 1;
        
        repeat (10) @(posedge clk) #1 RESETvcu = 0;

        //////////////////////////  Fill A Matrix Data ///////////////////////////////////
@(posedge clk) #1 MemInAddr  = 9'h0; MemInData = 32'h1f;
@(posedge clk) #1 MemInAddr  = 9'h1; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 9'h2; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'h3; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h4; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'h5; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h6; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'h7; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 9'h8; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h9; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 9'ha; MemInData = 32'h56;
@(posedge clk) #1 MemInAddr  = 9'hb; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 9'hc; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'hd; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'he; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'hf; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'h10; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'h11; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 9'h12; MemInData = 32'h0;
@(posedge clk) #1 MemInAddr  = 9'h13; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'h14; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h15; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h16; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'h17; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'h18; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h19; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 9'h1a; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h1b; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h1c; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h1d; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h1e; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h1f; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 9'h20; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 9'h21; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'h22; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h23; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h24; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h25; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h26; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h27; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 9'h28; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 9'h29; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 9'h2a; MemInData = 32'he;
@(posedge clk) #1 MemInAddr  = 9'h2b; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h2c; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h2d; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h2e; MemInData = 32'h44;
@(posedge clk) #1 MemInAddr  = 9'h2f; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h30; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h31; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h32; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h33; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h34; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h35; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 9'h36; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'h37; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'h38; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 9'h39; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h3a; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'h3b; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'h3c; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h3d; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 9'h3e; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h3f; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 9'h40; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 9'h41; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h42; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h43; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 9'h44; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 9'h45; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 9'h46; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'h47; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'h48; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 9'h49; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h4a; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h4b; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h4c; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'h4d; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h4e; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 9'h4f; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 9'h50; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'h51; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 9'h52; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 9'h53; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h54; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 9'h55; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h56; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h57; MemInData = 32'he;
@(posedge clk) #1 MemInAddr  = 9'h58; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 9'h59; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'h5a; MemInData = 32'h13;
@(posedge clk) #1 MemInAddr  = 9'h5b; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 9'h5c; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 9'h5d; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'h5e; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 9'h5f; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h60; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'h61; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'h62; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'h63; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h64; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'h65; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 9'h66; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h67; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 9'h68; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h69; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 9'h6a; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h6b; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h6c; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'h6d; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 9'h6e; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 9'h6f; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 9'h70; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'h71; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 9'h72; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 9'h73; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 9'h74; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 9'h75; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h76; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'h77; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h78; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h79; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h7a; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h7b; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h7c; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 9'h7d; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h7e; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h7f; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 9'h80; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 9'h81; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h82; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 9'h83; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h84; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h85; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h86; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h87; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'h88; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h89; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 9'h8a; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 9'h8b; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 9'h8c; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h8d; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'h8e; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h8f; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'h90; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 9'h91; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h92; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 9'h93; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 9'h94; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h95; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'h96; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 9'h97; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 9'h98; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'h99; MemInData = 32'h13;
@(posedge clk) #1 MemInAddr  = 9'h9a; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h9b; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h9c; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h9d; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'h9e; MemInData = 32'h2f;
@(posedge clk) #1 MemInAddr  = 9'h9f; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'ha0; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'ha1; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'ha2; MemInData = 32'h44;
@(posedge clk) #1 MemInAddr  = 9'ha3; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'ha4; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'ha5; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 9'ha6; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'ha7; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'ha8; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 9'ha9; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'haa; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'hab; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 9'hac; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 9'had; MemInData = 32'h12;
@(posedge clk) #1 MemInAddr  = 9'hae; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'haf; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'hb0; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'hb1; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 9'hb2; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'hb3; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'hb4; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'hb5; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'hb6; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'hb7; MemInData = 32'he;
@(posedge clk) #1 MemInAddr  = 9'hb8; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 9'hb9; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'hba; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'hbb; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 9'hbc; MemInData = 32'h1c;
@(posedge clk) #1 MemInAddr  = 9'hbd; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'hbe; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'hbf; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'hc0; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'hc1; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 9'hc2; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'hc3; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 9'hc4; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 9'hc5; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 9'hc6; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'hc7; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'hc8; MemInData = 32'h57;
@(posedge clk) #1 MemInAddr  = 9'hc9; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'hca; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'hcb; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 9'hcc; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'hcd; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'hce; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'hcf; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'hd0; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'hd1; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 9'hd2; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'hd3; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'hd4; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 9'hd5; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'hd6; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'hd7; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'hd8; MemInData = 32'h1c;
@(posedge clk) #1 MemInAddr  = 9'hd9; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 9'hda; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'hdb; MemInData = 32'h44;
@(posedge clk) #1 MemInAddr  = 9'hdc; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'hdd; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'hde; MemInData = 32'h1f;
@(posedge clk) #1 MemInAddr  = 9'hdf; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 9'he0; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'he1; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'he2; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 9'he3; MemInData = 32'h2b;
@(posedge clk) #1 MemInAddr  = 9'he4; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 9'he5; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'he6; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'he7; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'he8; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 9'he9; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'hea; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 9'heb; MemInData = 32'h5f;
@(posedge clk) #1 MemInAddr  = 9'hec; MemInData = 32'h0;
@(posedge clk) #1 MemInAddr  = 9'hed; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 9'hee; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'hef; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'hf0; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'hf1; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'hf2; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'hf3; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'hf4; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'hf5; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 9'hf6; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'hf7; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'hf8; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 9'hf9; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 9'hfa; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 9'hfb; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'hfc; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'hfd; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'hfe; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 9'hff; MemInData = 32'h27;
//////////////////////////  Fill B Matrix Data ///////////////////////////////////
@(posedge clk) #1 MemInAddr  = 9'h100; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h101; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h102; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h103; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h104; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 9'h105; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'h106; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h107; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'h108; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h109; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h10a; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'h10b; MemInData = 32'h5f;
@(posedge clk) #1 MemInAddr  = 9'h10c; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h10d; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'h10e; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 9'h10f; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h110; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h111; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h112; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 9'h113; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h114; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'h115; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h116; MemInData = 32'h13;
@(posedge clk) #1 MemInAddr  = 9'h117; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 9'h118; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 9'h119; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'h11a; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'h11b; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 9'h11c; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 9'h11d; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'h11e; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 9'h11f; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 9'h120; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'h121; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 9'h122; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 9'h123; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 9'h124; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 9'h125; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h126; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'h127; MemInData = 32'h2b;
@(posedge clk) #1 MemInAddr  = 9'h128; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h129; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h12a; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 9'h12b; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h12c; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h12d; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 9'h12e; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 9'h12f; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 9'h130; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'h131; MemInData = 32'h56;
@(posedge clk) #1 MemInAddr  = 9'h132; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h133; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'h134; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h135; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h136; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 9'h137; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h138; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 9'h139; MemInData = 32'h36;
@(posedge clk) #1 MemInAddr  = 9'h13a; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h13b; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'h13c; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'h13d; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 9'h13e; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 9'h13f; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 9'h140; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h141; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h142; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'h143; MemInData = 32'h2b;
@(posedge clk) #1 MemInAddr  = 9'h144; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 9'h145; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h146; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h147; MemInData = 32'h12;
@(posedge clk) #1 MemInAddr  = 9'h148; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'h149; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h14a; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 9'h14b; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 9'h14c; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 9'h14d; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h14e; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h14f; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h150; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 9'h151; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 9'h152; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 9'h153; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'h154; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h155; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h156; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h157; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h158; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h159; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h15a; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'h15b; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 9'h15c; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h15d; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 9'h15e; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h15f; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h160; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'h161; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h162; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'h163; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 9'h164; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 9'h165; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 9'h166; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h167; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 9'h168; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 9'h169; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 9'h16a; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 9'h16b; MemInData = 32'h12;
@(posedge clk) #1 MemInAddr  = 9'h16c; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h16d; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'h16e; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 9'h16f; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h170; MemInData = 32'h2b;
@(posedge clk) #1 MemInAddr  = 9'h171; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h172; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h173; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'h174; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'h175; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 9'h176; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'h177; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 9'h178; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h179; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 9'h17a; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 9'h17b; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 9'h17c; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 9'h17d; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h17e; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'h17f; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h180; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h181; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 9'h182; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 9'h183; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h184; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 9'h185; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 9'h186; MemInData = 32'h36;
@(posedge clk) #1 MemInAddr  = 9'h187; MemInData = 32'h0;
@(posedge clk) #1 MemInAddr  = 9'h188; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'h189; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 9'h18a; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h18b; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'h18c; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 9'h18d; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 9'h18e; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h18f; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h190; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 9'h191; MemInData = 32'h13;
@(posedge clk) #1 MemInAddr  = 9'h192; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 9'h193; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h194; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 9'h195; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 9'h196; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h197; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'h198; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 9'h199; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h19a; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 9'h19b; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 9'h19c; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h19d; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h19e; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 9'h19f; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 9'h1a0; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 9'h1a1; MemInData = 32'h57;
@(posedge clk) #1 MemInAddr  = 9'h1a2; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'h1a3; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h1a4; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'h1a5; MemInData = 32'h1f;
@(posedge clk) #1 MemInAddr  = 9'h1a6; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 9'h1a7; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 9'h1a8; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 9'h1a9; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h1aa; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 9'h1ab; MemInData = 32'h1c;
@(posedge clk) #1 MemInAddr  = 9'h1ac; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 9'h1ad; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h1ae; MemInData = 32'h2f;
@(posedge clk) #1 MemInAddr  = 9'h1af; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 9'h1b0; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 9'h1b1; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 9'h1b2; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 9'h1b3; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h1b4; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h1b5; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 9'h1b6; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 9'h1b7; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h1b8; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h1b9; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 9'h1ba; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h1bb; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 9'h1bc; MemInData = 32'h13;
@(posedge clk) #1 MemInAddr  = 9'h1bd; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 9'h1be; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h1bf; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 9'h1c0; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 9'h1c1; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h1c2; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h1c3; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h1c4; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 9'h1c5; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h1c6; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'h1c7; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 9'h1c8; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h1c9; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 9'h1ca; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 9'h1cb; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h1cc; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h1cd; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'h1ce; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'h1cf; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h1d0; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 9'h1d1; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 9'h1d2; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 9'h1d3; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 9'h1d4; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h1d5; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 9'h1d6; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 9'h1d7; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 9'h1d8; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 9'h1d9; MemInData = 32'he;
@(posedge clk) #1 MemInAddr  = 9'h1da; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 9'h1db; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h1dc; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 9'h1dd; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 9'h1de; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 9'h1df; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 9'h1e0; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 9'h1e1; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h1e2; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 9'h1e3; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 9'h1e4; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h1e5; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 9'h1e6; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 9'h1e7; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 9'h1e8; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 9'h1e9; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'h1ea; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 9'h1eb; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h1ec; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 9'h1ed; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 9'h1ee; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h1ef; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 9'h1f0; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 9'h1f1; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 9'h1f2; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 9'h1f3; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 9'h1f4; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h1f5; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 9'h1f6; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 9'h1f7; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 9'h1f8; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 9'h1f9; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 9'h1fa; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 9'h1fb; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 9'h1fc; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 9'h1fd; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 9'h1fe; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 9'h1ff; MemInData = 32'h1e;
        






        @(posedge clk) #1 WEmem = 0;
        @(posedge clk) #1 RESETvcu = 1;
        @(posedge clk) #1 memWRTDone = 1;
    
    end



endmodule





// `timescale 1ns / 1ps

// module VCU_wrapper_tb(

//     );

//     localparam CLK_PERIOD=10;
//     localparam matSize = 16;
//     localparam NoOfElem = 16;
//     localparam wordSize = 32;
//     localparam words = 16;
//     localparam memDepthC = 32;
//     localparam memDepth = memDepthC - 2;

//     logic clk = 0;

//     logic RESET;

//     logic memWRTDone;

//     logic [wordSize - 1:0] BRAMdataIn; // this is the data input from the BLOCK RAM
//     logic [wordSize-1: 0] BRAMDataOut; // output data width is the block ram data width
//     logic [memDepth-1+2:0]BRAMaddrByte;

//     logic [3:0]BRAMWREN;
//     logic BRAMENMEM;
//     logic done;
    

//     initial forever #(CLK_PERIOD/2) clk <= ~clk;

//     VCU #(matSize, NoOfElem, wordSize, words, memDepthC) vcu (.*);

//     initial begin

//         // resetting the system
//         repeat(100) @(posedge clk) #1  memWRTDone = 0; RESET = 0;
//         @(posedge clk) #1 RESET = 1;
//         @(posedge clk) #1 memWRTDone = 1;

//         repeat (5000) @(posedge clk) #1 BRAMdataIn = 32'h00000032;
        
    
//     end



// endmodule

