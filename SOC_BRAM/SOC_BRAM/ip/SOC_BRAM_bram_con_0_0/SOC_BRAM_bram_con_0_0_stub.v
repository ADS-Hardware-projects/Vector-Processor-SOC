// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Nov 28 12:29:40 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Study Materials/Sem
//               7/ADS/Vector-Processor-SOC/SOC_BRAM/SOC_BRAM/ip/SOC_BRAM_bram_con_0_0/SOC_BRAM_bram_con_0_0_stub.v}
// Design      : SOC_BRAM_bram_con_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram_con,Vivado 2019.1" *)
module SOC_BRAM_bram_con_0_0(addr, dout, din, we, en, clk_b, clk)
/* synthesis syn_black_box black_box_pad_pin="addr[31:0],dout[31:0],din[31:0],we[3:0],en,clk_b,clk" */;
  output [31:0]addr;
  output [31:0]dout;
  input [31:0]din;
  output [3:0]we;
  output en;
  output clk_b;
  input clk;
endmodule
