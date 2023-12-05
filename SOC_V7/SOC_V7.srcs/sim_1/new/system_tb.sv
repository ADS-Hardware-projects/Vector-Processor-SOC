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

    /////////////////////////// FIll the instructions //////////////////////////////
    @(posedge clk) #1 MemInAddr  = 12'h000; MemInData = 32'h04000400;  // LOADRF <1024>
    @(posedge clk) #1 MemInAddr  = 12'h001; MemInData = 32'h01000000;  // END

//////////////////////////  Fill A Matrix Data ///////////////////////////////////
@(posedge clk) #1 MemInAddr  = 12'h100; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 12'h101; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h102; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h103; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 12'h104; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h105; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h106; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h107; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 12'h108; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 12'h109; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 12'h10a; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 12'h10b; MemInData = 32'he;
@(posedge clk) #1 MemInAddr  = 12'h10c; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h10d; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h10e; MemInData = 32'h44;
@(posedge clk) #1 MemInAddr  = 12'h10f; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h110; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 12'h111; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h112; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h113; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h114; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 12'h115; MemInData = 32'h57;
@(posedge clk) #1 MemInAddr  = 12'h116; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h117; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 12'h118; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h119; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 12'h11a; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h11b; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 12'h11c; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 12'h11d; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 12'h11e; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h11f; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h120; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 12'h121; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 12'h122; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 12'h123; MemInData = 32'h2d;
@(posedge clk) #1 MemInAddr  = 12'h124; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h125; MemInData = 32'h5f;
@(posedge clk) #1 MemInAddr  = 12'h126; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h127; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 12'h128; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h129; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h12a; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 12'h12b; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h12c; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 12'h12d; MemInData = 32'h1f;
@(posedge clk) #1 MemInAddr  = 12'h12e; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h12f; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 12'h130; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h131; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h132; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h133; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h134; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h135; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h136; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h137; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h138; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 12'h139; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h13a; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h13b; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h13c; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 12'h13d; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 12'h13e; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h13f; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h140; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h141; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 12'h142; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h143; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h144; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 12'h145; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 12'h146; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 12'h147; MemInData = 32'h2f;
@(posedge clk) #1 MemInAddr  = 12'h148; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 12'h149; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 12'h14a; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h14b; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h14c; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 12'h14d; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 12'h14e; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 12'h14f; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h150; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h151; MemInData = 32'h56;
@(posedge clk) #1 MemInAddr  = 12'h152; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 12'h153; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h154; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h155; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 12'h156; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h157; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h158; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 12'h159; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 12'h15a; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 12'h15b; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h15c; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h15d; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h15e; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 12'h15f; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 12'h160; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 12'h161; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h162; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h163; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h164; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h165; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h166; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 12'h167; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 12'h168; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 12'h169; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h16a; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h16b; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 12'h16c; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h16d; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h16e; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h16f; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h170; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h171; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h172; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h173; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 12'h174; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h175; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 12'h176; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 12'h177; MemInData = 32'h36;
@(posedge clk) #1 MemInAddr  = 12'h178; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h179; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h17a; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h17b; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 12'h17c; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h17d; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h17e; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h17f; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 12'h180; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h181; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h182; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h183; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h184; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 12'h185; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h186; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 12'h187; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h188; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h189; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 12'h18a; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 12'h18b; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h18c; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h18d; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h18e; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 12'h18f; MemInData = 32'h37;
@(posedge clk) #1 MemInAddr  = 12'h190; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 12'h191; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h192; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 12'h193; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h194; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 12'h195; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h196; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h197; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 12'h198; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h199; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h19a; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 12'h19b; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 12'h19c; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 12'h19d; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h19e; MemInData = 32'h5f;
@(posedge clk) #1 MemInAddr  = 12'h19f; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 12'h1a0; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 12'h1a1; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 12'h1a2; MemInData = 32'h3d;
@(posedge clk) #1 MemInAddr  = 12'h1a3; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 12'h1a4; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 12'h1a5; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 12'h1a6; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 12'h1a7; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h1a8; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h1a9; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 12'h1aa; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h1ab; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h1ac; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h1ad; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 12'h1ae; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h1af; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h1b0; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 12'h1b1; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h1b2; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h1b3; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 12'h1b4; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h1b5; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 12'h1b6; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h1b7; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 12'h1b8; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 12'h1b9; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h1ba; MemInData = 32'h29;
@(posedge clk) #1 MemInAddr  = 12'h1bb; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 12'h1bc; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h1bd; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h1be; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h1bf; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h1c0; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h1c1; MemInData = 32'h4b;
@(posedge clk) #1 MemInAddr  = 12'h1c2; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h1c3; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 12'h1c4; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 12'h1c5; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 12'h1c6; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h1c7; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h1c8; MemInData = 32'h1c;
@(posedge clk) #1 MemInAddr  = 12'h1c9; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 12'h1ca; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 12'h1cb; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h1cc; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 12'h1cd; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 12'h1ce; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 12'h1cf; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h1d0; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h1d1; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 12'h1d2; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h1d3; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 12'h1d4; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 12'h1d5; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 12'h1d6; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 12'h1d7; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 12'h1d8; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h1d9; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 12'h1da; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h1db; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h1dc; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 12'h1dd; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h1de; MemInData = 32'h0;
@(posedge clk) #1 MemInAddr  = 12'h1df; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h1e0; MemInData = 32'h44;
@(posedge clk) #1 MemInAddr  = 12'h1e1; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 12'h1e2; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h1e3; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 12'h1e4; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 12'h1e5; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 12'h1e6; MemInData = 32'h0;
@(posedge clk) #1 MemInAddr  = 12'h1e7; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 12'h1e8; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h1e9; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h1ea; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h1eb; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h1ec; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h1ed; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h1ee; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h1ef; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 12'h1f0; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h1f1; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h1f2; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h1f3; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h1f4; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h1f5; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 12'h1f6; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 12'h1f7; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h1f8; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h1f9; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h1fa; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h1fb; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h1fc; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 12'h1fd; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h1fe; MemInData = 32'h3;
@(posedge clk) #1 MemInAddr  = 12'h1ff; MemInData = 32'h5a;
//////////////////////////  Fill B Matrix Data ///////////////////////////////////
@(posedge clk) #1 MemInAddr  = 12'h400; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h401; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h402; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h403; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 12'h404; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h405; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h406; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 12'h407; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h408; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 12'h409; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h40a; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h40b; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h40c; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h40d; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h40e; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h40f; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 12'h410; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 12'h411; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h412; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 12'h413; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 12'h414; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h415; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h416; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h417; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h418; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h419; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h41a; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h41b; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h41c; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 12'h41d; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h41e; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h41f; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 12'h420; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 12'h421; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h422; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 12'h423; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h424; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h425; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 12'h426; MemInData = 32'h56;
@(posedge clk) #1 MemInAddr  = 12'h427; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h428; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 12'h429; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h42a; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h42b; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h42c; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h42d; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h42e; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 12'h42f; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 12'h430; MemInData = 32'h26;
@(posedge clk) #1 MemInAddr  = 12'h431; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 12'h432; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h433; MemInData = 32'h1f;
@(posedge clk) #1 MemInAddr  = 12'h434; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 12'h435; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h436; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 12'h437; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h438; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h439; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h43a; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h43b; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h43c; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 12'h43d; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h43e; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 12'h43f; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h440; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 12'h441; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h442; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 12'h443; MemInData = 32'h15;
@(posedge clk) #1 MemInAddr  = 12'h444; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 12'h445; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 12'h446; MemInData = 32'h5e;
@(posedge clk) #1 MemInAddr  = 12'h447; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h448; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h449; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h44a; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h44b; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 12'h44c; MemInData = 32'hc;
@(posedge clk) #1 MemInAddr  = 12'h44d; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h44e; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h44f; MemInData = 32'ha;
@(posedge clk) #1 MemInAddr  = 12'h450; MemInData = 32'h1c;
@(posedge clk) #1 MemInAddr  = 12'h451; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h452; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h453; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 12'h454; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 12'h455; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h456; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h457; MemInData = 32'h2c;
@(posedge clk) #1 MemInAddr  = 12'h458; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h459; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h45a; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h45b; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h45c; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h45d; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 12'h45e; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h45f; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h460; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 12'h461; MemInData = 32'h42;
@(posedge clk) #1 MemInAddr  = 12'h462; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 12'h463; MemInData = 32'h24;
@(posedge clk) #1 MemInAddr  = 12'h464; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h465; MemInData = 32'h1b;
@(posedge clk) #1 MemInAddr  = 12'h466; MemInData = 32'h4e;
@(posedge clk) #1 MemInAddr  = 12'h467; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 12'h468; MemInData = 32'h62;
@(posedge clk) #1 MemInAddr  = 12'h469; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h46a; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h46b; MemInData = 32'h2b;
@(posedge clk) #1 MemInAddr  = 12'h46c; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h46d; MemInData = 32'h48;
@(posedge clk) #1 MemInAddr  = 12'h46e; MemInData = 32'h39;
@(posedge clk) #1 MemInAddr  = 12'h46f; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h470; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 12'h471; MemInData = 32'h33;
@(posedge clk) #1 MemInAddr  = 12'h472; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 12'h473; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h474; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 12'h475; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 12'h476; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 12'h477; MemInData = 32'h38;
@(posedge clk) #1 MemInAddr  = 12'h478; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 12'h479; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h47a; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h47b; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h47c; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h47d; MemInData = 32'h50;
@(posedge clk) #1 MemInAddr  = 12'h47e; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 12'h47f; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h480; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h481; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 12'h482; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h483; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h484; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h485; MemInData = 32'h59;
@(posedge clk) #1 MemInAddr  = 12'h486; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h487; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h488; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h489; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h48a; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h48b; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 12'h48c; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 12'h48d; MemInData = 32'h18;
@(posedge clk) #1 MemInAddr  = 12'h48e; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h48f; MemInData = 32'h1;
@(posedge clk) #1 MemInAddr  = 12'h490; MemInData = 32'h41;
@(posedge clk) #1 MemInAddr  = 12'h491; MemInData = 32'h4c;
@(posedge clk) #1 MemInAddr  = 12'h492; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h493; MemInData = 32'h32;
@(posedge clk) #1 MemInAddr  = 12'h494; MemInData = 32'h2e;
@(posedge clk) #1 MemInAddr  = 12'h495; MemInData = 32'h21;
@(posedge clk) #1 MemInAddr  = 12'h496; MemInData = 32'h55;
@(posedge clk) #1 MemInAddr  = 12'h497; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h498; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 12'h499; MemInData = 32'h20;
@(posedge clk) #1 MemInAddr  = 12'h49a; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h49b; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h49c; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 12'h49d; MemInData = 32'h3a;
@(posedge clk) #1 MemInAddr  = 12'h49e; MemInData = 32'h1a;
@(posedge clk) #1 MemInAddr  = 12'h49f; MemInData = 32'h47;
@(posedge clk) #1 MemInAddr  = 12'h4a0; MemInData = 32'h36;
@(posedge clk) #1 MemInAddr  = 12'h4a1; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 12'h4a2; MemInData = 32'h7;
@(posedge clk) #1 MemInAddr  = 12'h4a3; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 12'h4a4; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h4a5; MemInData = 32'h5d;
@(posedge clk) #1 MemInAddr  = 12'h4a6; MemInData = 32'h17;
@(posedge clk) #1 MemInAddr  = 12'h4a7; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h4a8; MemInData = 32'h45;
@(posedge clk) #1 MemInAddr  = 12'h4a9; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 12'h4aa; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 12'h4ab; MemInData = 32'hb;
@(posedge clk) #1 MemInAddr  = 12'h4ac; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h4ad; MemInData = 32'h57;
@(posedge clk) #1 MemInAddr  = 12'h4ae; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h4af; MemInData = 32'h34;
@(posedge clk) #1 MemInAddr  = 12'h4b0; MemInData = 32'h27;
@(posedge clk) #1 MemInAddr  = 12'h4b1; MemInData = 32'h2;
@(posedge clk) #1 MemInAddr  = 12'h4b2; MemInData = 32'h60;
@(posedge clk) #1 MemInAddr  = 12'h4b3; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 12'h4b4; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h4b5; MemInData = 32'h11;
@(posedge clk) #1 MemInAddr  = 12'h4b6; MemInData = 32'h10;
@(posedge clk) #1 MemInAddr  = 12'h4b7; MemInData = 32'h35;
@(posedge clk) #1 MemInAddr  = 12'h4b8; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h4b9; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h4ba; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h4bb; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 12'h4bc; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h4bd; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 12'h4be; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 12'h4bf; MemInData = 32'h2a;
@(posedge clk) #1 MemInAddr  = 12'h4c0; MemInData = 32'h3f;
@(posedge clk) #1 MemInAddr  = 12'h4c1; MemInData = 32'h31;
@(posedge clk) #1 MemInAddr  = 12'h4c2; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 12'h4c3; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h4c4; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h4c5; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h4c6; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h4c7; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 12'h4c8; MemInData = 32'h5;
@(posedge clk) #1 MemInAddr  = 12'h4c9; MemInData = 32'h3b;
@(posedge clk) #1 MemInAddr  = 12'h4ca; MemInData = 32'h9;
@(posedge clk) #1 MemInAddr  = 12'h4cb; MemInData = 32'h8;
@(posedge clk) #1 MemInAddr  = 12'h4cc; MemInData = 32'hd;
@(posedge clk) #1 MemInAddr  = 12'h4cd; MemInData = 32'h52;
@(posedge clk) #1 MemInAddr  = 12'h4ce; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h4cf; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 12'h4d0; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h4d1; MemInData = 32'h4a;
@(posedge clk) #1 MemInAddr  = 12'h4d2; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h4d3; MemInData = 32'h14;
@(posedge clk) #1 MemInAddr  = 12'h4d4; MemInData = 32'h4d;
@(posedge clk) #1 MemInAddr  = 12'h4d5; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 12'h4d6; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h4d7; MemInData = 32'h4f;
@(posedge clk) #1 MemInAddr  = 12'h4d8; MemInData = 32'h3e;
@(posedge clk) #1 MemInAddr  = 12'h4d9; MemInData = 32'h5c;
@(posedge clk) #1 MemInAddr  = 12'h4da; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h4db; MemInData = 32'h12;
@(posedge clk) #1 MemInAddr  = 12'h4dc; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h4dd; MemInData = 32'h1e;
@(posedge clk) #1 MemInAddr  = 12'h4de; MemInData = 32'h57;
@(posedge clk) #1 MemInAddr  = 12'h4df; MemInData = 32'h1d;
@(posedge clk) #1 MemInAddr  = 12'h4e0; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h4e1; MemInData = 32'h3c;
@(posedge clk) #1 MemInAddr  = 12'h4e2; MemInData = 32'h6;
@(posedge clk) #1 MemInAddr  = 12'h4e3; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h4e4; MemInData = 32'h12;
@(posedge clk) #1 MemInAddr  = 12'h4e5; MemInData = 32'h63;
@(posedge clk) #1 MemInAddr  = 12'h4e6; MemInData = 32'h46;
@(posedge clk) #1 MemInAddr  = 12'h4e7; MemInData = 32'h58;
@(posedge clk) #1 MemInAddr  = 12'h4e8; MemInData = 32'h25;
@(posedge clk) #1 MemInAddr  = 12'h4e9; MemInData = 32'h49;
@(posedge clk) #1 MemInAddr  = 12'h4ea; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h4eb; MemInData = 32'hf;
@(posedge clk) #1 MemInAddr  = 12'h4ec; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h4ed; MemInData = 32'h40;
@(posedge clk) #1 MemInAddr  = 12'h4ee; MemInData = 32'h5a;
@(posedge clk) #1 MemInAddr  = 12'h4ef; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h4f0; MemInData = 32'h5b;
@(posedge clk) #1 MemInAddr  = 12'h4f1; MemInData = 32'h16;
@(posedge clk) #1 MemInAddr  = 12'h4f2; MemInData = 32'h28;
@(posedge clk) #1 MemInAddr  = 12'h4f3; MemInData = 32'h19;
@(posedge clk) #1 MemInAddr  = 12'h4f4; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 12'h4f5; MemInData = 32'h4;
@(posedge clk) #1 MemInAddr  = 12'h4f6; MemInData = 32'h30;
@(posedge clk) #1 MemInAddr  = 12'h4f7; MemInData = 32'h61;
@(posedge clk) #1 MemInAddr  = 12'h4f8; MemInData = 32'h54;
@(posedge clk) #1 MemInAddr  = 12'h4f9; MemInData = 32'h51;
@(posedge clk) #1 MemInAddr  = 12'h4fa; MemInData = 32'h23;
@(posedge clk) #1 MemInAddr  = 12'h4fb; MemInData = 32'h22;
@(posedge clk) #1 MemInAddr  = 12'h4fc; MemInData = 32'h56;
@(posedge clk) #1 MemInAddr  = 12'h4fd; MemInData = 32'h53;
@(posedge clk) #1 MemInAddr  = 12'h4fe; MemInData = 32'h43;
@(posedge clk) #1 MemInAddr  = 12'h4ff; MemInData = 32'h5c;
        






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

