// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Dec  9 20:05:53 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/Study Materials/Sem
//               7/ADS/Vector-Processor-SOC/DMA_BLOCK_DESIGN/SOC_DMA/ip/SOC_DMA_Streamconverter_0_2/SOC_DMA_Streamconverter_0_2_sim_netlist.v}
// Design      : SOC_DMA_Streamconverter_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SOC_DMA_Streamconverter_0_2,Streamconverter_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Streamconverter_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module SOC_DMA_Streamconverter_0_2
   (addr,
    dout,
    din,
    we_1,
    en,
    start_cal,
    done_cal,
    m00_axis_tdata,
    m00_axis_tstrb,
    m00_axis_tlast,
    m00_axis_tvalid,
    m00_axis_tready,
    m00_axis_aclk,
    m00_axis_aresetn,
    s00_axis_tdata,
    s00_axis_tstrb,
    s00_axis_tlast,
    s00_axis_tvalid,
    s00_axis_tready,
    s00_axis_aclk,
    s00_axis_aresetn);
  output [31:0]addr;
  output [31:0]dout;
  input [31:0]din;
  output [3:0]we_1;
  output en;
  input start_cal;
  input done_cal;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 58823528, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 58823528, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 58823528, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 58823528, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:2]\^addr ;
  wire [31:0]din;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [3:3]\^we_1 ;

  assign addr[31] = \<const0> ;
  assign addr[30] = \<const0> ;
  assign addr[29] = \<const0> ;
  assign addr[28] = \<const0> ;
  assign addr[27] = \<const0> ;
  assign addr[26] = \<const0> ;
  assign addr[25] = \<const0> ;
  assign addr[24] = \<const0> ;
  assign addr[23] = \<const0> ;
  assign addr[22] = \<const0> ;
  assign addr[21] = \<const0> ;
  assign addr[20] = \<const0> ;
  assign addr[19] = \<const0> ;
  assign addr[18] = \<const0> ;
  assign addr[17] = \<const0> ;
  assign addr[16] = \<const0> ;
  assign addr[15] = \<const0> ;
  assign addr[14] = \<const0> ;
  assign addr[13] = \<const0> ;
  assign addr[12:2] = \^addr [12:2];
  assign addr[1] = \<const0> ;
  assign addr[0] = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign we_1[3] = \^we_1 [3];
  assign we_1[2] = \^we_1 [3];
  assign we_1[1] = \^we_1 [3];
  assign we_1[0] = \^we_1 [3];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0 inst
       (.addr(\^addr ),
        .din(din),
        .done_cal(done_cal),
        .dout(dout),
        .en(en),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .mst_exec_state_reg(s00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .we_1(\^we_1 ));
endmodule

(* ORIG_REF_NAME = "Streamconverter_v1_0" *) 
module SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0
   (dout,
    mst_exec_state_reg,
    we_1,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    en,
    addr,
    m00_axis_aclk,
    s00_axis_tdata,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn,
    din,
    s00_axis_tlast,
    m00_axis_tready,
    m00_axis_aresetn,
    done_cal);
  output [31:0]dout;
  output mst_exec_state_reg;
  output [0:0]we_1;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output en;
  output [10:0]addr;
  input m00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input [31:0]din;
  input s00_axis_tlast;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input done_cal;

  wire Streamconverter_v1_0_S00_AXIS_inst_n_38;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_39;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_40;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_41;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_42;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_43;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_44;
  wire Streamconverter_v1_0_S00_AXIS_inst_n_45;
  wire [10:0]addr;
  wire [31:0]din;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire mst_exec_state_reg;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [0:0]we_1;

  SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS Streamconverter_v1_0_M00_AXIS_inst
       (.Q({Streamconverter_v1_0_S00_AXIS_inst_n_38,Streamconverter_v1_0_S00_AXIS_inst_n_39,Streamconverter_v1_0_S00_AXIS_inst_n_40,Streamconverter_v1_0_S00_AXIS_inst_n_41,Streamconverter_v1_0_S00_AXIS_inst_n_42,Streamconverter_v1_0_S00_AXIS_inst_n_43,Streamconverter_v1_0_S00_AXIS_inst_n_44,Streamconverter_v1_0_S00_AXIS_inst_n_45}),
        .addr(addr[7:0]),
        .din(din),
        .done_cal(done_cal),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS Streamconverter_v1_0_S00_AXIS_inst
       (.Q({Streamconverter_v1_0_S00_AXIS_inst_n_38,Streamconverter_v1_0_S00_AXIS_inst_n_39,Streamconverter_v1_0_S00_AXIS_inst_n_40,Streamconverter_v1_0_S00_AXIS_inst_n_41,Streamconverter_v1_0_S00_AXIS_inst_n_42,Streamconverter_v1_0_S00_AXIS_inst_n_43,Streamconverter_v1_0_S00_AXIS_inst_n_44,Streamconverter_v1_0_S00_AXIS_inst_n_45}),
        .addr(addr[10:8]),
        .done_cal(done_cal),
        .dout(dout),
        .en(en),
        .m00_axis_tready(m00_axis_tready),
        .mst_exec_state_reg_0(mst_exec_state_reg),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .we_1(we_1));
endmodule

(* ORIG_REF_NAME = "Streamconverter_v1_0_M00_AXIS" *) 
module SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    addr,
    m00_axis_tdata,
    m00_axis_aclk,
    m00_axis_tready,
    m00_axis_aresetn,
    done_cal,
    Q,
    din);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [7:0]addr;
  output [31:0]m00_axis_tdata;
  input m00_axis_aclk;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input done_cal;
  input [7:0]Q;
  input [31:0]din;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [7:0]Q;
  wire [7:0]addr;
  wire axis_tlast;
  wire axis_tlast_delay;
  wire axis_tlast_delay_delay_i_1_n_0;
  wire axis_tlast_delay_i_2_n_0;
  wire axis_tvalid;
  wire axis_tvalid_delay;
  wire count;
  wire [4:0]count_reg;
  wire [31:0]din;
  wire done_cal;
  wire [7:0]fifo_addr;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [4:0]p_0_in__0;
  wire [7:0]p_0_in__1;
  wire \stream_data_out[31]_i_1_n_0 ;
  wire tx_en;

  LUT6 #(
    .INIT(64'hFFFF0000FF7FFFFF)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(count_reg[2]),
        .I1(count_reg[3]),
        .I2(count_reg[4]),
        .I3(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(count_reg[4]),
        .I2(count_reg[3]),
        .I3(count_reg[2]),
        .I4(mst_exec_state[0]),
        .I5(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[2]_INST_0 
       (.I0(fifo_addr[0]),
        .I1(done_cal),
        .I2(Q[0]),
        .O(addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[3]_INST_0 
       (.I0(fifo_addr[1]),
        .I1(done_cal),
        .I2(Q[1]),
        .O(addr[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[4]_INST_0 
       (.I0(fifo_addr[2]),
        .I1(done_cal),
        .I2(Q[2]),
        .O(addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_INST_0 
       (.I0(fifo_addr[3]),
        .I1(done_cal),
        .I2(Q[3]),
        .O(addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[6]_INST_0 
       (.I0(fifo_addr[4]),
        .I1(done_cal),
        .I2(Q[4]),
        .O(addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[7]_INST_0 
       (.I0(fifo_addr[5]),
        .I1(done_cal),
        .I2(Q[5]),
        .O(addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[8]_INST_0 
       (.I0(fifo_addr[6]),
        .I1(done_cal),
        .I2(Q[6]),
        .O(addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[9]_INST_0 
       (.I0(fifo_addr[7]),
        .I1(done_cal),
        .I2(Q[7]),
        .O(addr[7]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_delay_delay_i_1
       (.I0(m00_axis_aresetn),
        .O(axis_tlast_delay_delay_i_1_n_0));
  FDRE axis_tlast_delay_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_delay),
        .Q(m00_axis_tlast),
        .R(axis_tlast_delay_delay_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    axis_tlast_delay_i_1
       (.I0(fifo_addr[6]),
        .I1(fifo_addr[7]),
        .I2(fifo_addr[5]),
        .I3(fifo_addr[4]),
        .I4(fifo_addr[3]),
        .I5(axis_tlast_delay_i_2_n_0),
        .O(axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    axis_tlast_delay_i_2
       (.I0(fifo_addr[2]),
        .I1(fifo_addr[0]),
        .I2(fifo_addr[1]),
        .O(axis_tlast_delay_i_2_n_0));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(axis_tlast_delay),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE axis_tvalid_delay_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay),
        .Q(m00_axis_tvalid),
        .R(axis_tlast_delay_delay_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .O(axis_tvalid));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(axis_tvalid_delay),
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h4044444444444444)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I3(count_reg[4]),
        .I4(count_reg[3]),
        .I5(count_reg[2]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(p_0_in__0[4]));
  FDRE \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in__0[0]),
        .Q(count_reg[0]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in__0[1]),
        .Q(count_reg[1]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in__0[2]),
        .Q(count_reg[2]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in__0[3]),
        .Q(count_reg[3]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in__0[4]),
        .Q(count_reg[4]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_1 
       (.I0(fifo_addr[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(fifo_addr[0]),
        .I1(fifo_addr[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(fifo_addr[0]),
        .I1(fifo_addr[1]),
        .I2(fifo_addr[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_1 
       (.I0(fifo_addr[1]),
        .I1(fifo_addr[0]),
        .I2(fifo_addr[2]),
        .I3(fifo_addr[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[4]_i_1 
       (.I0(fifo_addr[2]),
        .I1(fifo_addr[0]),
        .I2(fifo_addr[1]),
        .I3(fifo_addr[3]),
        .I4(fifo_addr[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_pointer[5]_i_1 
       (.I0(fifo_addr[3]),
        .I1(fifo_addr[1]),
        .I2(fifo_addr[0]),
        .I3(fifo_addr[2]),
        .I4(fifo_addr[4]),
        .I5(fifo_addr[5]),
        .O(p_0_in__1[5]));
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \read_pointer[6]_i_1 
       (.I0(fifo_addr[4]),
        .I1(axis_tlast_delay_i_2_n_0),
        .I2(fifo_addr[3]),
        .I3(fifo_addr[5]),
        .I4(fifo_addr[6]),
        .O(p_0_in__1[6]));
  LUT3 #(
    .INIT(8'h40)) 
    \read_pointer[7]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(m00_axis_tready),
        .O(tx_en));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \read_pointer[7]_i_2 
       (.I0(fifo_addr[5]),
        .I1(fifo_addr[3]),
        .I2(axis_tlast_delay_i_2_n_0),
        .I3(fifo_addr[4]),
        .I4(fifo_addr[6]),
        .I5(fifo_addr[7]),
        .O(p_0_in__1[7]));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[0]),
        .Q(fifo_addr[0]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[1]),
        .Q(fifo_addr[1]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[2]),
        .Q(fifo_addr[2]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[3]),
        .Q(fifo_addr[3]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[4]),
        .Q(fifo_addr[4]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[5]),
        .Q(fifo_addr[5]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[6]),
        .Q(fifo_addr[6]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(p_0_in__1[7]),
        .Q(fifo_addr[7]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  LUT4 #(
    .INIT(16'h08FF)) 
    \stream_data_out[31]_i_1 
       (.I0(m00_axis_tready),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axis_aresetn),
        .O(\stream_data_out[31]_i_1_n_0 ));
  FDRE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[0]),
        .Q(m00_axis_tdata[0]),
        .R(1'b0));
  FDRE \stream_data_out_reg[10] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[10]),
        .Q(m00_axis_tdata[10]),
        .R(1'b0));
  FDRE \stream_data_out_reg[11] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[11]),
        .Q(m00_axis_tdata[11]),
        .R(1'b0));
  FDRE \stream_data_out_reg[12] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[12]),
        .Q(m00_axis_tdata[12]),
        .R(1'b0));
  FDRE \stream_data_out_reg[13] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[13]),
        .Q(m00_axis_tdata[13]),
        .R(1'b0));
  FDRE \stream_data_out_reg[14] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[14]),
        .Q(m00_axis_tdata[14]),
        .R(1'b0));
  FDRE \stream_data_out_reg[15] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[15]),
        .Q(m00_axis_tdata[15]),
        .R(1'b0));
  FDRE \stream_data_out_reg[16] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[16]),
        .Q(m00_axis_tdata[16]),
        .R(1'b0));
  FDRE \stream_data_out_reg[17] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[17]),
        .Q(m00_axis_tdata[17]),
        .R(1'b0));
  FDRE \stream_data_out_reg[18] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[18]),
        .Q(m00_axis_tdata[18]),
        .R(1'b0));
  FDRE \stream_data_out_reg[19] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[19]),
        .Q(m00_axis_tdata[19]),
        .R(1'b0));
  FDRE \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[1]),
        .Q(m00_axis_tdata[1]),
        .R(1'b0));
  FDRE \stream_data_out_reg[20] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[20]),
        .Q(m00_axis_tdata[20]),
        .R(1'b0));
  FDRE \stream_data_out_reg[21] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[21]),
        .Q(m00_axis_tdata[21]),
        .R(1'b0));
  FDRE \stream_data_out_reg[22] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[22]),
        .Q(m00_axis_tdata[22]),
        .R(1'b0));
  FDRE \stream_data_out_reg[23] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[23]),
        .Q(m00_axis_tdata[23]),
        .R(1'b0));
  FDRE \stream_data_out_reg[24] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[24]),
        .Q(m00_axis_tdata[24]),
        .R(1'b0));
  FDRE \stream_data_out_reg[25] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[25]),
        .Q(m00_axis_tdata[25]),
        .R(1'b0));
  FDRE \stream_data_out_reg[26] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[26]),
        .Q(m00_axis_tdata[26]),
        .R(1'b0));
  FDRE \stream_data_out_reg[27] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[27]),
        .Q(m00_axis_tdata[27]),
        .R(1'b0));
  FDRE \stream_data_out_reg[28] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[28]),
        .Q(m00_axis_tdata[28]),
        .R(1'b0));
  FDRE \stream_data_out_reg[29] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[29]),
        .Q(m00_axis_tdata[29]),
        .R(1'b0));
  FDRE \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[2]),
        .Q(m00_axis_tdata[2]),
        .R(1'b0));
  FDRE \stream_data_out_reg[30] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[30]),
        .Q(m00_axis_tdata[30]),
        .R(1'b0));
  FDRE \stream_data_out_reg[31] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[31]),
        .Q(m00_axis_tdata[31]),
        .R(1'b0));
  FDRE \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[3]),
        .Q(m00_axis_tdata[3]),
        .R(1'b0));
  FDRE \stream_data_out_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[4]),
        .Q(m00_axis_tdata[4]),
        .R(1'b0));
  FDRE \stream_data_out_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[5]),
        .Q(m00_axis_tdata[5]),
        .R(1'b0));
  FDRE \stream_data_out_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[6]),
        .Q(m00_axis_tdata[6]),
        .R(1'b0));
  FDRE \stream_data_out_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[7]),
        .Q(m00_axis_tdata[7]),
        .R(1'b0));
  FDRE \stream_data_out_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[8]),
        .Q(m00_axis_tdata[8]),
        .R(1'b0));
  FDRE \stream_data_out_reg[9] 
       (.C(m00_axis_aclk),
        .CE(\stream_data_out[31]_i_1_n_0 ),
        .D(din[9]),
        .Q(m00_axis_tdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Streamconverter_v1_0_S00_AXIS" *) 
module SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS
   (mst_exec_state_reg_0,
    en,
    we_1,
    addr,
    dout,
    Q,
    s00_axis_aclk,
    m00_axis_tready,
    done_cal,
    s00_axis_tvalid,
    s00_axis_aresetn,
    s00_axis_tdata,
    s00_axis_tlast);
  output mst_exec_state_reg_0;
  output en;
  output [0:0]we_1;
  output [2:0]addr;
  output [31:0]dout;
  output [7:0]Q;
  input s00_axis_aclk;
  input m00_axis_tready;
  input done_cal;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;

  wire [7:0]Q;
  wire [2:0]addr;
  wire [0:0]addr_to_bram;
  wire \addr_to_bram_reg_n_0_[10] ;
  wire \addr_to_bram_reg_n_0_[8] ;
  wire \addr_to_bram_reg_n_0_[9] ;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire fifo_wren;
  wire m00_axis_tready;
  wire mst_exec_state_i_1_n_0;
  wire mst_exec_state_reg_0;
  wire [10:0]p_0_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire \we[3]_i_1_n_0 ;
  wire \we[3]_i_2_n_0 ;
  wire \we[3]_i_3_n_0 ;
  wire \we[3]_i_4_n_0 ;
  wire [0:0]we_1;
  wire \write_pointer[10]_i_2_n_0 ;
  wire \write_pointer[7]_i_2_n_0 ;
  wire [10:0]write_pointer_reg;
  wire writes_done;
  wire writes_done_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr[10]_INST_0 
       (.I0(\addr_to_bram_reg_n_0_[8] ),
        .I1(done_cal),
        .O(addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \addr[11]_INST_0 
       (.I0(\addr_to_bram_reg_n_0_[9] ),
        .I1(done_cal),
        .O(addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \addr[12]_INST_0 
       (.I0(done_cal),
        .I1(\addr_to_bram_reg_n_0_[10] ),
        .O(addr[2]));
  FDRE \addr_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[0]),
        .Q(Q[0]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[10]),
        .Q(\addr_to_bram_reg_n_0_[10] ),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[1]),
        .Q(Q[1]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[2]),
        .Q(Q[2]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[3]),
        .Q(Q[3]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[4]),
        .Q(Q[4]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[5]),
        .Q(Q[5]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[6]),
        .Q(Q[6]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[7]),
        .Q(Q[7]),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[8]),
        .Q(\addr_to_bram_reg_n_0_[8] ),
        .R(addr_to_bram));
  FDRE \addr_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(write_pointer_reg[9]),
        .Q(\addr_to_bram_reg_n_0_[9] ),
        .R(addr_to_bram));
  LUT1 #(
    .INIT(2'h1)) 
    \data_to_bram[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(addr_to_bram));
  LUT2 #(
    .INIT(4'h8)) 
    \data_to_bram[31]_i_2 
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state_reg_0),
        .O(fifo_wren));
  FDRE \data_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[0]),
        .Q(dout[0]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[10]),
        .Q(dout[10]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[11]),
        .Q(dout[11]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[12]),
        .Q(dout[12]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[13]),
        .Q(dout[13]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[14]),
        .Q(dout[14]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[15]),
        .Q(dout[15]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[16]),
        .Q(dout[16]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[17]),
        .Q(dout[17]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[18]),
        .Q(dout[18]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[19]),
        .Q(dout[19]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[1]),
        .Q(dout[1]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[20]),
        .Q(dout[20]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[21]),
        .Q(dout[21]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[22]),
        .Q(dout[22]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[23]),
        .Q(dout[23]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[24]),
        .Q(dout[24]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[25]),
        .Q(dout[25]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[26]),
        .Q(dout[26]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[27]),
        .Q(dout[27]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[28]),
        .Q(dout[28]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[29]),
        .Q(dout[29]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[2]),
        .Q(dout[2]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[30] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[30]),
        .Q(dout[30]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[31] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[31]),
        .Q(dout[31]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[3]),
        .Q(dout[3]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[4]),
        .Q(dout[4]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[5]),
        .Q(dout[5]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[6]),
        .Q(dout[6]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[7]),
        .Q(dout[7]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[8]),
        .Q(dout[8]),
        .R(addr_to_bram));
  FDRE \data_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[9]),
        .Q(dout[9]),
        .R(addr_to_bram));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    en_INST_0
       (.I0(m00_axis_tready),
        .I1(done_cal),
        .I2(we_1),
        .O(en));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state_reg_0),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hEA00)) 
    \we[3]_i_1 
       (.I0(\we[3]_i_2_n_0 ),
        .I1(s00_axis_tvalid),
        .I2(mst_exec_state_reg_0),
        .I3(s00_axis_aresetn),
        .O(\we[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \we[3]_i_2 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[2]),
        .I3(\we[3]_i_3_n_0 ),
        .I4(\we[3]_i_4_n_0 ),
        .I5(s00_axis_tlast),
        .O(\we[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \we[3]_i_3 
       (.I0(write_pointer_reg[10]),
        .I1(write_pointer_reg[9]),
        .I2(write_pointer_reg[8]),
        .I3(write_pointer_reg[7]),
        .O(\we[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \we[3]_i_4 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[3]),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[5]),
        .O(\we[3]_i_4_n_0 ));
  FDRE \we_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\we[3]_i_1_n_0 ),
        .Q(we_1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[10]_i_1 
       (.I0(write_pointer_reg[9]),
        .I1(\write_pointer[10]_i_2_n_0 ),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[7]),
        .I4(write_pointer_reg[8]),
        .I5(write_pointer_reg[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \write_pointer[10]_i_2 
       (.I0(write_pointer_reg[5]),
        .I1(write_pointer_reg[4]),
        .I2(write_pointer_reg[3]),
        .I3(write_pointer_reg[2]),
        .I4(write_pointer_reg[1]),
        .I5(write_pointer_reg[0]),
        .O(\write_pointer[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer_reg[2]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[2]),
        .I3(write_pointer_reg[3]),
        .I4(write_pointer_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[3]),
        .I2(write_pointer_reg[2]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[0]),
        .I5(write_pointer_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \write_pointer[6]_i_1 
       (.I0(\write_pointer[7]_i_2_n_0 ),
        .I1(write_pointer_reg[3]),
        .I2(write_pointer_reg[4]),
        .I3(write_pointer_reg[5]),
        .I4(write_pointer_reg[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFF7FFF00008000)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer_reg[6]),
        .I1(write_pointer_reg[5]),
        .I2(write_pointer_reg[4]),
        .I3(write_pointer_reg[3]),
        .I4(\write_pointer[7]_i_2_n_0 ),
        .I5(write_pointer_reg[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \write_pointer[7]_i_2 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[2]),
        .O(\write_pointer[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[8]_i_1 
       (.I0(\write_pointer[10]_i_2_n_0 ),
        .I1(write_pointer_reg[6]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[9]_i_1 
       (.I0(write_pointer_reg[8]),
        .I1(write_pointer_reg[7]),
        .I2(write_pointer_reg[6]),
        .I3(\write_pointer[10]_i_2_n_0 ),
        .I4(write_pointer_reg[9]),
        .O(p_0_in[9]));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[0]),
        .Q(write_pointer_reg[0]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[10] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[10]),
        .Q(write_pointer_reg[10]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[1]),
        .Q(write_pointer_reg[1]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[2]),
        .Q(write_pointer_reg[2]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[3]),
        .Q(write_pointer_reg[3]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[4]),
        .Q(write_pointer_reg[4]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[5]),
        .Q(write_pointer_reg[5]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[6]),
        .Q(write_pointer_reg[6]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[7]),
        .Q(write_pointer_reg[7]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[8]),
        .Q(write_pointer_reg[8]),
        .R(addr_to_bram));
  FDRE \write_pointer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in[9]),
        .Q(write_pointer_reg[9]),
        .R(addr_to_bram));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCEEE0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(\we[3]_i_2_n_0 ),
        .I2(s00_axis_tvalid),
        .I3(mst_exec_state_reg_0),
        .I4(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
