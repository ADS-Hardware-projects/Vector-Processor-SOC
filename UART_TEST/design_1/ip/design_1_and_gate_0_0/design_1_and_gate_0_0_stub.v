// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Oct 17 16:39:33 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/Study Materials/Sem
//               7/ADS/Vector-Processor-SOC/UART_TEST/design_1/ip/design_1_and_gate_0_0/design_1_and_gate_0_0_stub.v}
// Design      : design_1_and_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "and_gate,Vivado 2019.1" *)
module design_1_and_gate_0_0(a, b, c)
/* synthesis syn_black_box black_box_pad_pin="a,b,c" */;
  input a;
  input b;
  output c;
endmodule
