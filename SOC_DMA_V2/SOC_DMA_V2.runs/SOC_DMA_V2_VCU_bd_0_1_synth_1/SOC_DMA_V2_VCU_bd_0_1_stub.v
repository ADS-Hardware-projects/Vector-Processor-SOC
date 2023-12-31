// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Mon Dec 11 10:05:40 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_VCU_bd_0_1_stub.v
// Design      : SOC_DMA_V2_VCU_bd_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "VCU_bd,Vivado 2019.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, RESET, memWRTDone, BRAMdataIn, BRAMDataOut, 
  BRAMaddrByte, BRAMWREN, BRAMENMEM, done)
/* synthesis syn_black_box black_box_pad_pin="clk,RESET,memWRTDone,BRAMdataIn[31:0],BRAMDataOut[31:0],BRAMaddrByte[31:0],BRAMWREN[3:0],BRAMENMEM,done" */;
  input clk;
  input RESET;
  input memWRTDone;
  input [31:0]BRAMdataIn;
  output [31:0]BRAMDataOut;
  output [31:0]BRAMaddrByte;
  output [3:0]BRAMWREN;
  output BRAMENMEM;
  output done;
endmodule
