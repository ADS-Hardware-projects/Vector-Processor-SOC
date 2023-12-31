// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Thu Nov 30 22:11:24 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top SOC_BRAM_ila_0_0 -prefix
//               SOC_BRAM_ila_0_0_ SOC_BRAM_ila_0_0_stub.v
// Design      : SOC_BRAM_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.1" *)
module SOC_BRAM_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[3:0],probe5[31:0],probe6[31:0],probe7[31:0]" */;
  input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [3:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [31:0]probe7;
endmodule
