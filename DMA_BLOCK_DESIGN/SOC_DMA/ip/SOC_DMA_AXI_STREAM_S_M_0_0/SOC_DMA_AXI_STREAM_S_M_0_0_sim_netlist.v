// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Wed Nov 29 13:19:04 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {D:/Study Materials/Sem
//               7/ADS/Vector-Processor-SOC/DMA_BLOCK_DESIGN/SOC_DMA/ip/SOC_DMA_AXI_STREAM_S_M_0_0/SOC_DMA_AXI_STREAM_S_M_0_0_sim_netlist.v}
// Design      : SOC_DMA_AXI_STREAM_S_M_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SOC_DMA_AXI_STREAM_S_M_0_0,AXI_STREAM_S_M_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "AXI_STREAM_S_M_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module SOC_DMA_AXI_STREAM_S_M_0_0
   (addr,
    dout,
    din,
    we_1,
    en,
    clk_b,
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
  output [12:0]addr;
  output [31:0]dout;
  input [31:0]din;
  output [3:0]we_1;
  output en;
  output clk_b;
  input done_cal;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB" *) output [3:0]m00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [12:0]addr;
  wire [31:0]din;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]\^m00_axis_tdata ;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [0:0]\^we_1 ;

  assign clk_b = s00_axis_aclk;
  assign m00_axis_tdata[31] = \<const0> ;
  assign m00_axis_tdata[30] = \<const0> ;
  assign m00_axis_tdata[29] = \<const0> ;
  assign m00_axis_tdata[28] = \<const0> ;
  assign m00_axis_tdata[27] = \<const0> ;
  assign m00_axis_tdata[26] = \<const0> ;
  assign m00_axis_tdata[25] = \<const0> ;
  assign m00_axis_tdata[24] = \<const0> ;
  assign m00_axis_tdata[23] = \<const0> ;
  assign m00_axis_tdata[22] = \<const0> ;
  assign m00_axis_tdata[21] = \<const0> ;
  assign m00_axis_tdata[20] = \<const0> ;
  assign m00_axis_tdata[19] = \<const0> ;
  assign m00_axis_tdata[18] = \<const0> ;
  assign m00_axis_tdata[17] = \<const0> ;
  assign m00_axis_tdata[16] = \<const0> ;
  assign m00_axis_tdata[15] = \<const0> ;
  assign m00_axis_tdata[14] = \<const0> ;
  assign m00_axis_tdata[13] = \<const0> ;
  assign m00_axis_tdata[12] = \<const0> ;
  assign m00_axis_tdata[11] = \<const0> ;
  assign m00_axis_tdata[10] = \<const0> ;
  assign m00_axis_tdata[9] = \<const0> ;
  assign m00_axis_tdata[8] = \<const0> ;
  assign m00_axis_tdata[7] = \<const0> ;
  assign m00_axis_tdata[6] = \<const0> ;
  assign m00_axis_tdata[5] = \<const0> ;
  assign m00_axis_tdata[4] = \<const0> ;
  assign m00_axis_tdata[3] = \<const0> ;
  assign m00_axis_tdata[2] = \<const0> ;
  assign m00_axis_tdata[1] = \<const0> ;
  assign m00_axis_tdata[0] = \^m00_axis_tdata [0];
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign we_1[3] = \<const0> ;
  assign we_1[2] = \<const0> ;
  assign we_1[1] = \<const0> ;
  assign we_1[0] = \^we_1 [0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0 inst
       (.addr(addr),
        .din(din[0]),
        .done_cal(done_cal),
        .dout(dout),
        .en(en),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(\^m00_axis_tdata ),
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

(* ORIG_REF_NAME = "AXI_STREAM_S_M_v1_0" *) 
module SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0
   (m00_axis_tvalid,
    m00_axis_tlast,
    addr,
    dout,
    mst_exec_state_reg,
    we_1,
    m00_axis_tdata,
    en,
    m00_axis_tready,
    s00_axis_aresetn,
    m00_axis_aclk,
    s00_axis_aclk,
    s00_axis_tdata,
    m00_axis_aresetn,
    s00_axis_tlast,
    s00_axis_tvalid,
    done_cal,
    din);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [12:0]addr;
  output [31:0]dout;
  output mst_exec_state_reg;
  output [0:0]we_1;
  output [0:0]m00_axis_tdata;
  output en;
  input m00_axis_tready;
  input s00_axis_aresetn;
  input m00_axis_aclk;
  input s00_axis_aclk;
  input [31:0]s00_axis_tdata;
  input m00_axis_aresetn;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input done_cal;
  input [0:0]din;

  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8;
  wire AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9;
  wire \FSM_onehot_state[0]_i_2_n_0 ;
  wire \FSM_onehot_state[0]_i_3_n_0 ;
  wire \FSM_onehot_state[0]_i_4_n_0 ;
  wire \FSM_onehot_state[1]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire [12:0]addr;
  wire [12:0]addr_counter;
  wire addr_counter0_carry__0_n_0;
  wire addr_counter0_carry__0_n_1;
  wire addr_counter0_carry__0_n_2;
  wire addr_counter0_carry__0_n_3;
  wire addr_counter0_carry__1_n_1;
  wire addr_counter0_carry__1_n_2;
  wire addr_counter0_carry__1_n_3;
  wire addr_counter0_carry_n_0;
  wire addr_counter0_carry_n_1;
  wire addr_counter0_carry_n_2;
  wire addr_counter0_carry_n_3;
  wire \addr_counter[0]_i_1_n_0 ;
  wire \addr_counter[12]_i_1_n_0 ;
  wire \addr_counter[9]_i_1_n_0 ;
  wire data_from_bram;
  wire [31:0]data_to_bram;
  wire data_valid;
  wire data_valid_reg_n_0;
  wire [0:0]din;
  wire done_cal;
  wire [31:0]dout;
  wire \dout[31]_i_1_n_0 ;
  wire en;
  wire en2_out;
  wire [12:1]in8;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire mst_exec_state_reg;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [0:0]state;
  wire we;
  wire [0:0]we_1;
  wire [3:3]NLW_addr_counter0_carry__1_CO_UNCONNECTED;

  SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS AXI_STREAM_S_M_v1_0_M00_AXIS_inst
       (.data_from_bram(data_from_bram),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .\read_pointer_reg[0]_0 (data_valid_reg_n_0));
  SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS AXI_STREAM_S_M_v1_0_S00_AXIS_inst
       (.E(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .\FSM_onehot_state_reg[0] (AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4),
        .\FSM_onehot_state_reg[0]_0 (AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9),
        .\FSM_onehot_state_reg[0]_1 (AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10),
        .\FSM_onehot_state_reg[0]_2 (\FSM_onehot_state[0]_i_2_n_0 ),
        .\FSM_onehot_state_reg[0]_3 (\FSM_onehot_state[0]_i_3_n_0 ),
        .\FSM_onehot_state_reg[0]_4 (\FSM_onehot_state[0]_i_4_n_0 ),
        .\FSM_onehot_state_reg[1] (AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg_n_0_[1] ),
        .\FSM_onehot_state_reg[1]_1 (\FSM_onehot_state[1]_i_3_n_0 ),
        .\FSM_onehot_state_reg[2] (AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2),
        .\FSM_onehot_state_reg[2]_0 (\FSM_onehot_state[2]_i_3_n_0 ),
        .Q(data_to_bram),
        .addr_counter(addr_counter[9]),
        .data_from_bram(data_from_bram),
        .data_valid(data_valid),
        .data_valid_reg(data_valid_reg_n_0),
        .din(din),
        .din_0_sp_1(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8),
        .done_cal(done_cal),
        .en(en),
        .en2_out(en2_out),
        .mst_exec_state_reg_0(mst_exec_state_reg),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .state(state),
        .we(we),
        .we_reg_0(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[0]_i_2 
       (.I0(addr_counter[2]),
        .I1(addr_counter[3]),
        .I2(addr_counter[0]),
        .I3(addr_counter[1]),
        .I4(\FSM_onehot_state[2]_i_5_n_0 ),
        .O(\FSM_onehot_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_onehot_state[0]_i_3 
       (.I0(data_valid),
        .I1(addr_counter[9]),
        .I2(addr_counter[8]),
        .O(\FSM_onehot_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCFCFCFCFC88)) 
    \FSM_onehot_state[0]_i_4 
       (.I0(addr_counter[9]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_valid),
        .I3(addr_counter[12]),
        .I4(addr_counter[11]),
        .I5(addr_counter[10]),
        .O(\FSM_onehot_state[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_onehot_state[1]_i_3 
       (.I0(addr_counter[12]),
        .I1(addr_counter[11]),
        .I2(addr_counter[10]),
        .O(\FSM_onehot_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0004444444444444)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(\FSM_onehot_state[1]_i_3_n_0 ),
        .I1(data_valid),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_state[2]_i_5_n_0 ),
        .I4(addr_counter[8]),
        .I5(addr_counter[9]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(addr_counter[1]),
        .I1(addr_counter[0]),
        .I2(addr_counter[3]),
        .I3(addr_counter[2]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(addr_counter[5]),
        .I1(addr_counter[4]),
        .I2(addr_counter[7]),
        .I3(addr_counter[6]),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "DATA_OUT:010,DATA_IN:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4),
        .Q(state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DATA_OUT:010,DATA_IN:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "DATA_OUT:010,DATA_IN:100,IDLE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2),
        .Q(data_valid),
        .R(1'b0));
  CARRY4 addr_counter0_carry
       (.CI(1'b0),
        .CO({addr_counter0_carry_n_0,addr_counter0_carry_n_1,addr_counter0_carry_n_2,addr_counter0_carry_n_3}),
        .CYINIT(addr_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[4:1]),
        .S(addr_counter[4:1]));
  CARRY4 addr_counter0_carry__0
       (.CI(addr_counter0_carry_n_0),
        .CO({addr_counter0_carry__0_n_0,addr_counter0_carry__0_n_1,addr_counter0_carry__0_n_2,addr_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[8:5]),
        .S(addr_counter[8:5]));
  CARRY4 addr_counter0_carry__1
       (.CI(addr_counter0_carry__0_n_0),
        .CO({NLW_addr_counter0_carry__1_CO_UNCONNECTED[3],addr_counter0_carry__1_n_1,addr_counter0_carry__1_n_2,addr_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in8[12:9]),
        .S(addr_counter[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_counter[0]_i_1 
       (.I0(addr_counter[0]),
        .O(\addr_counter[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \addr_counter[12]_i_1 
       (.I0(s00_axis_aresetn),
        .I1(state),
        .I2(data_valid),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\addr_counter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8FFFFFFA80000)) 
    \addr_counter[9]_i_1 
       (.I0(in8[9]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(data_valid),
        .I3(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7),
        .I4(en2_out),
        .I5(addr_counter[9]),
        .O(\addr_counter[9]_i_1_n_0 ));
  FDRE \addr_counter_reg[0] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(\addr_counter[0]_i_1_n_0 ),
        .Q(addr_counter[0]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[10] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[10]),
        .Q(addr_counter[10]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[11] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[11]),
        .Q(addr_counter[11]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[12] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[12]),
        .Q(addr_counter[12]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[1] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[1]),
        .Q(addr_counter[1]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[2] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[2]),
        .Q(addr_counter[2]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[3] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[3]),
        .Q(addr_counter[3]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[4] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[4]),
        .Q(addr_counter[4]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[5] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[5]),
        .Q(addr_counter[5]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[6] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[6]),
        .Q(addr_counter[6]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[7] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[7]),
        .Q(addr_counter[7]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[8] 
       (.C(s00_axis_aclk),
        .CE(en2_out),
        .D(in8[8]),
        .Q(addr_counter[8]),
        .R(\addr_counter[12]_i_1_n_0 ));
  FDRE \addr_counter_reg[9] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\addr_counter[9]_i_1_n_0 ),
        .Q(addr_counter[9]),
        .R(1'b0));
  FDRE \addr_reg[0] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[0]),
        .Q(addr[0]),
        .R(1'b0));
  FDRE \addr_reg[10] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[10]),
        .Q(addr[10]),
        .R(1'b0));
  FDRE \addr_reg[11] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[11]),
        .Q(addr[11]),
        .R(1'b0));
  FDRE \addr_reg[12] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[12]),
        .Q(addr[12]),
        .R(1'b0));
  FDRE \addr_reg[1] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[1]),
        .Q(addr[1]),
        .R(1'b0));
  FDRE \addr_reg[2] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[2]),
        .Q(addr[2]),
        .R(1'b0));
  FDRE \addr_reg[3] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[3]),
        .Q(addr[3]),
        .R(1'b0));
  FDRE \addr_reg[4] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[4]),
        .Q(addr[4]),
        .R(1'b0));
  FDRE \addr_reg[5] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[5]),
        .Q(addr[5]),
        .R(1'b0));
  FDRE \addr_reg[6] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[6]),
        .Q(addr[6]),
        .R(1'b0));
  FDRE \addr_reg[7] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[7]),
        .Q(addr[7]),
        .R(1'b0));
  FDRE \addr_reg[8] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[8]),
        .Q(addr[8]),
        .R(1'b0));
  FDRE \addr_reg[9] 
       (.C(s00_axis_aclk),
        .CE(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6),
        .D(addr_counter[9]),
        .Q(addr[9]),
        .R(1'b0));
  FDRE \data_from_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8),
        .Q(data_from_bram),
        .R(1'b0));
  FDRE data_valid_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9),
        .Q(data_valid_reg_n_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[31]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(s00_axis_aresetn),
        .O(\dout[31]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[10]),
        .Q(dout[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[11]),
        .Q(dout[11]),
        .R(1'b0));
  FDRE \dout_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[12]),
        .Q(dout[12]),
        .R(1'b0));
  FDRE \dout_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[13]),
        .Q(dout[13]),
        .R(1'b0));
  FDRE \dout_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[14]),
        .Q(dout[14]),
        .R(1'b0));
  FDRE \dout_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[15]),
        .Q(dout[15]),
        .R(1'b0));
  FDRE \dout_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[16]),
        .Q(dout[16]),
        .R(1'b0));
  FDRE \dout_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[17]),
        .Q(dout[17]),
        .R(1'b0));
  FDRE \dout_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[18]),
        .Q(dout[18]),
        .R(1'b0));
  FDRE \dout_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[19]),
        .Q(dout[19]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[20]),
        .Q(dout[20]),
        .R(1'b0));
  FDRE \dout_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[21]),
        .Q(dout[21]),
        .R(1'b0));
  FDRE \dout_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[22]),
        .Q(dout[22]),
        .R(1'b0));
  FDRE \dout_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[23]),
        .Q(dout[23]),
        .R(1'b0));
  FDRE \dout_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[24]),
        .Q(dout[24]),
        .R(1'b0));
  FDRE \dout_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[25]),
        .Q(dout[25]),
        .R(1'b0));
  FDRE \dout_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[26]),
        .Q(dout[26]),
        .R(1'b0));
  FDRE \dout_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[27]),
        .Q(dout[27]),
        .R(1'b0));
  FDRE \dout_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[28]),
        .Q(dout[28]),
        .R(1'b0));
  FDRE \dout_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[29]),
        .Q(dout[29]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[30]),
        .Q(dout[30]),
        .R(1'b0));
  FDRE \dout_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[31]),
        .Q(dout[31]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[5]),
        .Q(dout[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[6]),
        .Q(dout[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[7]),
        .Q(dout[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[8]),
        .Q(dout[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(data_to_bram[9]),
        .Q(dout[9]),
        .R(1'b0));
  FDRE en_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10),
        .Q(en),
        .R(1'b0));
  FDRE we_1_reg
       (.C(s00_axis_aclk),
        .CE(\dout[31]_i_1_n_0 ),
        .D(we),
        .Q(we_1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "AXI_STREAM_S_M_v1_0_M00_AXIS" *) 
module SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tdata,
    m00_axis_aclk,
    \read_pointer_reg[0]_0 ,
    m00_axis_tready,
    data_from_bram,
    m00_axis_aresetn);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [0:0]m00_axis_tdata;
  input m00_axis_aclk;
  input \read_pointer_reg[0]_0 ;
  input m00_axis_tready;
  input data_from_bram;
  input m00_axis_aresetn;

  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire axis_tlast;
  wire axis_tlast_delay_i_2_n_0;
  wire axis_tvalid;
  wire count;
  wire \count[2]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire data_from_bram;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [0:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [4:0]p_0_in;
  wire [8:1]p_0_in__0;
  wire \read_pointer[0]_i_1_n_0 ;
  wire \read_pointer[2]_i_1_n_0 ;
  wire \read_pointer[7]_i_2_n_0 ;
  wire \read_pointer[8]_i_1_n_0 ;
  wire \read_pointer[8]_i_3_n_0 ;
  wire [8:0]read_pointer_reg;
  wire \read_pointer_reg[0]_0 ;
  wire [0:0]stream_data_out;
  wire \stream_data_out[0]_i_2_n_0 ;
  wire tx_done_i_1_n_0;
  wire tx_done_i_2_n_0;
  wire tx_done_i_3_n_0;
  wire tx_done_reg_n_0;
  wire tx_en;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF3A0)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(tx_done_reg_n_0),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_mst_exec_state[1]_i_2 
       (.I0(count_reg[3]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(count_reg[4]),
        .I4(count_reg[2]),
        .O(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ),
        .Q(mst_exec_state[0]),
        .R(stream_data_out));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(stream_data_out));
  LUT5 #(
    .INIT(32'h00000080)) 
    axis_tlast_delay_i_1
       (.I0(read_pointer_reg[5]),
        .I1(read_pointer_reg[6]),
        .I2(read_pointer_reg[7]),
        .I3(read_pointer_reg[8]),
        .I4(axis_tlast_delay_i_2_n_0),
        .O(axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    axis_tlast_delay_i_2
       (.I0(read_pointer_reg[4]),
        .I1(read_pointer_reg[3]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[2]),
        .O(axis_tlast_delay_i_2_n_0));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(m00_axis_tlast),
        .R(stream_data_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(read_pointer_reg[8]),
        .I3(\read_pointer_reg[0]_0 ),
        .O(axis_tvalid));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(stream_data_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(count_reg[2]),
        .I3(count_reg[3]),
        .O(p_0_in[3]));
  LUT3 #(
    .INIT(8'h04)) 
    \count[4]_i_1 
       (.I0(mst_exec_state[1]),
        .I1(mst_exec_state[0]),
        .I2(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_2 
       (.I0(count_reg[2]),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .I3(count_reg[3]),
        .I4(count_reg[4]),
        .O(p_0_in[4]));
  FDRE \count_reg[0] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[0]),
        .Q(count_reg[0]),
        .R(stream_data_out));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(stream_data_out));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(stream_data_out));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(stream_data_out));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(stream_data_out));
  LUT6 #(
    .INIT(64'hFBFFFFFF04000000)) 
    \read_pointer[0]_i_1 
       (.I0(read_pointer_reg[8]),
        .I1(m00_axis_tready),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
        .I4(\read_pointer_reg[0]_0 ),
        .I5(read_pointer_reg[0]),
        .O(\read_pointer[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \read_pointer[1]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \read_pointer[2]_i_1 
       (.I0(read_pointer_reg[1]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[2]),
        .O(\read_pointer[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \read_pointer[3]_i_1 
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[2]),
        .I3(read_pointer_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[4]_i_1 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[3]),
        .I4(read_pointer_reg[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_pointer[5]_i_1 
       (.I0(read_pointer_reg[3]),
        .I1(read_pointer_reg[0]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[2]),
        .I4(read_pointer_reg[4]),
        .I5(read_pointer_reg[5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \read_pointer[6]_i_1 
       (.I0(read_pointer_reg[4]),
        .I1(\read_pointer[7]_i_2_n_0 ),
        .I2(read_pointer_reg[3]),
        .I3(read_pointer_reg[5]),
        .I4(read_pointer_reg[6]),
        .O(p_0_in__0[6]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \read_pointer[7]_i_1 
       (.I0(read_pointer_reg[5]),
        .I1(read_pointer_reg[3]),
        .I2(\read_pointer[7]_i_2_n_0 ),
        .I3(read_pointer_reg[4]),
        .I4(read_pointer_reg[6]),
        .I5(read_pointer_reg[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \read_pointer[7]_i_2 
       (.I0(read_pointer_reg[2]),
        .I1(read_pointer_reg[1]),
        .I2(read_pointer_reg[0]),
        .O(\read_pointer[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \read_pointer[8]_i_1 
       (.I0(\read_pointer_reg[0]_0 ),
        .I1(mst_exec_state[1]),
        .I2(mst_exec_state[0]),
        .I3(m00_axis_tready),
        .I4(read_pointer_reg[8]),
        .O(\read_pointer[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \read_pointer[8]_i_2 
       (.I0(read_pointer_reg[6]),
        .I1(\read_pointer[8]_i_3_n_0 ),
        .I2(read_pointer_reg[7]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \read_pointer[8]_i_3 
       (.I0(read_pointer_reg[5]),
        .I1(read_pointer_reg[3]),
        .I2(read_pointer_reg[0]),
        .I3(read_pointer_reg[1]),
        .I4(read_pointer_reg[2]),
        .I5(read_pointer_reg[4]),
        .O(\read_pointer[8]_i_3_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\read_pointer[0]_i_1_n_0 ),
        .Q(read_pointer_reg[0]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(read_pointer_reg[1]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(\read_pointer[2]_i_1_n_0 ),
        .Q(read_pointer_reg[2]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(read_pointer_reg[3]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(read_pointer_reg[4]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(read_pointer_reg[5]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(read_pointer_reg[6]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(read_pointer_reg[7]),
        .R(stream_data_out));
  FDRE \read_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(\read_pointer[8]_i_1_n_0 ),
        .D(p_0_in__0[8]),
        .Q(read_pointer_reg[8]),
        .R(stream_data_out));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(m00_axis_aresetn),
        .O(stream_data_out));
  LUT3 #(
    .INIT(8'hB8)) 
    \stream_data_out[0]_i_2 
       (.I0(data_from_bram),
        .I1(tx_en),
        .I2(m00_axis_tdata),
        .O(\stream_data_out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \stream_data_out[0]_i_3 
       (.I0(m00_axis_tready),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(read_pointer_reg[8]),
        .I4(\read_pointer_reg[0]_0 ),
        .O(tx_en));
  FDRE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\stream_data_out[0]_i_2_n_0 ),
        .Q(m00_axis_tdata),
        .R(stream_data_out));
  LUT6 #(
    .INIT(64'h00000000ABAA0000)) 
    tx_done_i_1
       (.I0(tx_done_reg_n_0),
        .I1(tx_done_i_2_n_0),
        .I2(tx_done_i_3_n_0),
        .I3(read_pointer_reg[8]),
        .I4(m00_axis_aresetn),
        .I5(\read_pointer[8]_i_1_n_0 ),
        .O(tx_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_done_i_2
       (.I0(read_pointer_reg[0]),
        .I1(read_pointer_reg[7]),
        .I2(read_pointer_reg[5]),
        .I3(read_pointer_reg[6]),
        .O(tx_done_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    tx_done_i_3
       (.I0(read_pointer_reg[3]),
        .I1(read_pointer_reg[4]),
        .I2(read_pointer_reg[1]),
        .I3(read_pointer_reg[2]),
        .O(tx_done_i_3_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "AXI_STREAM_S_M_v1_0_S00_AXIS" *) 
module SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS
   (we,
    mst_exec_state_reg_0,
    \FSM_onehot_state_reg[2] ,
    \FSM_onehot_state_reg[1] ,
    \FSM_onehot_state_reg[0] ,
    en2_out,
    E,
    we_reg_0,
    din_0_sp_1,
    \FSM_onehot_state_reg[0]_0 ,
    \FSM_onehot_state_reg[0]_1 ,
    Q,
    s00_axis_aclk,
    data_valid,
    state,
    \FSM_onehot_state_reg[2]_0 ,
    s00_axis_aresetn,
    \FSM_onehot_state_reg[1]_0 ,
    addr_counter,
    \FSM_onehot_state_reg[1]_1 ,
    \FSM_onehot_state_reg[0]_2 ,
    \FSM_onehot_state_reg[0]_3 ,
    \FSM_onehot_state_reg[0]_4 ,
    s00_axis_tlast,
    s00_axis_tvalid,
    done_cal,
    din,
    data_from_bram,
    data_valid_reg,
    en,
    s00_axis_tdata);
  output we;
  output mst_exec_state_reg_0;
  output \FSM_onehot_state_reg[2] ;
  output \FSM_onehot_state_reg[1] ;
  output \FSM_onehot_state_reg[0] ;
  output en2_out;
  output [0:0]E;
  output we_reg_0;
  output din_0_sp_1;
  output \FSM_onehot_state_reg[0]_0 ;
  output \FSM_onehot_state_reg[0]_1 ;
  output [31:0]Q;
  input s00_axis_aclk;
  input data_valid;
  input [0:0]state;
  input \FSM_onehot_state_reg[2]_0 ;
  input s00_axis_aresetn;
  input \FSM_onehot_state_reg[1]_0 ;
  input [0:0]addr_counter;
  input \FSM_onehot_state_reg[1]_1 ;
  input \FSM_onehot_state_reg[0]_2 ;
  input \FSM_onehot_state_reg[0]_3 ;
  input \FSM_onehot_state_reg[0]_4 ;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input done_cal;
  input [0:0]din;
  input data_from_bram;
  input data_valid_reg;
  input en;
  input [31:0]s00_axis_tdata;

  wire [0:0]E;
  wire \FSM_onehot_state[1]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire \FSM_onehot_state_reg[0]_2 ;
  wire \FSM_onehot_state_reg[0]_3 ;
  wire \FSM_onehot_state_reg[0]_4 ;
  wire \FSM_onehot_state_reg[1] ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg[1]_1 ;
  wire \FSM_onehot_state_reg[2] ;
  wire \FSM_onehot_state_reg[2]_0 ;
  wire [31:0]Q;
  wire [0:0]addr_counter;
  wire data_from_bram;
  wire data_valid;
  wire data_valid_reg;
  wire [0:0]din;
  wire din_0_sn_1;
  wire done_cal;
  wire en;
  wire en2_out;
  wire fifo_wren;
  wire mst_exec_state_i_1_n_0;
  wire mst_exec_state_reg_0;
  wire p_0_in_0;
  wire [8:0]p_0_in__1;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [0:0]state;
  wire we;
  wire we_reg_0;
  wire \write_pointer[8]_i_3_n_0 ;
  wire [8:0]write_pointer_reg;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire writes_done_i_2_n_0;

  assign din_0_sp_1 = din_0_sn_1;
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEE222)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(state),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg[0]_2 ),
        .I3(\FSM_onehot_state_reg[0]_3 ),
        .I4(\FSM_onehot_state_reg[0]_4 ),
        .I5(s00_axis_aresetn),
        .O(\FSM_onehot_state_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000E2E2E2EA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state[1]_i_2_n_0 ),
        .I3(addr_counter),
        .I4(\FSM_onehot_state_reg[1]_1 ),
        .I5(s00_axis_aresetn),
        .O(\FSM_onehot_state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_2 
       (.I0(state),
        .I1(we),
        .O(\FSM_onehot_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEE22E2)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(data_valid),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(state),
        .I3(we),
        .I4(\FSM_onehot_state_reg[2]_0 ),
        .I5(s00_axis_aresetn),
        .O(\FSM_onehot_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFECCEE)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(data_valid),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(done_cal),
        .I3(we),
        .I4(state),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h00AE)) 
    \addr[12]_i_1 
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(data_valid),
        .I2(we),
        .I3(s00_axis_aresetn),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h33332322)) 
    \addr_counter[12]_i_2 
       (.I0(state),
        .I1(s00_axis_aresetn),
        .I2(we),
        .I3(data_valid),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .O(en2_out));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \addr_counter[9]_i_2 
       (.I0(we),
        .I1(done_cal),
        .I2(state),
        .O(we_reg_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \data_from_bram[0]_i_1 
       (.I0(din),
        .I1(we),
        .I2(data_valid),
        .I3(s00_axis_aresetn),
        .I4(data_from_bram),
        .O(din_0_sn_1));
  FDRE \data_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \data_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \data_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \data_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \data_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \data_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \data_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \data_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \data_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \data_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \data_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \data_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \data_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \data_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \data_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \data_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \data_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \data_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \data_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \data_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \data_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \data_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \data_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \data_to_bram_reg[30] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \data_to_bram_reg[31] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \data_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \data_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \data_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \data_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \data_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \data_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \data_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(s00_axis_tdata[9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFDFD2030)) 
    data_valid_i_1
       (.I0(state),
        .I1(s00_axis_aresetn),
        .I2(data_valid),
        .I3(we),
        .I4(data_valid_reg),
        .O(\FSM_onehot_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDD33332300)) 
    en_i_1
       (.I0(state),
        .I1(s00_axis_aresetn),
        .I2(we),
        .I3(data_valid),
        .I4(\FSM_onehot_state_reg[1]_0 ),
        .I5(en),
        .O(\FSM_onehot_state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  LUT2 #(
    .INIT(4'h8)) 
    we_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state_reg_0),
        .O(fifo_wren));
  FDRE we_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(fifo_wren),
        .Q(we),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(write_pointer_reg[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(write_pointer_reg[0]),
        .I1(write_pointer_reg[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(write_pointer_reg[1]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(write_pointer_reg[2]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer_reg[1]),
        .I3(write_pointer_reg[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(write_pointer_reg[3]),
        .I1(write_pointer_reg[1]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[2]),
        .I4(write_pointer_reg[4]),
        .O(p_0_in__1[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[3]),
        .I5(write_pointer_reg[5]),
        .O(p_0_in__1[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \write_pointer[6]_i_1 
       (.I0(\write_pointer[8]_i_3_n_0 ),
        .I1(write_pointer_reg[6]),
        .O(p_0_in__1[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \write_pointer[7]_i_1 
       (.I0(write_pointer_reg[6]),
        .I1(\write_pointer[8]_i_3_n_0 ),
        .I2(write_pointer_reg[7]),
        .O(p_0_in__1[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[8]_i_1 
       (.I0(s00_axis_aresetn),
        .O(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_pointer[8]_i_2 
       (.I0(write_pointer_reg[7]),
        .I1(\write_pointer[8]_i_3_n_0 ),
        .I2(write_pointer_reg[6]),
        .I3(write_pointer_reg[8]),
        .O(p_0_in__1[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_pointer[8]_i_3 
       (.I0(write_pointer_reg[4]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[0]),
        .I3(write_pointer_reg[1]),
        .I4(write_pointer_reg[3]),
        .I5(write_pointer_reg[5]),
        .O(\write_pointer[8]_i_3_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[0]),
        .Q(write_pointer_reg[0]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[1]),
        .Q(write_pointer_reg[1]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[2]),
        .Q(write_pointer_reg[2]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[3]),
        .Q(write_pointer_reg[3]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[4]),
        .Q(write_pointer_reg[4]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[5]),
        .Q(write_pointer_reg[5]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[6]),
        .Q(write_pointer_reg[6]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[7]),
        .Q(write_pointer_reg[7]),
        .R(p_0_in_0));
  FDRE \write_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(fifo_wren),
        .D(p_0_in__1[8]),
        .Q(write_pointer_reg[8]),
        .R(p_0_in_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hCEEE0000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(writes_done_i_2_n_0),
        .I2(s00_axis_tvalid),
        .I3(mst_exec_state_reg_0),
        .I4(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    writes_done_i_2
       (.I0(write_pointer_reg[6]),
        .I1(\write_pointer[8]_i_3_n_0 ),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer_reg[8]),
        .I4(s00_axis_tlast),
        .O(writes_done_i_2_n_0));
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
