// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Dec  9 20:05:53 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {D:/Study Materials/Sem
//               7/ADS/Vector-Processor-SOC/DMA_BLOCK_DESIGN/SOC_DMA/ip/SOC_DMA_Streamconverter_0_2/SOC_DMA_Streamconverter_0_2_stub.v}
// Design      : SOC_DMA_Streamconverter_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Streamconverter_v1_0,Vivado 2019.1" *)
module SOC_DMA_Streamconverter_0_2(addr, dout, din, we_1, en, start_cal, done_cal, 
  m00_axis_tdata, m00_axis_tstrb, m00_axis_tlast, m00_axis_tvalid, m00_axis_tready, 
  m00_axis_aclk, m00_axis_aresetn, s00_axis_tdata, s00_axis_tstrb, s00_axis_tlast, 
  s00_axis_tvalid, s00_axis_tready, s00_axis_aclk, s00_axis_aresetn)
/* synthesis syn_black_box black_box_pad_pin="addr[31:0],dout[31:0],din[31:0],we_1[3:0],en,start_cal,done_cal,m00_axis_tdata[31:0],m00_axis_tstrb[3:0],m00_axis_tlast,m00_axis_tvalid,m00_axis_tready,m00_axis_aclk,m00_axis_aresetn,s00_axis_tdata[31:0],s00_axis_tstrb[3:0],s00_axis_tlast,s00_axis_tvalid,s00_axis_tready,s00_axis_aclk,s00_axis_aresetn" */;
  output [31:0]addr;
  output [31:0]dout;
  input [31:0]din;
  output [3:0]we_1;
  output en;
  input start_cal;
  input done_cal;
  output [31:0]m00_axis_tdata;
  output [3:0]m00_axis_tstrb;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input m00_axis_aclk;
  input m00_axis_aresetn;
  input [31:0]s00_axis_tdata;
  input [3:0]s00_axis_tstrb;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output s00_axis_tready;
  input s00_axis_aclk;
  input s00_axis_aresetn;
endmodule
