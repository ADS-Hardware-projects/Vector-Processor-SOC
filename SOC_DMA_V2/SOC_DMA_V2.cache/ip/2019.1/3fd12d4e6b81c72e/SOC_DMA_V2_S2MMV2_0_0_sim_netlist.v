// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sun Dec 10 18:46:52 2023
// Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_S2MMV2_0_0_sim_netlist.v
// Design      : SOC_DMA_V2_S2MMV2_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0
   (s00_axi_awready,
    s00_axi_wready,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rvalid,
    dout,
    we_1,
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    en,
    addr,
    s00_axi_bvalid,
    m00_axis_tready,
    m00_axis_aresetn,
    s00_axi_aclk,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axis_tdata,
    s00_axis_aclk,
    s00_axis_tvalid,
    s00_axis_aresetn,
    m00_axis_aclk,
    din,
    s00_axis_tlast,
    done_cal,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output s00_axi_awready;
  output s00_axi_wready;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output [31:0]dout;
  output [0:0]we_1;
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output en;
  output [29:0]addr;
  output s00_axi_bvalid;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input s00_axi_aclk;
  input [2:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input [31:0]s00_axis_tdata;
  input s00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_aresetn;
  input m00_axis_aclk;
  input [31:0]din;
  input s00_axis_tlast;
  input done_cal;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [30:0]DMA_MM2S_BUFF_LEN;
  wire [29:0]DMA_MM2S_START_ADDR;
  wire S2MMV2_v1_0_S00_AXI_inst_n_10;
  wire S2MMV2_v1_0_S00_AXI_inst_n_100;
  wire S2MMV2_v1_0_S00_AXI_inst_n_101;
  wire S2MMV2_v1_0_S00_AXI_inst_n_11;
  wire S2MMV2_v1_0_S00_AXI_inst_n_12;
  wire S2MMV2_v1_0_S00_AXI_inst_n_13;
  wire S2MMV2_v1_0_S00_AXI_inst_n_14;
  wire S2MMV2_v1_0_S00_AXI_inst_n_15;
  wire S2MMV2_v1_0_S00_AXI_inst_n_16;
  wire S2MMV2_v1_0_S00_AXI_inst_n_17;
  wire S2MMV2_v1_0_S00_AXI_inst_n_18;
  wire S2MMV2_v1_0_S00_AXI_inst_n_19;
  wire S2MMV2_v1_0_S00_AXI_inst_n_20;
  wire S2MMV2_v1_0_S00_AXI_inst_n_21;
  wire S2MMV2_v1_0_S00_AXI_inst_n_5;
  wire S2MMV2_v1_0_S00_AXI_inst_n_53;
  wire S2MMV2_v1_0_S00_AXI_inst_n_54;
  wire S2MMV2_v1_0_S00_AXI_inst_n_55;
  wire S2MMV2_v1_0_S00_AXI_inst_n_56;
  wire S2MMV2_v1_0_S00_AXI_inst_n_57;
  wire S2MMV2_v1_0_S00_AXI_inst_n_58;
  wire S2MMV2_v1_0_S00_AXI_inst_n_59;
  wire S2MMV2_v1_0_S00_AXI_inst_n_6;
  wire S2MMV2_v1_0_S00_AXI_inst_n_60;
  wire S2MMV2_v1_0_S00_AXI_inst_n_61;
  wire S2MMV2_v1_0_S00_AXI_inst_n_62;
  wire S2MMV2_v1_0_S00_AXI_inst_n_63;
  wire S2MMV2_v1_0_S00_AXI_inst_n_64;
  wire S2MMV2_v1_0_S00_AXI_inst_n_65;
  wire S2MMV2_v1_0_S00_AXI_inst_n_66;
  wire S2MMV2_v1_0_S00_AXI_inst_n_67;
  wire S2MMV2_v1_0_S00_AXI_inst_n_68;
  wire S2MMV2_v1_0_S00_AXI_inst_n_69;
  wire S2MMV2_v1_0_S00_AXI_inst_n_7;
  wire S2MMV2_v1_0_S00_AXI_inst_n_70;
  wire S2MMV2_v1_0_S00_AXI_inst_n_71;
  wire S2MMV2_v1_0_S00_AXI_inst_n_72;
  wire S2MMV2_v1_0_S00_AXI_inst_n_73;
  wire S2MMV2_v1_0_S00_AXI_inst_n_74;
  wire S2MMV2_v1_0_S00_AXI_inst_n_75;
  wire S2MMV2_v1_0_S00_AXI_inst_n_76;
  wire S2MMV2_v1_0_S00_AXI_inst_n_77;
  wire S2MMV2_v1_0_S00_AXI_inst_n_78;
  wire S2MMV2_v1_0_S00_AXI_inst_n_79;
  wire S2MMV2_v1_0_S00_AXI_inst_n_8;
  wire S2MMV2_v1_0_S00_AXI_inst_n_80;
  wire S2MMV2_v1_0_S00_AXI_inst_n_81;
  wire S2MMV2_v1_0_S00_AXI_inst_n_82;
  wire S2MMV2_v1_0_S00_AXI_inst_n_83;
  wire S2MMV2_v1_0_S00_AXI_inst_n_84;
  wire S2MMV2_v1_0_S00_AXI_inst_n_85;
  wire S2MMV2_v1_0_S00_AXI_inst_n_86;
  wire S2MMV2_v1_0_S00_AXI_inst_n_87;
  wire S2MMV2_v1_0_S00_AXI_inst_n_88;
  wire S2MMV2_v1_0_S00_AXI_inst_n_89;
  wire S2MMV2_v1_0_S00_AXI_inst_n_9;
  wire S2MMV2_v1_0_S00_AXI_inst_n_90;
  wire S2MMV2_v1_0_S00_AXI_inst_n_91;
  wire S2MMV2_v1_0_S00_AXI_inst_n_92;
  wire S2MMV2_v1_0_S00_AXI_inst_n_93;
  wire S2MMV2_v1_0_S00_AXI_inst_n_94;
  wire S2MMV2_v1_0_S00_AXI_inst_n_95;
  wire S2MMV2_v1_0_S00_AXI_inst_n_96;
  wire S2MMV2_v1_0_S00_AXI_inst_n_97;
  wire S2MMV2_v1_0_S00_AXI_inst_n_98;
  wire S2MMV2_v1_0_S00_AXI_inst_n_99;
  wire [29:0]addr;
  wire [29:0]addr_to_bram;
  wire [31:3]axis_tlast0;
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
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [0:0]we_1;
  wire [1:1]write_pointer2;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS S2MMV2_v1_0_M00_AXIS_inst
       (.DI({S2MMV2_v1_0_S00_AXI_inst_n_85,S2MMV2_v1_0_S00_AXI_inst_n_86,S2MMV2_v1_0_S00_AXI_inst_n_87,S2MMV2_v1_0_S00_AXI_inst_n_88}),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_17,S2MMV2_v1_0_S00_AXI_inst_n_18,S2MMV2_v1_0_S00_AXI_inst_n_19,S2MMV2_v1_0_S00_AXI_inst_n_20}),
        .axis_tlast0(axis_tlast0),
        .axis_tlast_carry__0_0(S2MMV2_v1_0_S00_AXI_inst_n_101),
        .axis_tvalid0_carry__1_0({S2MMV2_v1_0_S00_AXI_inst_n_89,S2MMV2_v1_0_S00_AXI_inst_n_90,S2MMV2_v1_0_S00_AXI_inst_n_91,S2MMV2_v1_0_S00_AXI_inst_n_92}),
        .axis_tvalid0_carry__1_1({S2MMV2_v1_0_S00_AXI_inst_n_13,S2MMV2_v1_0_S00_AXI_inst_n_14,S2MMV2_v1_0_S00_AXI_inst_n_15,S2MMV2_v1_0_S00_AXI_inst_n_16}),
        .axis_tvalid0_carry__2_0({S2MMV2_v1_0_S00_AXI_inst_n_93,S2MMV2_v1_0_S00_AXI_inst_n_94,S2MMV2_v1_0_S00_AXI_inst_n_95,S2MMV2_v1_0_S00_AXI_inst_n_96}),
        .axis_tvalid0_carry__2_1({S2MMV2_v1_0_S00_AXI_inst_n_9,S2MMV2_v1_0_S00_AXI_inst_n_10,S2MMV2_v1_0_S00_AXI_inst_n_11,S2MMV2_v1_0_S00_AXI_inst_n_12}),
        .axis_tvalid_delay_reg_0({S2MMV2_v1_0_S00_AXI_inst_n_97,S2MMV2_v1_0_S00_AXI_inst_n_98,S2MMV2_v1_0_S00_AXI_inst_n_99,S2MMV2_v1_0_S00_AXI_inst_n_100}),
        .axis_tvalid_delay_reg_1({S2MMV2_v1_0_S00_AXI_inst_n_5,S2MMV2_v1_0_S00_AXI_inst_n_6,S2MMV2_v1_0_S00_AXI_inst_n_7,S2MMV2_v1_0_S00_AXI_inst_n_8}),
        .din(din),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS S2MMV2_v1_0_S00_AXIS_inst
       (.DI(S2MMV2_v1_0_S00_AXI_inst_n_84),
        .O(write_pointer2),
        .Q(DMA_MM2S_BUFF_LEN),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_80,S2MMV2_v1_0_S00_AXI_inst_n_81,S2MMV2_v1_0_S00_AXI_inst_n_82,S2MMV2_v1_0_S00_AXI_inst_n_83}),
        .\addr_to_bram_reg[29]_0 (addr_to_bram),
        .\addr_to_bram_reg[29]_1 (DMA_MM2S_START_ADDR),
        .done_cal(done_cal),
        .dout(dout),
        .en(en),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .we_1(we_1),
        .write_pointer1_carry__0_0(S2MMV2_v1_0_S00_AXI_inst_n_21),
        .write_pointer1_carry__0_i_2_0({S2MMV2_v1_0_S00_AXI_inst_n_68,S2MMV2_v1_0_S00_AXI_inst_n_69,S2MMV2_v1_0_S00_AXI_inst_n_70,S2MMV2_v1_0_S00_AXI_inst_n_71}),
        .write_pointer1_carry__0_i_4_0({S2MMV2_v1_0_S00_AXI_inst_n_72,S2MMV2_v1_0_S00_AXI_inst_n_73,S2MMV2_v1_0_S00_AXI_inst_n_74,S2MMV2_v1_0_S00_AXI_inst_n_75}),
        .write_pointer1_carry__1_i_2_0({S2MMV2_v1_0_S00_AXI_inst_n_60,S2MMV2_v1_0_S00_AXI_inst_n_61,S2MMV2_v1_0_S00_AXI_inst_n_62,S2MMV2_v1_0_S00_AXI_inst_n_63}),
        .write_pointer1_carry__1_i_4_0({S2MMV2_v1_0_S00_AXI_inst_n_64,S2MMV2_v1_0_S00_AXI_inst_n_65,S2MMV2_v1_0_S00_AXI_inst_n_66,S2MMV2_v1_0_S00_AXI_inst_n_67}),
        .write_pointer1_carry__2_i_2_0({S2MMV2_v1_0_S00_AXI_inst_n_53,S2MMV2_v1_0_S00_AXI_inst_n_54,S2MMV2_v1_0_S00_AXI_inst_n_55}),
        .write_pointer1_carry__2_i_4_0({S2MMV2_v1_0_S00_AXI_inst_n_56,S2MMV2_v1_0_S00_AXI_inst_n_57,S2MMV2_v1_0_S00_AXI_inst_n_58,S2MMV2_v1_0_S00_AXI_inst_n_59}),
        .write_pointer1_carry_i_2_0({S2MMV2_v1_0_S00_AXI_inst_n_76,S2MMV2_v1_0_S00_AXI_inst_n_77,S2MMV2_v1_0_S00_AXI_inst_n_78,S2MMV2_v1_0_S00_AXI_inst_n_79}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI S2MMV2_v1_0_S00_AXI_inst
       (.DI(S2MMV2_v1_0_S00_AXI_inst_n_84),
        .O(write_pointer2),
        .Q(DMA_MM2S_BUFF_LEN),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_17,S2MMV2_v1_0_S00_AXI_inst_n_18,S2MMV2_v1_0_S00_AXI_inst_n_19,S2MMV2_v1_0_S00_AXI_inst_n_20}),
        .addr(addr),
        .\addr[31] (addr_to_bram),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .done_cal(done_cal),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .\slv_reg0_reg[0]_0 (S2MMV2_v1_0_S00_AXI_inst_n_21),
        .\slv_reg0_reg[12]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_72,S2MMV2_v1_0_S00_AXI_inst_n_73,S2MMV2_v1_0_S00_AXI_inst_n_74,S2MMV2_v1_0_S00_AXI_inst_n_75}),
        .\slv_reg0_reg[16]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_68,S2MMV2_v1_0_S00_AXI_inst_n_69,S2MMV2_v1_0_S00_AXI_inst_n_70,S2MMV2_v1_0_S00_AXI_inst_n_71}),
        .\slv_reg0_reg[20]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_64,S2MMV2_v1_0_S00_AXI_inst_n_65,S2MMV2_v1_0_S00_AXI_inst_n_66,S2MMV2_v1_0_S00_AXI_inst_n_67}),
        .\slv_reg0_reg[24]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_60,S2MMV2_v1_0_S00_AXI_inst_n_61,S2MMV2_v1_0_S00_AXI_inst_n_62,S2MMV2_v1_0_S00_AXI_inst_n_63}),
        .\slv_reg0_reg[28]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_56,S2MMV2_v1_0_S00_AXI_inst_n_57,S2MMV2_v1_0_S00_AXI_inst_n_58,S2MMV2_v1_0_S00_AXI_inst_n_59}),
        .\slv_reg0_reg[31]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_53,S2MMV2_v1_0_S00_AXI_inst_n_54,S2MMV2_v1_0_S00_AXI_inst_n_55}),
        .\slv_reg0_reg[4]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_80,S2MMV2_v1_0_S00_AXI_inst_n_81,S2MMV2_v1_0_S00_AXI_inst_n_82,S2MMV2_v1_0_S00_AXI_inst_n_83}),
        .\slv_reg0_reg[8]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_76,S2MMV2_v1_0_S00_AXI_inst_n_77,S2MMV2_v1_0_S00_AXI_inst_n_78,S2MMV2_v1_0_S00_AXI_inst_n_79}),
        .\slv_reg1_reg[29]_0 (DMA_MM2S_START_ADDR),
        .\slv_reg2_reg[0]_0 (S2MMV2_v1_0_S00_AXI_inst_n_101),
        .\slv_reg2_reg[14]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_13,S2MMV2_v1_0_S00_AXI_inst_n_14,S2MMV2_v1_0_S00_AXI_inst_n_15,S2MMV2_v1_0_S00_AXI_inst_n_16}),
        .\slv_reg2_reg[14]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_89,S2MMV2_v1_0_S00_AXI_inst_n_90,S2MMV2_v1_0_S00_AXI_inst_n_91,S2MMV2_v1_0_S00_AXI_inst_n_92}),
        .\slv_reg2_reg[22]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_9,S2MMV2_v1_0_S00_AXI_inst_n_10,S2MMV2_v1_0_S00_AXI_inst_n_11,S2MMV2_v1_0_S00_AXI_inst_n_12}),
        .\slv_reg2_reg[22]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_93,S2MMV2_v1_0_S00_AXI_inst_n_94,S2MMV2_v1_0_S00_AXI_inst_n_95,S2MMV2_v1_0_S00_AXI_inst_n_96}),
        .\slv_reg2_reg[30]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_5,S2MMV2_v1_0_S00_AXI_inst_n_6,S2MMV2_v1_0_S00_AXI_inst_n_7,S2MMV2_v1_0_S00_AXI_inst_n_8}),
        .\slv_reg2_reg[30]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_97,S2MMV2_v1_0_S00_AXI_inst_n_98,S2MMV2_v1_0_S00_AXI_inst_n_99,S2MMV2_v1_0_S00_AXI_inst_n_100}),
        .\slv_reg2_reg[30]_2 (axis_tlast0),
        .\slv_reg2_reg[6]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_85,S2MMV2_v1_0_S00_AXI_inst_n_86,S2MMV2_v1_0_S00_AXI_inst_n_87,S2MMV2_v1_0_S00_AXI_inst_n_88}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    m00_axis_tdata,
    m00_axis_aclk,
    DI,
    S,
    axis_tvalid0_carry__1_0,
    axis_tvalid0_carry__1_1,
    axis_tvalid0_carry__2_0,
    axis_tvalid0_carry__2_1,
    axis_tvalid_delay_reg_0,
    axis_tvalid_delay_reg_1,
    axis_tlast_carry__0_0,
    m00_axis_tready,
    m00_axis_aresetn,
    axis_tlast0,
    din);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [31:0]m00_axis_tdata;
  input m00_axis_aclk;
  input [3:0]DI;
  input [3:0]S;
  input [3:0]axis_tvalid0_carry__1_0;
  input [3:0]axis_tvalid0_carry__1_1;
  input [3:0]axis_tvalid0_carry__2_0;
  input [3:0]axis_tvalid0_carry__2_1;
  input [3:0]axis_tvalid_delay_reg_0;
  input [3:0]axis_tvalid_delay_reg_1;
  input [0:0]axis_tlast_carry__0_0;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input [28:0]axis_tlast0;
  input [31:0]din;

  wire [3:0]DI;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [3:0]S;
  wire axis_tlast;
  wire [28:0]axis_tlast0;
  wire [0:0]axis_tlast_carry__0_0;
  wire axis_tlast_carry__0_i_1_n_0;
  wire axis_tlast_carry__0_i_2_n_0;
  wire axis_tlast_carry__0_i_3_n_0;
  wire axis_tlast_carry__0_i_4_n_0;
  wire axis_tlast_carry__0_n_0;
  wire axis_tlast_carry__0_n_1;
  wire axis_tlast_carry__0_n_2;
  wire axis_tlast_carry__0_n_3;
  wire axis_tlast_carry__1_i_1_n_0;
  wire axis_tlast_carry__1_i_2_n_0;
  wire axis_tlast_carry__1_i_3_n_0;
  wire axis_tlast_carry__1_n_2;
  wire axis_tlast_carry__1_n_3;
  wire axis_tlast_carry_i_1_n_0;
  wire axis_tlast_carry_i_2_n_0;
  wire axis_tlast_carry_i_3_n_0;
  wire axis_tlast_carry_n_0;
  wire axis_tlast_carry_n_1;
  wire axis_tlast_carry_n_2;
  wire axis_tlast_carry_n_3;
  wire axis_tlast_delay;
  wire axis_tlast_delay_delay_i_1_n_0;
  wire axis_tvalid;
  wire axis_tvalid0;
  wire axis_tvalid0_carry__0_n_0;
  wire axis_tvalid0_carry__0_n_1;
  wire axis_tvalid0_carry__0_n_2;
  wire axis_tvalid0_carry__0_n_3;
  wire [3:0]axis_tvalid0_carry__1_0;
  wire [3:0]axis_tvalid0_carry__1_1;
  wire axis_tvalid0_carry__1_n_0;
  wire axis_tvalid0_carry__1_n_1;
  wire axis_tvalid0_carry__1_n_2;
  wire axis_tvalid0_carry__1_n_3;
  wire [3:0]axis_tvalid0_carry__2_0;
  wire [3:0]axis_tvalid0_carry__2_1;
  wire axis_tvalid0_carry__2_n_1;
  wire axis_tvalid0_carry__2_n_2;
  wire axis_tvalid0_carry__2_n_3;
  wire axis_tvalid0_carry_n_0;
  wire axis_tvalid0_carry_n_1;
  wire axis_tvalid0_carry_n_2;
  wire axis_tvalid0_carry_n_3;
  wire axis_tvalid_delay;
  wire [3:0]axis_tvalid_delay_reg_0;
  wire [3:0]axis_tvalid_delay_reg_1;
  wire count;
  wire \count[2]_i_1_n_0 ;
  wire [4:0]count_reg;
  wire [31:0]din;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [4:0]p_0_in;
  wire \stream_data_out[31]_i_1_n_0 ;
  wire [3:0]NLW_axis_tlast_carry_O_UNCONNECTED;
  wire [3:0]NLW_axis_tlast_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_axis_tlast_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_axis_tlast_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__2_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hC7)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  CARRY4 axis_tlast_carry
       (.CI(1'b0),
        .CO({axis_tlast_carry_n_0,axis_tlast_carry_n_1,axis_tlast_carry_n_2,axis_tlast_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry_O_UNCONNECTED[3:0]),
        .S({axis_tlast_carry_i_1_n_0,axis_tlast_carry_i_2_n_0,axis_tlast_carry_i_3_n_0,axis_tlast_carry__0_0}));
  CARRY4 axis_tlast_carry__0
       (.CI(axis_tlast_carry_n_0),
        .CO({axis_tlast_carry__0_n_0,axis_tlast_carry__0_n_1,axis_tlast_carry__0_n_2,axis_tlast_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry__0_O_UNCONNECTED[3:0]),
        .S({axis_tlast_carry__0_i_1_n_0,axis_tlast_carry__0_i_2_n_0,axis_tlast_carry__0_i_3_n_0,axis_tlast_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__0_i_1
       (.I0(axis_tlast0[20]),
        .I1(axis_tlast0[19]),
        .I2(axis_tlast0[18]),
        .O(axis_tlast_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__0_i_2
       (.I0(axis_tlast0[17]),
        .I1(axis_tlast0[16]),
        .I2(axis_tlast0[15]),
        .O(axis_tlast_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__0_i_3
       (.I0(axis_tlast0[14]),
        .I1(axis_tlast0[13]),
        .I2(axis_tlast0[12]),
        .O(axis_tlast_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__0_i_4
       (.I0(axis_tlast0[11]),
        .I1(axis_tlast0[10]),
        .I2(axis_tlast0[9]),
        .O(axis_tlast_carry__0_i_4_n_0));
  CARRY4 axis_tlast_carry__1
       (.CI(axis_tlast_carry__0_n_0),
        .CO({NLW_axis_tlast_carry__1_CO_UNCONNECTED[3],axis_tlast,axis_tlast_carry__1_n_2,axis_tlast_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,axis_tlast_carry__1_i_1_n_0,axis_tlast_carry__1_i_2_n_0,axis_tlast_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tlast_carry__1_i_1
       (.I0(axis_tlast0[27]),
        .I1(axis_tlast0[28]),
        .O(axis_tlast_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__1_i_2
       (.I0(axis_tlast0[26]),
        .I1(axis_tlast0[25]),
        .I2(axis_tlast0[24]),
        .O(axis_tlast_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry__1_i_3
       (.I0(axis_tlast0[23]),
        .I1(axis_tlast0[22]),
        .I2(axis_tlast0[21]),
        .O(axis_tlast_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry_i_1
       (.I0(axis_tlast0[8]),
        .I1(axis_tlast0[7]),
        .I2(axis_tlast0[6]),
        .O(axis_tlast_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry_i_2
       (.I0(axis_tlast0[5]),
        .I1(axis_tlast0[4]),
        .I2(axis_tlast0[3]),
        .O(axis_tlast_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    axis_tlast_carry_i_3
       (.I0(axis_tlast0[2]),
        .I1(axis_tlast0[1]),
        .I2(axis_tlast0[0]),
        .O(axis_tlast_carry_i_3_n_0));
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
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(axis_tlast_delay),
        .R(axis_tlast_delay_delay_i_1_n_0));
  CARRY4 axis_tvalid0_carry
       (.CI(1'b0),
        .CO({axis_tvalid0_carry_n_0,axis_tvalid0_carry_n_1,axis_tvalid0_carry_n_2,axis_tvalid0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_axis_tvalid0_carry_O_UNCONNECTED[3:0]),
        .S(S));
  CARRY4 axis_tvalid0_carry__0
       (.CI(axis_tvalid0_carry_n_0),
        .CO({axis_tvalid0_carry__0_n_0,axis_tvalid0_carry__0_n_1,axis_tvalid0_carry__0_n_2,axis_tvalid0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(axis_tvalid0_carry__1_0),
        .O(NLW_axis_tvalid0_carry__0_O_UNCONNECTED[3:0]),
        .S(axis_tvalid0_carry__1_1));
  CARRY4 axis_tvalid0_carry__1
       (.CI(axis_tvalid0_carry__0_n_0),
        .CO({axis_tvalid0_carry__1_n_0,axis_tvalid0_carry__1_n_1,axis_tvalid0_carry__1_n_2,axis_tvalid0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(axis_tvalid0_carry__2_0),
        .O(NLW_axis_tvalid0_carry__1_O_UNCONNECTED[3:0]),
        .S(axis_tvalid0_carry__2_1));
  CARRY4 axis_tvalid0_carry__2
       (.CI(axis_tvalid0_carry__1_n_0),
        .CO({axis_tvalid0,axis_tvalid0_carry__2_n_1,axis_tvalid0_carry__2_n_2,axis_tvalid0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(axis_tvalid_delay_reg_0),
        .O(NLW_axis_tvalid0_carry__2_O_UNCONNECTED[3:0]),
        .S(axis_tvalid_delay_reg_1));
  FDRE axis_tvalid_delay_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid_delay),
        .Q(m00_axis_tvalid),
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axis_tvalid_delay_i_1
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(axis_tvalid0),
        .O(axis_tvalid));
  FDRE axis_tvalid_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tvalid),
        .Q(axis_tvalid_delay),
        .R(axis_tlast_delay_delay_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
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
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(axis_tlast_delay_delay_i_1_n_0));
  LUT5 #(
    .INIT(32'h4000FFFF)) 
    \stream_data_out[31]_i_1 
       (.I0(mst_exec_state[0]),
        .I1(mst_exec_state[1]),
        .I2(axis_tvalid0),
        .I3(m00_axis_tready),
        .I4(m00_axis_aresetn),
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \slv_reg2_reg[30]_0 ,
    \slv_reg2_reg[22]_0 ,
    \slv_reg2_reg[14]_0 ,
    S,
    \slv_reg0_reg[0]_0 ,
    Q,
    \slv_reg0_reg[31]_0 ,
    \slv_reg0_reg[28]_0 ,
    \slv_reg0_reg[24]_0 ,
    \slv_reg0_reg[20]_0 ,
    \slv_reg0_reg[16]_0 ,
    \slv_reg0_reg[12]_0 ,
    \slv_reg0_reg[8]_0 ,
    \slv_reg0_reg[4]_0 ,
    DI,
    \slv_reg2_reg[6]_0 ,
    \slv_reg2_reg[14]_1 ,
    \slv_reg2_reg[22]_1 ,
    \slv_reg2_reg[30]_1 ,
    \slv_reg2_reg[0]_0 ,
    \slv_reg2_reg[30]_2 ,
    \slv_reg1_reg[29]_0 ,
    addr,
    s00_axi_rdata,
    s00_axi_aclk,
    O,
    done_cal,
    \addr[31] ,
    s00_axi_aresetn,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_bready,
    s00_axi_arvalid,
    s00_axi_rready,
    s00_axi_awaddr,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_wstrb);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s00_axi_bvalid;
  output s00_axi_rvalid;
  output [3:0]\slv_reg2_reg[30]_0 ;
  output [3:0]\slv_reg2_reg[22]_0 ;
  output [3:0]\slv_reg2_reg[14]_0 ;
  output [3:0]S;
  output [0:0]\slv_reg0_reg[0]_0 ;
  output [30:0]Q;
  output [2:0]\slv_reg0_reg[31]_0 ;
  output [3:0]\slv_reg0_reg[28]_0 ;
  output [3:0]\slv_reg0_reg[24]_0 ;
  output [3:0]\slv_reg0_reg[20]_0 ;
  output [3:0]\slv_reg0_reg[16]_0 ;
  output [3:0]\slv_reg0_reg[12]_0 ;
  output [3:0]\slv_reg0_reg[8]_0 ;
  output [3:0]\slv_reg0_reg[4]_0 ;
  output [0:0]DI;
  output [3:0]\slv_reg2_reg[6]_0 ;
  output [3:0]\slv_reg2_reg[14]_1 ;
  output [3:0]\slv_reg2_reg[22]_1 ;
  output [3:0]\slv_reg2_reg[30]_1 ;
  output [0:0]\slv_reg2_reg[0]_0 ;
  output [28:0]\slv_reg2_reg[30]_2 ;
  output [29:0]\slv_reg1_reg[29]_0 ;
  output [29:0]addr;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [0:0]O;
  input done_cal;
  input [29:0]\addr[31] ;
  input s00_axi_aresetn;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_bready;
  input s00_axi_arvalid;
  input s00_axi_rready;
  input [2:0]s00_axi_awaddr;
  input [31:0]s00_axi_wdata;
  input [2:0]s00_axi_araddr;
  input [3:0]s00_axi_wstrb;

  wire [0:0]DI;
  wire [31:31]DMA_MM2S_BUFF_LEN;
  wire [31:30]DMA_MM2S_START_ADDR;
  wire [31:0]DMA_S2MM_BUFF_LEN;
  wire [31:0]DMA_S2MM_START_ADDR;
  wire [0:0]O;
  wire [30:0]Q;
  wire [3:0]S;
  wire [2:1]\S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0 ;
  wire [29:0]addr;
  wire [29:0]\addr[31] ;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire \axi_awaddr[4]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_awready_reg_0;
  wire axi_bvalid_i_1_n_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_3_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_3_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_3_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_3_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_3_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_3_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_3_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_3_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_3_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_3_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_3_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_3_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_3_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_3_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_3_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_3_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_3_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_3_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_3_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_3_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_3_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_3_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_3_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_3_n_0 ;
  wire \axi_rdata[31]_i_2_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_3_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_3_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_3_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_3_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_3_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_3_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_3_n_0 ;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire axis_tlast_carry__0_i_10_n_0;
  wire axis_tlast_carry__0_i_11_n_0;
  wire axis_tlast_carry__0_i_12_n_0;
  wire axis_tlast_carry__0_i_13_n_0;
  wire axis_tlast_carry__0_i_14_n_0;
  wire axis_tlast_carry__0_i_15_n_0;
  wire axis_tlast_carry__0_i_16_n_0;
  wire axis_tlast_carry__0_i_17_n_0;
  wire axis_tlast_carry__0_i_18_n_0;
  wire axis_tlast_carry__0_i_19_n_0;
  wire axis_tlast_carry__0_i_5_n_0;
  wire axis_tlast_carry__0_i_5_n_1;
  wire axis_tlast_carry__0_i_5_n_2;
  wire axis_tlast_carry__0_i_5_n_3;
  wire axis_tlast_carry__0_i_6_n_0;
  wire axis_tlast_carry__0_i_6_n_1;
  wire axis_tlast_carry__0_i_6_n_2;
  wire axis_tlast_carry__0_i_6_n_3;
  wire axis_tlast_carry__0_i_7_n_0;
  wire axis_tlast_carry__0_i_7_n_1;
  wire axis_tlast_carry__0_i_7_n_2;
  wire axis_tlast_carry__0_i_7_n_3;
  wire axis_tlast_carry__0_i_8_n_0;
  wire axis_tlast_carry__0_i_9_n_0;
  wire axis_tlast_carry__1_i_10_n_0;
  wire axis_tlast_carry__1_i_11_n_0;
  wire axis_tlast_carry__1_i_12_n_0;
  wire axis_tlast_carry__1_i_4_n_2;
  wire axis_tlast_carry__1_i_4_n_3;
  wire axis_tlast_carry__1_i_5_n_0;
  wire axis_tlast_carry__1_i_5_n_1;
  wire axis_tlast_carry__1_i_5_n_2;
  wire axis_tlast_carry__1_i_5_n_3;
  wire axis_tlast_carry__1_i_6_n_0;
  wire axis_tlast_carry__1_i_7_n_0;
  wire axis_tlast_carry__1_i_8_n_0;
  wire axis_tlast_carry__1_i_9_n_0;
  wire axis_tlast_carry_i_10_n_0;
  wire axis_tlast_carry_i_11_n_0;
  wire axis_tlast_carry_i_12_n_0;
  wire axis_tlast_carry_i_13_n_0;
  wire axis_tlast_carry_i_14_n_0;
  wire axis_tlast_carry_i_15_n_0;
  wire axis_tlast_carry_i_16_n_0;
  wire axis_tlast_carry_i_17_n_0;
  wire axis_tlast_carry_i_18_n_0;
  wire axis_tlast_carry_i_19_n_0;
  wire axis_tlast_carry_i_5_n_0;
  wire axis_tlast_carry_i_5_n_1;
  wire axis_tlast_carry_i_5_n_2;
  wire axis_tlast_carry_i_5_n_3;
  wire axis_tlast_carry_i_6_n_0;
  wire axis_tlast_carry_i_6_n_1;
  wire axis_tlast_carry_i_6_n_2;
  wire axis_tlast_carry_i_6_n_3;
  wire axis_tlast_carry_i_7_n_0;
  wire axis_tlast_carry_i_7_n_1;
  wire axis_tlast_carry_i_7_n_2;
  wire axis_tlast_carry_i_7_n_3;
  wire axis_tlast_carry_i_8_n_0;
  wire axis_tlast_carry_i_9_n_0;
  wire done_cal;
  wire [2:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [2:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [2:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [2:0]sel0;
  wire [0:0]\slv_reg0_reg[0]_0 ;
  wire [3:0]\slv_reg0_reg[12]_0 ;
  wire [3:0]\slv_reg0_reg[16]_0 ;
  wire [3:0]\slv_reg0_reg[20]_0 ;
  wire [3:0]\slv_reg0_reg[24]_0 ;
  wire [3:0]\slv_reg0_reg[28]_0 ;
  wire [2:0]\slv_reg0_reg[31]_0 ;
  wire [3:0]\slv_reg0_reg[4]_0 ;
  wire [3:0]\slv_reg0_reg[8]_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [29:0]\slv_reg1_reg[29]_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [0:0]\slv_reg2_reg[0]_0 ;
  wire [3:0]\slv_reg2_reg[14]_0 ;
  wire [3:0]\slv_reg2_reg[14]_1 ;
  wire [3:0]\slv_reg2_reg[22]_0 ;
  wire [3:0]\slv_reg2_reg[22]_1 ;
  wire [3:0]\slv_reg2_reg[30]_0 ;
  wire [3:0]\slv_reg2_reg[30]_1 ;
  wire [28:0]\slv_reg2_reg[30]_2 ;
  wire [3:0]\slv_reg2_reg[6]_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [31:0]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:0]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:0]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire [3:2]NLW_axis_tlast_carry__1_i_4_CO_UNCONNECTED;
  wire [3:3]NLW_axis_tlast_carry__1_i_4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[10]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[8]),
        .I1(done_cal),
        .I2(\addr[31] [8]),
        .O(addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[11]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[9]),
        .I1(done_cal),
        .I2(\addr[31] [9]),
        .O(addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[12]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[10]),
        .I1(done_cal),
        .I2(\addr[31] [10]),
        .O(addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[11]),
        .I1(done_cal),
        .I2(\addr[31] [11]),
        .O(addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[12]),
        .I1(done_cal),
        .I2(\addr[31] [12]),
        .O(addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[13]),
        .I1(done_cal),
        .I2(\addr[31] [13]),
        .O(addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[16]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[14]),
        .I1(done_cal),
        .I2(\addr[31] [14]),
        .O(addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[17]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[15]),
        .I1(done_cal),
        .I2(\addr[31] [15]),
        .O(addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[18]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[16]),
        .I1(done_cal),
        .I2(\addr[31] [16]),
        .O(addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[19]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[17]),
        .I1(done_cal),
        .I2(\addr[31] [17]),
        .O(addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[20]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[18]),
        .I1(done_cal),
        .I2(\addr[31] [18]),
        .O(addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[19]),
        .I1(done_cal),
        .I2(\addr[31] [19]),
        .O(addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[20]),
        .I1(done_cal),
        .I2(\addr[31] [20]),
        .O(addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[21]),
        .I1(done_cal),
        .I2(\addr[31] [21]),
        .O(addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[24]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[22]),
        .I1(done_cal),
        .I2(\addr[31] [22]),
        .O(addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[25]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[23]),
        .I1(done_cal),
        .I2(\addr[31] [23]),
        .O(addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[26]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[24]),
        .I1(done_cal),
        .I2(\addr[31] [24]),
        .O(addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[27]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[25]),
        .I1(done_cal),
        .I2(\addr[31] [25]),
        .O(addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[28]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[26]),
        .I1(done_cal),
        .I2(\addr[31] [26]),
        .O(addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[27]),
        .I1(done_cal),
        .I2(\addr[31] [27]),
        .O(addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[2]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[0]),
        .I1(done_cal),
        .I2(\addr[31] [0]),
        .O(addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[28]),
        .I1(done_cal),
        .I2(\addr[31] [28]),
        .O(addr[28]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[29]),
        .I1(done_cal),
        .I2(\addr[31] [29]),
        .O(addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[3]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[1]),
        .I1(done_cal),
        .I2(\addr[31] [1]),
        .O(addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[4]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[2]),
        .I1(done_cal),
        .I2(\addr[31] [2]),
        .O(addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[3]),
        .I1(done_cal),
        .I2(\addr[31] [3]),
        .O(addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[6]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[4]),
        .I1(done_cal),
        .I2(\addr[31] [4]),
        .O(addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[7]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[5]),
        .I1(done_cal),
        .I2(\addr[31] [5]),
        .O(addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[8]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[6]),
        .I1(done_cal),
        .I2(\addr[31] [6]),
        .O(addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[9]_INST_0 
       (.I0(DMA_S2MM_START_ADDR[7]),
        .I1(done_cal),
        .I2(\addr[31] [7]),
        .O(addr[7]));
  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(axi_awready_reg_0),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[0]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[1]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[4]_i_1 
       (.I0(s00_axi_araddr[2]),
        .I1(s00_axi_arvalid),
        .I2(axi_arready_reg_0),
        .I3(sel0[2]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(sel0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(sel0[2]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[4]_i_1 
       (.I0(s00_axi_awaddr[2]),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[2]),
        .O(\axi_awaddr[4]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[4]_i_1_n_0 ),
        .Q(p_0_in[2]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(axi_awready_reg_0),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_awready_reg_0),
        .I3(axi_wready_reg_0),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_2 
       (.I0(DMA_S2MM_START_ADDR[0]),
        .I1(DMA_S2MM_BUFF_LEN[0]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [0]),
        .I4(sel0[0]),
        .I5(Q[0]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_3 
       (.I0(slv_reg7[0]),
        .I1(slv_reg6[0]),
        .I2(sel0[1]),
        .I3(slv_reg5[0]),
        .I4(sel0[0]),
        .I5(slv_reg4[0]),
        .O(\axi_rdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_2 
       (.I0(DMA_S2MM_START_ADDR[10]),
        .I1(DMA_S2MM_BUFF_LEN[10]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [10]),
        .I4(sel0[0]),
        .I5(Q[10]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_3 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(slv_reg4[10]),
        .O(\axi_rdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_2 
       (.I0(DMA_S2MM_START_ADDR[11]),
        .I1(DMA_S2MM_BUFF_LEN[11]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [11]),
        .I4(sel0[0]),
        .I5(Q[11]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_3 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(slv_reg4[11]),
        .O(\axi_rdata[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_2 
       (.I0(DMA_S2MM_START_ADDR[12]),
        .I1(DMA_S2MM_BUFF_LEN[12]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [12]),
        .I4(sel0[0]),
        .I5(Q[12]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_3 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(slv_reg4[12]),
        .O(\axi_rdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_2 
       (.I0(DMA_S2MM_START_ADDR[13]),
        .I1(DMA_S2MM_BUFF_LEN[13]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [13]),
        .I4(sel0[0]),
        .I5(Q[13]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_3 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(slv_reg4[13]),
        .O(\axi_rdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_2 
       (.I0(DMA_S2MM_START_ADDR[14]),
        .I1(DMA_S2MM_BUFF_LEN[14]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [14]),
        .I4(sel0[0]),
        .I5(Q[14]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_3 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(slv_reg4[14]),
        .O(\axi_rdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_2 
       (.I0(DMA_S2MM_START_ADDR[15]),
        .I1(DMA_S2MM_BUFF_LEN[15]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [15]),
        .I4(sel0[0]),
        .I5(Q[15]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_3 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(slv_reg4[15]),
        .O(\axi_rdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_2 
       (.I0(DMA_S2MM_START_ADDR[16]),
        .I1(DMA_S2MM_BUFF_LEN[16]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [16]),
        .I4(sel0[0]),
        .I5(Q[16]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_3 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(slv_reg4[16]),
        .O(\axi_rdata[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_2 
       (.I0(DMA_S2MM_START_ADDR[17]),
        .I1(DMA_S2MM_BUFF_LEN[17]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [17]),
        .I4(sel0[0]),
        .I5(Q[17]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_3 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_2 
       (.I0(DMA_S2MM_START_ADDR[18]),
        .I1(DMA_S2MM_BUFF_LEN[18]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [18]),
        .I4(sel0[0]),
        .I5(Q[18]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_3 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_2 
       (.I0(DMA_S2MM_START_ADDR[19]),
        .I1(DMA_S2MM_BUFF_LEN[19]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [19]),
        .I4(sel0[0]),
        .I5(Q[19]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_3 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_2 
       (.I0(DMA_S2MM_START_ADDR[1]),
        .I1(DMA_S2MM_BUFF_LEN[1]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [1]),
        .I4(sel0[0]),
        .I5(Q[1]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_3 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(sel0[1]),
        .I3(slv_reg5[1]),
        .I4(sel0[0]),
        .I5(slv_reg4[1]),
        .O(\axi_rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_2 
       (.I0(DMA_S2MM_START_ADDR[20]),
        .I1(DMA_S2MM_BUFF_LEN[20]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [20]),
        .I4(sel0[0]),
        .I5(Q[20]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_3 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_2 
       (.I0(DMA_S2MM_START_ADDR[21]),
        .I1(DMA_S2MM_BUFF_LEN[21]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [21]),
        .I4(sel0[0]),
        .I5(Q[21]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_3 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_2 
       (.I0(DMA_S2MM_START_ADDR[22]),
        .I1(DMA_S2MM_BUFF_LEN[22]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [22]),
        .I4(sel0[0]),
        .I5(Q[22]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_3 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_2 
       (.I0(DMA_S2MM_START_ADDR[23]),
        .I1(DMA_S2MM_BUFF_LEN[23]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [23]),
        .I4(sel0[0]),
        .I5(Q[23]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_3 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_2 
       (.I0(DMA_S2MM_START_ADDR[24]),
        .I1(DMA_S2MM_BUFF_LEN[24]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [24]),
        .I4(sel0[0]),
        .I5(Q[24]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_3 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_2 
       (.I0(DMA_S2MM_START_ADDR[25]),
        .I1(DMA_S2MM_BUFF_LEN[25]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [25]),
        .I4(sel0[0]),
        .I5(Q[25]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_3 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_2 
       (.I0(DMA_S2MM_START_ADDR[26]),
        .I1(DMA_S2MM_BUFF_LEN[26]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [26]),
        .I4(sel0[0]),
        .I5(Q[26]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_3 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_2 
       (.I0(DMA_S2MM_START_ADDR[27]),
        .I1(DMA_S2MM_BUFF_LEN[27]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [27]),
        .I4(sel0[0]),
        .I5(Q[27]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_3 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_2 
       (.I0(DMA_S2MM_START_ADDR[28]),
        .I1(DMA_S2MM_BUFF_LEN[28]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [28]),
        .I4(sel0[0]),
        .I5(Q[28]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_3 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_2 
       (.I0(DMA_S2MM_START_ADDR[29]),
        .I1(DMA_S2MM_BUFF_LEN[29]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [29]),
        .I4(sel0[0]),
        .I5(Q[29]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_3 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_2 
       (.I0(DMA_S2MM_START_ADDR[2]),
        .I1(DMA_S2MM_BUFF_LEN[2]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [2]),
        .I4(sel0[0]),
        .I5(Q[2]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_3 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(sel0[1]),
        .I3(slv_reg5[2]),
        .I4(sel0[0]),
        .I5(slv_reg4[2]),
        .O(\axi_rdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_2 
       (.I0(DMA_S2MM_START_ADDR[30]),
        .I1(DMA_S2MM_BUFF_LEN[30]),
        .I2(sel0[1]),
        .I3(DMA_MM2S_START_ADDR[30]),
        .I4(sel0[0]),
        .I5(Q[30]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_3 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_2 
       (.I0(DMA_S2MM_START_ADDR[31]),
        .I1(DMA_S2MM_BUFF_LEN[31]),
        .I2(sel0[1]),
        .I3(DMA_MM2S_START_ADDR[31]),
        .I4(sel0[0]),
        .I5(DMA_MM2S_BUFF_LEN),
        .O(\axi_rdata[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_3 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_2 
       (.I0(DMA_S2MM_START_ADDR[3]),
        .I1(DMA_S2MM_BUFF_LEN[3]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [3]),
        .I4(sel0[0]),
        .I5(Q[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_3 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(sel0[1]),
        .I3(slv_reg5[3]),
        .I4(sel0[0]),
        .I5(slv_reg4[3]),
        .O(\axi_rdata[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_2 
       (.I0(DMA_S2MM_START_ADDR[4]),
        .I1(DMA_S2MM_BUFF_LEN[4]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [4]),
        .I4(sel0[0]),
        .I5(Q[4]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_3 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(sel0[1]),
        .I3(slv_reg5[4]),
        .I4(sel0[0]),
        .I5(slv_reg4[4]),
        .O(\axi_rdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_2 
       (.I0(DMA_S2MM_START_ADDR[5]),
        .I1(DMA_S2MM_BUFF_LEN[5]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [5]),
        .I4(sel0[0]),
        .I5(Q[5]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_3 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(sel0[1]),
        .I3(slv_reg5[5]),
        .I4(sel0[0]),
        .I5(slv_reg4[5]),
        .O(\axi_rdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_2 
       (.I0(DMA_S2MM_START_ADDR[6]),
        .I1(DMA_S2MM_BUFF_LEN[6]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [6]),
        .I4(sel0[0]),
        .I5(Q[6]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_3 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(sel0[1]),
        .I3(slv_reg5[6]),
        .I4(sel0[0]),
        .I5(slv_reg4[6]),
        .O(\axi_rdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_2 
       (.I0(DMA_S2MM_START_ADDR[7]),
        .I1(DMA_S2MM_BUFF_LEN[7]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [7]),
        .I4(sel0[0]),
        .I5(Q[7]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_3 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(sel0[1]),
        .I3(slv_reg5[7]),
        .I4(sel0[0]),
        .I5(slv_reg4[7]),
        .O(\axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_2 
       (.I0(DMA_S2MM_START_ADDR[8]),
        .I1(DMA_S2MM_BUFF_LEN[8]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [8]),
        .I4(sel0[0]),
        .I5(Q[8]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_3 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(sel0[1]),
        .I3(slv_reg5[8]),
        .I4(sel0[0]),
        .I5(slv_reg4[8]),
        .O(\axi_rdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_2 
       (.I0(DMA_S2MM_START_ADDR[9]),
        .I1(DMA_S2MM_BUFF_LEN[9]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[29]_0 [9]),
        .I4(sel0[0]),
        .I5(Q[9]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_3 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(sel0[1]),
        .I3(slv_reg5[9]),
        .I4(sel0[0]),
        .I5(slv_reg4[9]),
        .O(\axi_rdata[9]_i_3_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(\axi_rdata[0]_i_3_n_0 ),
        .O(reg_data_out[0]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(\axi_rdata[10]_i_3_n_0 ),
        .O(reg_data_out[10]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(\axi_rdata[11]_i_3_n_0 ),
        .O(reg_data_out[11]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(\axi_rdata[12]_i_3_n_0 ),
        .O(reg_data_out[12]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(\axi_rdata[13]_i_3_n_0 ),
        .O(reg_data_out[13]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(\axi_rdata[14]_i_3_n_0 ),
        .O(reg_data_out[14]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(\axi_rdata[15]_i_3_n_0 ),
        .O(reg_data_out[15]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(\axi_rdata[16]_i_3_n_0 ),
        .O(reg_data_out[16]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(\axi_rdata[17]_i_3_n_0 ),
        .O(reg_data_out[17]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(\axi_rdata[18]_i_3_n_0 ),
        .O(reg_data_out[18]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(\axi_rdata[19]_i_3_n_0 ),
        .O(reg_data_out[19]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(\axi_rdata[1]_i_3_n_0 ),
        .O(reg_data_out[1]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(\axi_rdata[20]_i_3_n_0 ),
        .O(reg_data_out[20]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(\axi_rdata[21]_i_3_n_0 ),
        .O(reg_data_out[21]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(\axi_rdata[22]_i_3_n_0 ),
        .O(reg_data_out[22]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(\axi_rdata[23]_i_3_n_0 ),
        .O(reg_data_out[23]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(\axi_rdata[24]_i_3_n_0 ),
        .O(reg_data_out[24]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(\axi_rdata[25]_i_3_n_0 ),
        .O(reg_data_out[25]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(\axi_rdata[26]_i_3_n_0 ),
        .O(reg_data_out[26]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(\axi_rdata[27]_i_3_n_0 ),
        .O(reg_data_out[27]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(\axi_rdata[28]_i_3_n_0 ),
        .O(reg_data_out[28]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(\axi_rdata[29]_i_3_n_0 ),
        .O(reg_data_out[29]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(\axi_rdata[2]_i_3_n_0 ),
        .O(reg_data_out[2]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(\axi_rdata[30]_i_3_n_0 ),
        .O(reg_data_out[30]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[31]_i_1 
       (.I0(\axi_rdata[31]_i_2_n_0 ),
        .I1(\axi_rdata[31]_i_3_n_0 ),
        .O(reg_data_out[31]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(\axi_rdata[3]_i_3_n_0 ),
        .O(reg_data_out[3]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(\axi_rdata[4]_i_3_n_0 ),
        .O(reg_data_out[4]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(\axi_rdata[5]_i_3_n_0 ),
        .O(reg_data_out[5]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(\axi_rdata[6]_i_3_n_0 ),
        .O(reg_data_out[6]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(\axi_rdata[7]_i_3_n_0 ),
        .O(reg_data_out[7]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(\axi_rdata[8]_i_3_n_0 ),
        .O(reg_data_out[8]),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  MUXF7 \axi_rdata_reg[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(\axi_rdata[9]_i_3_n_0 ),
        .O(reg_data_out[9]),
        .S(sel0[2]));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(axi_arready_reg_0),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(axi_wready_reg_0),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_10
       (.I0(DMA_S2MM_BUFF_LEN[22]),
        .O(axis_tlast_carry__0_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_11
       (.I0(DMA_S2MM_BUFF_LEN[21]),
        .O(axis_tlast_carry__0_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_12
       (.I0(DMA_S2MM_BUFF_LEN[20]),
        .O(axis_tlast_carry__0_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_13
       (.I0(DMA_S2MM_BUFF_LEN[19]),
        .O(axis_tlast_carry__0_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_14
       (.I0(DMA_S2MM_BUFF_LEN[18]),
        .O(axis_tlast_carry__0_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_15
       (.I0(DMA_S2MM_BUFF_LEN[17]),
        .O(axis_tlast_carry__0_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_16
       (.I0(DMA_S2MM_BUFF_LEN[16]),
        .O(axis_tlast_carry__0_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_17
       (.I0(DMA_S2MM_BUFF_LEN[15]),
        .O(axis_tlast_carry__0_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_18
       (.I0(DMA_S2MM_BUFF_LEN[14]),
        .O(axis_tlast_carry__0_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_19
       (.I0(DMA_S2MM_BUFF_LEN[13]),
        .O(axis_tlast_carry__0_i_19_n_0));
  CARRY4 axis_tlast_carry__0_i_5
       (.CI(axis_tlast_carry__0_i_6_n_0),
        .CO({axis_tlast_carry__0_i_5_n_0,axis_tlast_carry__0_i_5_n_1,axis_tlast_carry__0_i_5_n_2,axis_tlast_carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[24:21]),
        .O(\slv_reg2_reg[30]_2 [21:18]),
        .S({axis_tlast_carry__0_i_8_n_0,axis_tlast_carry__0_i_9_n_0,axis_tlast_carry__0_i_10_n_0,axis_tlast_carry__0_i_11_n_0}));
  CARRY4 axis_tlast_carry__0_i_6
       (.CI(axis_tlast_carry__0_i_7_n_0),
        .CO({axis_tlast_carry__0_i_6_n_0,axis_tlast_carry__0_i_6_n_1,axis_tlast_carry__0_i_6_n_2,axis_tlast_carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[20:17]),
        .O(\slv_reg2_reg[30]_2 [17:14]),
        .S({axis_tlast_carry__0_i_12_n_0,axis_tlast_carry__0_i_13_n_0,axis_tlast_carry__0_i_14_n_0,axis_tlast_carry__0_i_15_n_0}));
  CARRY4 axis_tlast_carry__0_i_7
       (.CI(axis_tlast_carry_i_5_n_0),
        .CO({axis_tlast_carry__0_i_7_n_0,axis_tlast_carry__0_i_7_n_1,axis_tlast_carry__0_i_7_n_2,axis_tlast_carry__0_i_7_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[16:13]),
        .O(\slv_reg2_reg[30]_2 [13:10]),
        .S({axis_tlast_carry__0_i_16_n_0,axis_tlast_carry__0_i_17_n_0,axis_tlast_carry__0_i_18_n_0,axis_tlast_carry__0_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_8
       (.I0(DMA_S2MM_BUFF_LEN[24]),
        .O(axis_tlast_carry__0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__0_i_9
       (.I0(DMA_S2MM_BUFF_LEN[23]),
        .O(axis_tlast_carry__0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_10
       (.I0(DMA_S2MM_BUFF_LEN[27]),
        .O(axis_tlast_carry__1_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_11
       (.I0(DMA_S2MM_BUFF_LEN[26]),
        .O(axis_tlast_carry__1_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_12
       (.I0(DMA_S2MM_BUFF_LEN[25]),
        .O(axis_tlast_carry__1_i_12_n_0));
  CARRY4 axis_tlast_carry__1_i_4
       (.CI(axis_tlast_carry__1_i_5_n_0),
        .CO({NLW_axis_tlast_carry__1_i_4_CO_UNCONNECTED[3:2],axis_tlast_carry__1_i_4_n_2,axis_tlast_carry__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,DMA_S2MM_BUFF_LEN[30:29]}),
        .O({NLW_axis_tlast_carry__1_i_4_O_UNCONNECTED[3],\slv_reg2_reg[30]_2 [28:26]}),
        .S({1'b0,axis_tlast_carry__1_i_6_n_0,axis_tlast_carry__1_i_7_n_0,axis_tlast_carry__1_i_8_n_0}));
  CARRY4 axis_tlast_carry__1_i_5
       (.CI(axis_tlast_carry__0_i_5_n_0),
        .CO({axis_tlast_carry__1_i_5_n_0,axis_tlast_carry__1_i_5_n_1,axis_tlast_carry__1_i_5_n_2,axis_tlast_carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[28:25]),
        .O(\slv_reg2_reg[30]_2 [25:22]),
        .S({axis_tlast_carry__1_i_9_n_0,axis_tlast_carry__1_i_10_n_0,axis_tlast_carry__1_i_11_n_0,axis_tlast_carry__1_i_12_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_6
       (.I0(DMA_S2MM_BUFF_LEN[31]),
        .O(axis_tlast_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_7
       (.I0(DMA_S2MM_BUFF_LEN[30]),
        .O(axis_tlast_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_8
       (.I0(DMA_S2MM_BUFF_LEN[29]),
        .O(axis_tlast_carry__1_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry__1_i_9
       (.I0(DMA_S2MM_BUFF_LEN[28]),
        .O(axis_tlast_carry__1_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_10
       (.I0(DMA_S2MM_BUFF_LEN[10]),
        .O(axis_tlast_carry_i_10_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_11
       (.I0(DMA_S2MM_BUFF_LEN[9]),
        .O(axis_tlast_carry_i_11_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_12
       (.I0(DMA_S2MM_BUFF_LEN[8]),
        .O(axis_tlast_carry_i_12_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_13
       (.I0(DMA_S2MM_BUFF_LEN[7]),
        .O(axis_tlast_carry_i_13_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_14
       (.I0(DMA_S2MM_BUFF_LEN[6]),
        .O(axis_tlast_carry_i_14_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_15
       (.I0(DMA_S2MM_BUFF_LEN[5]),
        .O(axis_tlast_carry_i_15_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_16
       (.I0(DMA_S2MM_BUFF_LEN[4]),
        .O(axis_tlast_carry_i_16_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_17
       (.I0(DMA_S2MM_BUFF_LEN[3]),
        .O(axis_tlast_carry_i_17_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_18
       (.I0(DMA_S2MM_BUFF_LEN[2]),
        .O(axis_tlast_carry_i_18_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_19
       (.I0(DMA_S2MM_BUFF_LEN[1]),
        .O(axis_tlast_carry_i_19_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    axis_tlast_carry_i_4
       (.I0(DMA_S2MM_BUFF_LEN[0]),
        .I1(\S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0 [2]),
        .I2(\S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0 [1]),
        .O(\slv_reg2_reg[0]_0 ));
  CARRY4 axis_tlast_carry_i_5
       (.CI(axis_tlast_carry_i_6_n_0),
        .CO({axis_tlast_carry_i_5_n_0,axis_tlast_carry_i_5_n_1,axis_tlast_carry_i_5_n_2,axis_tlast_carry_i_5_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[12:9]),
        .O(\slv_reg2_reg[30]_2 [9:6]),
        .S({axis_tlast_carry_i_8_n_0,axis_tlast_carry_i_9_n_0,axis_tlast_carry_i_10_n_0,axis_tlast_carry_i_11_n_0}));
  CARRY4 axis_tlast_carry_i_6
       (.CI(axis_tlast_carry_i_7_n_0),
        .CO({axis_tlast_carry_i_6_n_0,axis_tlast_carry_i_6_n_1,axis_tlast_carry_i_6_n_2,axis_tlast_carry_i_6_n_3}),
        .CYINIT(1'b0),
        .DI(DMA_S2MM_BUFF_LEN[8:5]),
        .O(\slv_reg2_reg[30]_2 [5:2]),
        .S({axis_tlast_carry_i_12_n_0,axis_tlast_carry_i_13_n_0,axis_tlast_carry_i_14_n_0,axis_tlast_carry_i_15_n_0}));
  CARRY4 axis_tlast_carry_i_7
       (.CI(1'b0),
        .CO({axis_tlast_carry_i_7_n_0,axis_tlast_carry_i_7_n_1,axis_tlast_carry_i_7_n_2,axis_tlast_carry_i_7_n_3}),
        .CYINIT(DMA_S2MM_BUFF_LEN[0]),
        .DI(DMA_S2MM_BUFF_LEN[4:1]),
        .O({\slv_reg2_reg[30]_2 [1:0],\S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0 }),
        .S({axis_tlast_carry_i_16_n_0,axis_tlast_carry_i_17_n_0,axis_tlast_carry_i_18_n_0,axis_tlast_carry_i_19_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_8
       (.I0(DMA_S2MM_BUFF_LEN[12]),
        .O(axis_tlast_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast_carry_i_9
       (.I0(DMA_S2MM_BUFF_LEN[11]),
        .O(axis_tlast_carry_i_9_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__0_i_1
       (.I0(DMA_S2MM_BUFF_LEN[14]),
        .I1(DMA_S2MM_BUFF_LEN[15]),
        .O(\slv_reg2_reg[14]_1 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__0_i_2
       (.I0(DMA_S2MM_BUFF_LEN[12]),
        .I1(DMA_S2MM_BUFF_LEN[13]),
        .O(\slv_reg2_reg[14]_1 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__0_i_3
       (.I0(DMA_S2MM_BUFF_LEN[10]),
        .I1(DMA_S2MM_BUFF_LEN[11]),
        .O(\slv_reg2_reg[14]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__0_i_4
       (.I0(DMA_S2MM_BUFF_LEN[8]),
        .I1(DMA_S2MM_BUFF_LEN[9]),
        .O(\slv_reg2_reg[14]_1 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__0_i_5
       (.I0(DMA_S2MM_BUFF_LEN[14]),
        .I1(DMA_S2MM_BUFF_LEN[15]),
        .O(\slv_reg2_reg[14]_0 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__0_i_6
       (.I0(DMA_S2MM_BUFF_LEN[12]),
        .I1(DMA_S2MM_BUFF_LEN[13]),
        .O(\slv_reg2_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__0_i_7
       (.I0(DMA_S2MM_BUFF_LEN[10]),
        .I1(DMA_S2MM_BUFF_LEN[11]),
        .O(\slv_reg2_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__0_i_8
       (.I0(DMA_S2MM_BUFF_LEN[8]),
        .I1(DMA_S2MM_BUFF_LEN[9]),
        .O(\slv_reg2_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__1_i_1
       (.I0(DMA_S2MM_BUFF_LEN[22]),
        .I1(DMA_S2MM_BUFF_LEN[23]),
        .O(\slv_reg2_reg[22]_1 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__1_i_2
       (.I0(DMA_S2MM_BUFF_LEN[20]),
        .I1(DMA_S2MM_BUFF_LEN[21]),
        .O(\slv_reg2_reg[22]_1 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__1_i_3
       (.I0(DMA_S2MM_BUFF_LEN[18]),
        .I1(DMA_S2MM_BUFF_LEN[19]),
        .O(\slv_reg2_reg[22]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__1_i_4
       (.I0(DMA_S2MM_BUFF_LEN[16]),
        .I1(DMA_S2MM_BUFF_LEN[17]),
        .O(\slv_reg2_reg[22]_1 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__1_i_5
       (.I0(DMA_S2MM_BUFF_LEN[22]),
        .I1(DMA_S2MM_BUFF_LEN[23]),
        .O(\slv_reg2_reg[22]_0 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__1_i_6
       (.I0(DMA_S2MM_BUFF_LEN[20]),
        .I1(DMA_S2MM_BUFF_LEN[21]),
        .O(\slv_reg2_reg[22]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__1_i_7
       (.I0(DMA_S2MM_BUFF_LEN[18]),
        .I1(DMA_S2MM_BUFF_LEN[19]),
        .O(\slv_reg2_reg[22]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__1_i_8
       (.I0(DMA_S2MM_BUFF_LEN[16]),
        .I1(DMA_S2MM_BUFF_LEN[17]),
        .O(\slv_reg2_reg[22]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__2_i_1
       (.I0(DMA_S2MM_BUFF_LEN[30]),
        .I1(DMA_S2MM_BUFF_LEN[31]),
        .O(\slv_reg2_reg[30]_1 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__2_i_2
       (.I0(DMA_S2MM_BUFF_LEN[28]),
        .I1(DMA_S2MM_BUFF_LEN[29]),
        .O(\slv_reg2_reg[30]_1 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__2_i_3
       (.I0(DMA_S2MM_BUFF_LEN[26]),
        .I1(DMA_S2MM_BUFF_LEN[27]),
        .O(\slv_reg2_reg[30]_1 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry__2_i_4
       (.I0(DMA_S2MM_BUFF_LEN[24]),
        .I1(DMA_S2MM_BUFF_LEN[25]),
        .O(\slv_reg2_reg[30]_1 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__2_i_5
       (.I0(DMA_S2MM_BUFF_LEN[30]),
        .I1(DMA_S2MM_BUFF_LEN[31]),
        .O(\slv_reg2_reg[30]_0 [3]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__2_i_6
       (.I0(DMA_S2MM_BUFF_LEN[28]),
        .I1(DMA_S2MM_BUFF_LEN[29]),
        .O(\slv_reg2_reg[30]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__2_i_7
       (.I0(DMA_S2MM_BUFF_LEN[26]),
        .I1(DMA_S2MM_BUFF_LEN[27]),
        .O(\slv_reg2_reg[30]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry__2_i_8
       (.I0(DMA_S2MM_BUFF_LEN[24]),
        .I1(DMA_S2MM_BUFF_LEN[25]),
        .O(\slv_reg2_reg[30]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry_i_1
       (.I0(DMA_S2MM_BUFF_LEN[6]),
        .I1(DMA_S2MM_BUFF_LEN[7]),
        .O(\slv_reg2_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry_i_2
       (.I0(DMA_S2MM_BUFF_LEN[4]),
        .I1(DMA_S2MM_BUFF_LEN[5]),
        .O(\slv_reg2_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry_i_3
       (.I0(DMA_S2MM_BUFF_LEN[2]),
        .I1(DMA_S2MM_BUFF_LEN[3]),
        .O(\slv_reg2_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    axis_tvalid0_carry_i_4
       (.I0(DMA_S2MM_BUFF_LEN[0]),
        .I1(DMA_S2MM_BUFF_LEN[1]),
        .O(\slv_reg2_reg[6]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry_i_5
       (.I0(DMA_S2MM_BUFF_LEN[6]),
        .I1(DMA_S2MM_BUFF_LEN[7]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry_i_6
       (.I0(DMA_S2MM_BUFF_LEN[4]),
        .I1(DMA_S2MM_BUFF_LEN[5]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry_i_7
       (.I0(DMA_S2MM_BUFF_LEN[2]),
        .I1(DMA_S2MM_BUFF_LEN[3]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h1)) 
    axis_tvalid0_carry_i_8
       (.I0(DMA_S2MM_BUFF_LEN[0]),
        .I1(DMA_S2MM_BUFF_LEN[1]),
        .O(S[0]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(p_1_in[15]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(p_1_in[23]));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(axi_awready_reg_0),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(p_1_in[7]));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(Q[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(Q[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(Q[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(Q[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(Q[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(Q[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(Q[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(Q[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(Q[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(Q[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(Q[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(Q[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(Q[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(Q[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(Q[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(Q[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(Q[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(Q[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(Q[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(Q[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(Q[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(Q[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(Q[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(Q[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(DMA_MM2S_BUFF_LEN),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(Q[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(Q[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(Q[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(Q[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(Q[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(Q[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(Q[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg1_reg[29]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg1_reg[29]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg1_reg[29]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg1_reg[29]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg1_reg[29]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg1_reg[29]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg1_reg[29]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg1_reg[29]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg1_reg[29]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg1_reg[29]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg1_reg[29]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg1_reg[29]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg1_reg[29]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg1_reg[29]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg1_reg[29]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg1_reg[29]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg1_reg[29]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg1_reg[29]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg1_reg[29]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg1_reg[29]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg1_reg[29]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg1_reg[29]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg1_reg[29]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(DMA_MM2S_START_ADDR[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(DMA_MM2S_START_ADDR[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg1_reg[29]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg1_reg[29]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg1_reg[29]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg1_reg[29]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg1_reg[29]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg1_reg[29]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg1_reg[29]_0 [9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DMA_S2MM_BUFF_LEN[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(DMA_S2MM_BUFF_LEN[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(DMA_S2MM_BUFF_LEN[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(DMA_S2MM_BUFF_LEN[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(DMA_S2MM_BUFF_LEN[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(DMA_S2MM_BUFF_LEN[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(DMA_S2MM_BUFF_LEN[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(DMA_S2MM_BUFF_LEN[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(DMA_S2MM_BUFF_LEN[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(DMA_S2MM_BUFF_LEN[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(DMA_S2MM_BUFF_LEN[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DMA_S2MM_BUFF_LEN[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(DMA_S2MM_BUFF_LEN[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(DMA_S2MM_BUFF_LEN[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(DMA_S2MM_BUFF_LEN[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(DMA_S2MM_BUFF_LEN[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(DMA_S2MM_BUFF_LEN[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(DMA_S2MM_BUFF_LEN[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(DMA_S2MM_BUFF_LEN[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(DMA_S2MM_BUFF_LEN[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(DMA_S2MM_BUFF_LEN[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(DMA_S2MM_BUFF_LEN[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DMA_S2MM_BUFF_LEN[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(DMA_S2MM_BUFF_LEN[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(DMA_S2MM_BUFF_LEN[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DMA_S2MM_BUFF_LEN[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DMA_S2MM_BUFF_LEN[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DMA_S2MM_BUFF_LEN[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DMA_S2MM_BUFF_LEN[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DMA_S2MM_BUFF_LEN[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(DMA_S2MM_BUFF_LEN[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(DMA_S2MM_BUFF_LEN[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(p_0_in[0]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(DMA_S2MM_START_ADDR[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(DMA_S2MM_START_ADDR[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(DMA_S2MM_START_ADDR[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(DMA_S2MM_START_ADDR[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(DMA_S2MM_START_ADDR[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(DMA_S2MM_START_ADDR[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(DMA_S2MM_START_ADDR[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(DMA_S2MM_START_ADDR[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(DMA_S2MM_START_ADDR[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(DMA_S2MM_START_ADDR[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(DMA_S2MM_START_ADDR[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(DMA_S2MM_START_ADDR[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(DMA_S2MM_START_ADDR[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(DMA_S2MM_START_ADDR[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(DMA_S2MM_START_ADDR[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(DMA_S2MM_START_ADDR[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(DMA_S2MM_START_ADDR[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(DMA_S2MM_START_ADDR[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(DMA_S2MM_START_ADDR[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(DMA_S2MM_START_ADDR[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(DMA_S2MM_START_ADDR[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(DMA_S2MM_START_ADDR[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(DMA_S2MM_START_ADDR[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(DMA_S2MM_START_ADDR[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(DMA_S2MM_START_ADDR[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(DMA_S2MM_START_ADDR[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(DMA_S2MM_START_ADDR[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(DMA_S2MM_START_ADDR[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(DMA_S2MM_START_ADDR[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(DMA_S2MM_START_ADDR[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(DMA_S2MM_START_ADDR[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(DMA_S2MM_START_ADDR[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \slv_reg4[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg4[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg4[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg4[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg4[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg4[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg4[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg4[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg4[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg4[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg4[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg4[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg4[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg4[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg4[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg4[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg4[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg4_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg4[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg5[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg5[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg5[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg5[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg5[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg5_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[1]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[2]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[3]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \slv_reg6[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[0]),
        .I2(p_0_in[1]),
        .I3(s00_axi_wstrb[0]),
        .I4(p_0_in[2]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg6[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg6_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[2]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[3]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg7[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[2]),
        .I4(s00_axi_wstrb[0]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg7_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(axi_arready_reg_0),
        .O(slv_reg_rden__0));
  LUT2 #(
    .INIT(4'hD)) 
    write_pointer1_carry_i_4
       (.I0(Q[0]),
        .I1(O),
        .O(DI));
  LUT2 #(
    .INIT(4'h2)) 
    write_pointer1_carry_i_8
       (.I0(Q[0]),
        .I1(O),
        .O(\slv_reg0_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__0_i_1
       (.I0(Q[8]),
        .O(\slv_reg0_reg[8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__0_i_2
       (.I0(Q[7]),
        .O(\slv_reg0_reg[8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__0_i_3
       (.I0(Q[6]),
        .O(\slv_reg0_reg[8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__0_i_4
       (.I0(Q[5]),
        .O(\slv_reg0_reg[8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__1_i_1
       (.I0(Q[12]),
        .O(\slv_reg0_reg[12]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__1_i_2
       (.I0(Q[11]),
        .O(\slv_reg0_reg[12]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__1_i_3
       (.I0(Q[10]),
        .O(\slv_reg0_reg[12]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__1_i_4
       (.I0(Q[9]),
        .O(\slv_reg0_reg[12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__2_i_1
       (.I0(Q[16]),
        .O(\slv_reg0_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__2_i_2
       (.I0(Q[15]),
        .O(\slv_reg0_reg[16]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__2_i_3
       (.I0(Q[14]),
        .O(\slv_reg0_reg[16]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__2_i_4
       (.I0(Q[13]),
        .O(\slv_reg0_reg[16]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__3_i_1
       (.I0(Q[20]),
        .O(\slv_reg0_reg[20]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__3_i_2
       (.I0(Q[19]),
        .O(\slv_reg0_reg[20]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__3_i_3
       (.I0(Q[18]),
        .O(\slv_reg0_reg[20]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__3_i_4
       (.I0(Q[17]),
        .O(\slv_reg0_reg[20]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__4_i_1
       (.I0(Q[24]),
        .O(\slv_reg0_reg[24]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__4_i_2
       (.I0(Q[23]),
        .O(\slv_reg0_reg[24]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__4_i_3
       (.I0(Q[22]),
        .O(\slv_reg0_reg[24]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__4_i_4
       (.I0(Q[21]),
        .O(\slv_reg0_reg[24]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__5_i_1
       (.I0(Q[28]),
        .O(\slv_reg0_reg[28]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__5_i_2
       (.I0(Q[27]),
        .O(\slv_reg0_reg[28]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__5_i_3
       (.I0(Q[26]),
        .O(\slv_reg0_reg[28]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__5_i_4
       (.I0(Q[25]),
        .O(\slv_reg0_reg[28]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__6_i_1
       (.I0(DMA_MM2S_BUFF_LEN),
        .O(\slv_reg0_reg[31]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__6_i_2
       (.I0(Q[30]),
        .O(\slv_reg0_reg[31]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry__6_i_3
       (.I0(Q[29]),
        .O(\slv_reg0_reg[31]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_1
       (.I0(Q[4]),
        .O(\slv_reg0_reg[4]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_2
       (.I0(Q[3]),
        .O(\slv_reg0_reg[4]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_3
       (.I0(Q[2]),
        .O(\slv_reg0_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_4
       (.I0(Q[1]),
        .O(\slv_reg0_reg[4]_0 [0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS
   (O,
    en,
    we_1,
    dout,
    \addr_to_bram_reg[29]_0 ,
    Q,
    S,
    write_pointer1_carry_i_2_0,
    write_pointer1_carry__0_i_4_0,
    write_pointer1_carry__0_i_2_0,
    write_pointer1_carry__1_i_4_0,
    write_pointer1_carry__1_i_2_0,
    write_pointer1_carry__2_i_4_0,
    write_pointer1_carry__2_i_2_0,
    DI,
    write_pointer1_carry__0_0,
    s00_axis_aclk,
    s00_axis_tlast,
    s00_axis_tvalid,
    m00_axis_tready,
    done_cal,
    s00_axis_aresetn,
    s00_axis_tdata,
    \addr_to_bram_reg[29]_1 );
  output [0:0]O;
  output en;
  output [0:0]we_1;
  output [31:0]dout;
  output [29:0]\addr_to_bram_reg[29]_0 ;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]write_pointer1_carry_i_2_0;
  input [3:0]write_pointer1_carry__0_i_4_0;
  input [3:0]write_pointer1_carry__0_i_2_0;
  input [3:0]write_pointer1_carry__1_i_4_0;
  input [3:0]write_pointer1_carry__1_i_2_0;
  input [3:0]write_pointer1_carry__2_i_4_0;
  input [2:0]write_pointer1_carry__2_i_2_0;
  input [0:0]DI;
  input [0:0]write_pointer1_carry__0_0;
  input s00_axis_aclk;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input m00_axis_tready;
  input done_cal;
  input s00_axis_aresetn;
  input [31:0]s00_axis_tdata;
  input [29:0]\addr_to_bram_reg[29]_1 ;

  wire [0:0]DI;
  wire [0:0]O;
  wire [30:0]Q;
  wire [3:0]S;
  wire [29:0]\addr_to_bram_reg[29]_0 ;
  wire [29:0]\addr_to_bram_reg[29]_1 ;
  wire \data_to_bram[31]_i_1_n_0 ;
  wire \data_to_bram[31]_i_2_n_0 ;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire fifo_wren;
  wire m00_axis_tready;
  wire mst_exec_state;
  wire mst_exec_state_i_1_n_0;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire \we[3]_i_1_n_0 ;
  wire \we[3]_i_2_n_0 ;
  wire [0:0]we_1;
  wire write_pointer1;
  wire [0:0]write_pointer1_carry__0_0;
  wire write_pointer1_carry__0_i_1_n_0;
  wire [3:0]write_pointer1_carry__0_i_2_0;
  wire write_pointer1_carry__0_i_2_n_0;
  wire write_pointer1_carry__0_i_3_n_0;
  wire [3:0]write_pointer1_carry__0_i_4_0;
  wire write_pointer1_carry__0_i_4_n_0;
  wire write_pointer1_carry__0_i_5_n_0;
  wire write_pointer1_carry__0_i_6_n_0;
  wire write_pointer1_carry__0_i_7_n_0;
  wire write_pointer1_carry__0_i_8_n_0;
  wire write_pointer1_carry__0_n_0;
  wire write_pointer1_carry__0_n_1;
  wire write_pointer1_carry__0_n_2;
  wire write_pointer1_carry__0_n_3;
  wire write_pointer1_carry__1_i_1_n_0;
  wire [3:0]write_pointer1_carry__1_i_2_0;
  wire write_pointer1_carry__1_i_2_n_0;
  wire write_pointer1_carry__1_i_3_n_0;
  wire [3:0]write_pointer1_carry__1_i_4_0;
  wire write_pointer1_carry__1_i_4_n_0;
  wire write_pointer1_carry__1_i_5_n_0;
  wire write_pointer1_carry__1_i_6_n_0;
  wire write_pointer1_carry__1_i_7_n_0;
  wire write_pointer1_carry__1_i_8_n_0;
  wire write_pointer1_carry__1_n_0;
  wire write_pointer1_carry__1_n_1;
  wire write_pointer1_carry__1_n_2;
  wire write_pointer1_carry__1_n_3;
  wire write_pointer1_carry__2_i_1_n_0;
  wire [2:0]write_pointer1_carry__2_i_2_0;
  wire write_pointer1_carry__2_i_2_n_0;
  wire write_pointer1_carry__2_i_3_n_0;
  wire [3:0]write_pointer1_carry__2_i_4_0;
  wire write_pointer1_carry__2_i_4_n_0;
  wire write_pointer1_carry__2_i_5_n_0;
  wire write_pointer1_carry__2_i_6_n_0;
  wire write_pointer1_carry__2_i_7_n_0;
  wire write_pointer1_carry__2_i_8_n_0;
  wire write_pointer1_carry__2_n_1;
  wire write_pointer1_carry__2_n_2;
  wire write_pointer1_carry__2_n_3;
  wire write_pointer1_carry_i_1_n_0;
  wire [3:0]write_pointer1_carry_i_2_0;
  wire write_pointer1_carry_i_2_n_0;
  wire write_pointer1_carry_i_3_n_0;
  wire write_pointer1_carry_i_5_n_0;
  wire write_pointer1_carry_i_6_n_0;
  wire write_pointer1_carry_i_7_n_0;
  wire write_pointer1_carry_n_0;
  wire write_pointer1_carry_n_1;
  wire write_pointer1_carry_n_2;
  wire write_pointer1_carry_n_3;
  wire [31:2]write_pointer2;
  wire write_pointer2_carry__0_n_0;
  wire write_pointer2_carry__0_n_1;
  wire write_pointer2_carry__0_n_2;
  wire write_pointer2_carry__0_n_3;
  wire write_pointer2_carry__1_n_0;
  wire write_pointer2_carry__1_n_1;
  wire write_pointer2_carry__1_n_2;
  wire write_pointer2_carry__1_n_3;
  wire write_pointer2_carry__2_n_0;
  wire write_pointer2_carry__2_n_1;
  wire write_pointer2_carry__2_n_2;
  wire write_pointer2_carry__2_n_3;
  wire write_pointer2_carry__3_n_0;
  wire write_pointer2_carry__3_n_1;
  wire write_pointer2_carry__3_n_2;
  wire write_pointer2_carry__3_n_3;
  wire write_pointer2_carry__4_n_0;
  wire write_pointer2_carry__4_n_1;
  wire write_pointer2_carry__4_n_2;
  wire write_pointer2_carry__4_n_3;
  wire write_pointer2_carry__5_n_0;
  wire write_pointer2_carry__5_n_1;
  wire write_pointer2_carry__5_n_2;
  wire write_pointer2_carry__5_n_3;
  wire write_pointer2_carry__6_n_2;
  wire write_pointer2_carry__6_n_3;
  wire write_pointer2_carry_n_0;
  wire write_pointer2_carry_n_1;
  wire write_pointer2_carry_n_2;
  wire write_pointer2_carry_n_3;
  wire writes_done;
  wire writes_done1_carry__0_i_1_n_0;
  wire writes_done1_carry__0_i_2_n_0;
  wire writes_done1_carry__0_i_3_n_0;
  wire writes_done1_carry__0_i_4_n_0;
  wire writes_done1_carry__0_n_0;
  wire writes_done1_carry__0_n_1;
  wire writes_done1_carry__0_n_2;
  wire writes_done1_carry__0_n_3;
  wire writes_done1_carry__1_i_1_n_0;
  wire writes_done1_carry__1_i_2_n_0;
  wire writes_done1_carry__1_i_3_n_0;
  wire writes_done1_carry__1_n_1;
  wire writes_done1_carry__1_n_2;
  wire writes_done1_carry__1_n_3;
  wire writes_done1_carry_i_1_n_0;
  wire writes_done1_carry_i_2_n_0;
  wire writes_done1_carry_i_3_n_0;
  wire writes_done1_carry_i_4_n_0;
  wire writes_done1_carry_n_0;
  wire writes_done1_carry_n_1;
  wire writes_done1_carry_n_2;
  wire writes_done1_carry_n_3;
  wire writes_done_i_1_n_0;
  wire [3:0]NLW_write_pointer1_carry_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_write_pointer2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_write_pointer2_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_writes_done1_carry_O_UNCONNECTED;
  wire [3:0]NLW_writes_done1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_writes_done1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_writes_done1_carry__1_O_UNCONNECTED;

  FDRE \addr_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [0]),
        .Q(\addr_to_bram_reg[29]_0 [0]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [10]),
        .Q(\addr_to_bram_reg[29]_0 [10]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [11]),
        .Q(\addr_to_bram_reg[29]_0 [11]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [12]),
        .Q(\addr_to_bram_reg[29]_0 [12]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [13]),
        .Q(\addr_to_bram_reg[29]_0 [13]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [14]),
        .Q(\addr_to_bram_reg[29]_0 [14]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [15]),
        .Q(\addr_to_bram_reg[29]_0 [15]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [16]),
        .Q(\addr_to_bram_reg[29]_0 [16]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [17]),
        .Q(\addr_to_bram_reg[29]_0 [17]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [18]),
        .Q(\addr_to_bram_reg[29]_0 [18]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [19]),
        .Q(\addr_to_bram_reg[29]_0 [19]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [1]),
        .Q(\addr_to_bram_reg[29]_0 [1]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [20]),
        .Q(\addr_to_bram_reg[29]_0 [20]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [21]),
        .Q(\addr_to_bram_reg[29]_0 [21]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [22]),
        .Q(\addr_to_bram_reg[29]_0 [22]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [23]),
        .Q(\addr_to_bram_reg[29]_0 [23]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [24]),
        .Q(\addr_to_bram_reg[29]_0 [24]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [25]),
        .Q(\addr_to_bram_reg[29]_0 [25]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [26]),
        .Q(\addr_to_bram_reg[29]_0 [26]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [27]),
        .Q(\addr_to_bram_reg[29]_0 [27]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [28]),
        .Q(\addr_to_bram_reg[29]_0 [28]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [29]),
        .Q(\addr_to_bram_reg[29]_0 [29]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [2]),
        .Q(\addr_to_bram_reg[29]_0 [2]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [3]),
        .Q(\addr_to_bram_reg[29]_0 [3]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [4]),
        .Q(\addr_to_bram_reg[29]_0 [4]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [5]),
        .Q(\addr_to_bram_reg[29]_0 [5]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [6]),
        .Q(\addr_to_bram_reg[29]_0 [6]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [7]),
        .Q(\addr_to_bram_reg[29]_0 [7]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [8]),
        .Q(\addr_to_bram_reg[29]_0 [8]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \addr_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(\addr_to_bram_reg[29]_1 [9]),
        .Q(\addr_to_bram_reg[29]_0 [9]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_to_bram[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(\data_to_bram[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \data_to_bram[31]_i_2 
       (.I0(mst_exec_state),
        .I1(write_pointer1),
        .I2(s00_axis_tvalid),
        .O(\data_to_bram[31]_i_2_n_0 ));
  FDRE \data_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[0]),
        .Q(dout[0]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[10]),
        .Q(dout[10]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[11]),
        .Q(dout[11]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[12]),
        .Q(dout[12]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[13]),
        .Q(dout[13]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[14]),
        .Q(dout[14]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[15]),
        .Q(dout[15]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[16]),
        .Q(dout[16]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[17]),
        .Q(dout[17]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[18]),
        .Q(dout[18]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[19]),
        .Q(dout[19]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[1]),
        .Q(dout[1]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[20]),
        .Q(dout[20]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[21]),
        .Q(dout[21]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[22]),
        .Q(dout[22]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[23]),
        .Q(dout[23]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[24]),
        .Q(dout[24]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[25]),
        .Q(dout[25]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[26]),
        .Q(dout[26]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[27]),
        .Q(dout[27]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[28]),
        .Q(dout[28]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[29]),
        .Q(dout[29]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[2]),
        .Q(dout[2]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[30]),
        .Q(dout[30]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[31]),
        .Q(dout[31]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[3]),
        .Q(dout[3]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[4]),
        .Q(dout[4]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[5]),
        .Q(dout[5]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[6]),
        .Q(dout[6]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[7]),
        .Q(dout[7]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[8]),
        .Q(dout[8]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  FDRE \data_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[9]),
        .Q(dout[9]),
        .R(\data_to_bram[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    en_INST_0
       (.I0(we_1),
        .I1(m00_axis_tready),
        .I2(done_cal),
        .O(en));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(s00_axis_tvalid),
        .I1(mst_exec_state),
        .I2(writes_done),
        .I3(s00_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(mst_exec_state),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEEE2E2E200000000)) 
    \we[3]_i_1 
       (.I0(we_1),
        .I1(write_pointer1),
        .I2(\we[3]_i_2_n_0 ),
        .I3(s00_axis_tvalid),
        .I4(mst_exec_state),
        .I5(s00_axis_aresetn),
        .O(\we[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \we[3]_i_2 
       (.I0(writes_done1_carry__1_n_1),
        .I1(s00_axis_tlast),
        .O(\we[3]_i_2_n_0 ));
  FDRE \we_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\we[3]_i_1_n_0 ),
        .Q(we_1),
        .R(1'b0));
  CARRY4 write_pointer1_carry
       (.CI(1'b0),
        .CO({write_pointer1_carry_n_0,write_pointer1_carry_n_1,write_pointer1_carry_n_2,write_pointer1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({write_pointer1_carry_i_1_n_0,write_pointer1_carry_i_2_n_0,write_pointer1_carry_i_3_n_0,DI}),
        .O(NLW_write_pointer1_carry_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry_i_5_n_0,write_pointer1_carry_i_6_n_0,write_pointer1_carry_i_7_n_0,write_pointer1_carry__0_0}));
  CARRY4 write_pointer1_carry__0
       (.CI(write_pointer1_carry_n_0),
        .CO({write_pointer1_carry__0_n_0,write_pointer1_carry__0_n_1,write_pointer1_carry__0_n_2,write_pointer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__0_i_1_n_0,write_pointer1_carry__0_i_2_n_0,write_pointer1_carry__0_i_3_n_0,write_pointer1_carry__0_i_4_n_0}),
        .O(NLW_write_pointer1_carry__0_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__0_i_5_n_0,write_pointer1_carry__0_i_6_n_0,write_pointer1_carry__0_i_7_n_0,write_pointer1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__0_i_1
       (.I0(write_pointer2[14]),
        .I1(write_pointer2[15]),
        .O(write_pointer1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__0_i_2
       (.I0(write_pointer2[12]),
        .I1(write_pointer2[13]),
        .O(write_pointer1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__0_i_3
       (.I0(write_pointer2[10]),
        .I1(write_pointer2[11]),
        .O(write_pointer1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__0_i_4
       (.I0(write_pointer2[8]),
        .I1(write_pointer2[9]),
        .O(write_pointer1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__0_i_5
       (.I0(write_pointer2[14]),
        .I1(write_pointer2[15]),
        .O(write_pointer1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__0_i_6
       (.I0(write_pointer2[12]),
        .I1(write_pointer2[13]),
        .O(write_pointer1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__0_i_7
       (.I0(write_pointer2[10]),
        .I1(write_pointer2[11]),
        .O(write_pointer1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__0_i_8
       (.I0(write_pointer2[8]),
        .I1(write_pointer2[9]),
        .O(write_pointer1_carry__0_i_8_n_0));
  CARRY4 write_pointer1_carry__1
       (.CI(write_pointer1_carry__0_n_0),
        .CO({write_pointer1_carry__1_n_0,write_pointer1_carry__1_n_1,write_pointer1_carry__1_n_2,write_pointer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__1_i_1_n_0,write_pointer1_carry__1_i_2_n_0,write_pointer1_carry__1_i_3_n_0,write_pointer1_carry__1_i_4_n_0}),
        .O(NLW_write_pointer1_carry__1_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__1_i_5_n_0,write_pointer1_carry__1_i_6_n_0,write_pointer1_carry__1_i_7_n_0,write_pointer1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__1_i_1
       (.I0(write_pointer2[22]),
        .I1(write_pointer2[23]),
        .O(write_pointer1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__1_i_2
       (.I0(write_pointer2[20]),
        .I1(write_pointer2[21]),
        .O(write_pointer1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__1_i_3
       (.I0(write_pointer2[18]),
        .I1(write_pointer2[19]),
        .O(write_pointer1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__1_i_4
       (.I0(write_pointer2[16]),
        .I1(write_pointer2[17]),
        .O(write_pointer1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__1_i_5
       (.I0(write_pointer2[22]),
        .I1(write_pointer2[23]),
        .O(write_pointer1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__1_i_6
       (.I0(write_pointer2[20]),
        .I1(write_pointer2[21]),
        .O(write_pointer1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__1_i_7
       (.I0(write_pointer2[18]),
        .I1(write_pointer2[19]),
        .O(write_pointer1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__1_i_8
       (.I0(write_pointer2[16]),
        .I1(write_pointer2[17]),
        .O(write_pointer1_carry__1_i_8_n_0));
  CARRY4 write_pointer1_carry__2
       (.CI(write_pointer1_carry__1_n_0),
        .CO({write_pointer1,write_pointer1_carry__2_n_1,write_pointer1_carry__2_n_2,write_pointer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__2_i_1_n_0,write_pointer1_carry__2_i_2_n_0,write_pointer1_carry__2_i_3_n_0,write_pointer1_carry__2_i_4_n_0}),
        .O(NLW_write_pointer1_carry__2_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__2_i_5_n_0,write_pointer1_carry__2_i_6_n_0,write_pointer1_carry__2_i_7_n_0,write_pointer1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__2_i_1
       (.I0(write_pointer2[30]),
        .I1(write_pointer2[31]),
        .O(write_pointer1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__2_i_2
       (.I0(write_pointer2[28]),
        .I1(write_pointer2[29]),
        .O(write_pointer1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__2_i_3
       (.I0(write_pointer2[26]),
        .I1(write_pointer2[27]),
        .O(write_pointer1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry__2_i_4
       (.I0(write_pointer2[24]),
        .I1(write_pointer2[25]),
        .O(write_pointer1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__2_i_5
       (.I0(write_pointer2[30]),
        .I1(write_pointer2[31]),
        .O(write_pointer1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__2_i_6
       (.I0(write_pointer2[28]),
        .I1(write_pointer2[29]),
        .O(write_pointer1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__2_i_7
       (.I0(write_pointer2[26]),
        .I1(write_pointer2[27]),
        .O(write_pointer1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry__2_i_8
       (.I0(write_pointer2[24]),
        .I1(write_pointer2[25]),
        .O(write_pointer1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry_i_1
       (.I0(write_pointer2[6]),
        .I1(write_pointer2[7]),
        .O(write_pointer1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry_i_2
       (.I0(write_pointer2[4]),
        .I1(write_pointer2[5]),
        .O(write_pointer1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    write_pointer1_carry_i_3
       (.I0(write_pointer2[2]),
        .I1(write_pointer2[3]),
        .O(write_pointer1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry_i_5
       (.I0(write_pointer2[6]),
        .I1(write_pointer2[7]),
        .O(write_pointer1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry_i_6
       (.I0(write_pointer2[4]),
        .I1(write_pointer2[5]),
        .O(write_pointer1_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    write_pointer1_carry_i_7
       (.I0(write_pointer2[2]),
        .I1(write_pointer2[3]),
        .O(write_pointer1_carry_i_7_n_0));
  CARRY4 write_pointer2_carry
       (.CI(1'b0),
        .CO({write_pointer2_carry_n_0,write_pointer2_carry_n_1,write_pointer2_carry_n_2,write_pointer2_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O({write_pointer2[4:2],O}),
        .S(S));
  CARRY4 write_pointer2_carry__0
       (.CI(write_pointer2_carry_n_0),
        .CO({write_pointer2_carry__0_n_0,write_pointer2_carry__0_n_1,write_pointer2_carry__0_n_2,write_pointer2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(write_pointer2[8:5]),
        .S(write_pointer1_carry_i_2_0));
  CARRY4 write_pointer2_carry__1
       (.CI(write_pointer2_carry__0_n_0),
        .CO({write_pointer2_carry__1_n_0,write_pointer2_carry__1_n_1,write_pointer2_carry__1_n_2,write_pointer2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(write_pointer2[12:9]),
        .S(write_pointer1_carry__0_i_4_0));
  CARRY4 write_pointer2_carry__2
       (.CI(write_pointer2_carry__1_n_0),
        .CO({write_pointer2_carry__2_n_0,write_pointer2_carry__2_n_1,write_pointer2_carry__2_n_2,write_pointer2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(write_pointer2[16:13]),
        .S(write_pointer1_carry__0_i_2_0));
  CARRY4 write_pointer2_carry__3
       (.CI(write_pointer2_carry__2_n_0),
        .CO({write_pointer2_carry__3_n_0,write_pointer2_carry__3_n_1,write_pointer2_carry__3_n_2,write_pointer2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(write_pointer2[20:17]),
        .S(write_pointer1_carry__1_i_4_0));
  CARRY4 write_pointer2_carry__4
       (.CI(write_pointer2_carry__3_n_0),
        .CO({write_pointer2_carry__4_n_0,write_pointer2_carry__4_n_1,write_pointer2_carry__4_n_2,write_pointer2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(write_pointer2[24:21]),
        .S(write_pointer1_carry__1_i_2_0));
  CARRY4 write_pointer2_carry__5
       (.CI(write_pointer2_carry__4_n_0),
        .CO({write_pointer2_carry__5_n_0,write_pointer2_carry__5_n_1,write_pointer2_carry__5_n_2,write_pointer2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(write_pointer2[28:25]),
        .S(write_pointer1_carry__2_i_4_0));
  CARRY4 write_pointer2_carry__6
       (.CI(write_pointer2_carry__5_n_0),
        .CO({NLW_write_pointer2_carry__6_CO_UNCONNECTED[3:2],write_pointer2_carry__6_n_2,write_pointer2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_write_pointer2_carry__6_O_UNCONNECTED[3],write_pointer2[31:29]}),
        .S({1'b0,write_pointer1_carry__2_i_2_0}));
  CARRY4 writes_done1_carry
       (.CI(1'b0),
        .CO({writes_done1_carry_n_0,writes_done1_carry_n_1,writes_done1_carry_n_2,writes_done1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done1_carry_O_UNCONNECTED[3:0]),
        .S({writes_done1_carry_i_1_n_0,writes_done1_carry_i_2_n_0,writes_done1_carry_i_3_n_0,writes_done1_carry_i_4_n_0}));
  CARRY4 writes_done1_carry__0
       (.CI(writes_done1_carry_n_0),
        .CO({writes_done1_carry__0_n_0,writes_done1_carry__0_n_1,writes_done1_carry__0_n_2,writes_done1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done1_carry__0_O_UNCONNECTED[3:0]),
        .S({writes_done1_carry__0_i_1_n_0,writes_done1_carry__0_i_2_n_0,writes_done1_carry__0_i_3_n_0,writes_done1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__0_i_1
       (.I0(write_pointer2[23]),
        .I1(write_pointer2[22]),
        .I2(write_pointer2[21]),
        .O(writes_done1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__0_i_2
       (.I0(write_pointer2[20]),
        .I1(write_pointer2[19]),
        .I2(write_pointer2[18]),
        .O(writes_done1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__0_i_3
       (.I0(write_pointer2[17]),
        .I1(write_pointer2[16]),
        .I2(write_pointer2[15]),
        .O(writes_done1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__0_i_4
       (.I0(write_pointer2[14]),
        .I1(write_pointer2[13]),
        .I2(write_pointer2[12]),
        .O(writes_done1_carry__0_i_4_n_0));
  CARRY4 writes_done1_carry__1
       (.CI(writes_done1_carry__0_n_0),
        .CO({NLW_writes_done1_carry__1_CO_UNCONNECTED[3],writes_done1_carry__1_n_1,writes_done1_carry__1_n_2,writes_done1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_writes_done1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,writes_done1_carry__1_i_1_n_0,writes_done1_carry__1_i_2_n_0,writes_done1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    writes_done1_carry__1_i_1
       (.I0(write_pointer2[30]),
        .I1(write_pointer2[31]),
        .O(writes_done1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__1_i_2
       (.I0(write_pointer2[29]),
        .I1(write_pointer2[28]),
        .I2(write_pointer2[27]),
        .O(writes_done1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry__1_i_3
       (.I0(write_pointer2[26]),
        .I1(write_pointer2[25]),
        .I2(write_pointer2[24]),
        .O(writes_done1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry_i_1
       (.I0(write_pointer2[11]),
        .I1(write_pointer2[10]),
        .I2(write_pointer2[9]),
        .O(writes_done1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry_i_2
       (.I0(write_pointer2[8]),
        .I1(write_pointer2[7]),
        .I2(write_pointer2[6]),
        .O(writes_done1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    writes_done1_carry_i_3
       (.I0(write_pointer2[5]),
        .I1(write_pointer2[4]),
        .I2(write_pointer2[3]),
        .O(writes_done1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    writes_done1_carry_i_4
       (.I0(Q[0]),
        .I1(write_pointer2[2]),
        .I2(O),
        .O(writes_done1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFCFEAAAA00000000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(s00_axis_tlast),
        .I2(writes_done1_carry__1_n_1),
        .I3(fifo_wren),
        .I4(write_pointer1),
        .I5(s00_axis_aresetn),
        .O(writes_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h80)) 
    writes_done_i_2
       (.I0(s00_axis_tvalid),
        .I1(write_pointer1),
        .I2(mst_exec_state),
        .O(fifo_wren));
  FDRE writes_done_reg
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "SOC_DMA_V2_S2MMV2_0_0,S2MMV2_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "S2MMV2_v1_0,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
    s00_axis_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [4:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [4:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 20000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 20000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:2]\^addr ;
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
  wire s00_axi_aclk;
  wire [4:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [4:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire [3:3]\^we_1 ;

  assign addr[31:2] = \^addr [31:2];
  assign addr[1] = \<const0> ;
  assign addr[0] = \<const0> ;
  assign m00_axis_tstrb[3] = \<const1> ;
  assign m00_axis_tstrb[2] = \<const1> ;
  assign m00_axis_tstrb[1] = \<const1> ;
  assign m00_axis_tstrb[0] = \<const1> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  assign s00_axis_tready = \<const1> ;
  assign we_1[3] = \^we_1 [3];
  assign we_1[2] = \^we_1 [3];
  assign we_1[1] = \^we_1 [3];
  assign we_1[0] = \^we_1 [3];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0 inst
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
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[4:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[4:2]),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .we_1(\^we_1 ));
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
