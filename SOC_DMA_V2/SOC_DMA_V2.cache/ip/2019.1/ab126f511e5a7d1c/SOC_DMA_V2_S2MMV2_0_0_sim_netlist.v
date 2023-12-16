// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec 15 12:26:12 2023
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
    m00_axis_tvalid,
    m00_axis_tdata,
    m00_axis_tlast,
    \we_reg[3] ,
    en,
    addr,
    s00_axi_bvalid,
    m00_axis_tready,
    s00_axis_aresetn,
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
    m00_axis_aclk,
    s00_axis_tvalid,
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
  output m00_axis_tvalid;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output \we_reg[3] ;
  output en;
  output [29:0]addr;
  output s00_axi_bvalid;
  input m00_axis_tready;
  input s00_axis_aresetn;
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
  input m00_axis_aclk;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input done_cal;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [30:0]DMA_MM2S_BUFF_LEN;
  wire [29:0]DMA_MM2S_START_ADDR;
  wire [30:0]DMA_S2MM_BUFF_LEN;
  wire [29:0]DMA_S2MM_START_ADDR;
  wire S2MMV2_v1_0_S00_AXI_inst_n_102;
  wire S2MMV2_v1_0_S00_AXI_inst_n_103;
  wire S2MMV2_v1_0_S00_AXI_inst_n_104;
  wire S2MMV2_v1_0_S00_AXI_inst_n_105;
  wire S2MMV2_v1_0_S00_AXI_inst_n_106;
  wire S2MMV2_v1_0_S00_AXI_inst_n_107;
  wire S2MMV2_v1_0_S00_AXI_inst_n_108;
  wire S2MMV2_v1_0_S00_AXI_inst_n_109;
  wire S2MMV2_v1_0_S00_AXI_inst_n_110;
  wire S2MMV2_v1_0_S00_AXI_inst_n_111;
  wire S2MMV2_v1_0_S00_AXI_inst_n_112;
  wire S2MMV2_v1_0_S00_AXI_inst_n_113;
  wire S2MMV2_v1_0_S00_AXI_inst_n_114;
  wire S2MMV2_v1_0_S00_AXI_inst_n_115;
  wire S2MMV2_v1_0_S00_AXI_inst_n_116;
  wire S2MMV2_v1_0_S00_AXI_inst_n_117;
  wire S2MMV2_v1_0_S00_AXI_inst_n_118;
  wire S2MMV2_v1_0_S00_AXI_inst_n_119;
  wire S2MMV2_v1_0_S00_AXI_inst_n_120;
  wire S2MMV2_v1_0_S00_AXI_inst_n_121;
  wire S2MMV2_v1_0_S00_AXI_inst_n_122;
  wire S2MMV2_v1_0_S00_AXI_inst_n_123;
  wire S2MMV2_v1_0_S00_AXI_inst_n_124;
  wire S2MMV2_v1_0_S00_AXI_inst_n_125;
  wire S2MMV2_v1_0_S00_AXI_inst_n_126;
  wire S2MMV2_v1_0_S00_AXI_inst_n_127;
  wire S2MMV2_v1_0_S00_AXI_inst_n_128;
  wire S2MMV2_v1_0_S00_AXI_inst_n_129;
  wire S2MMV2_v1_0_S00_AXI_inst_n_130;
  wire S2MMV2_v1_0_S00_AXI_inst_n_131;
  wire S2MMV2_v1_0_S00_AXI_inst_n_132;
  wire S2MMV2_v1_0_S00_AXI_inst_n_133;
  wire S2MMV2_v1_0_S00_AXI_inst_n_134;
  wire S2MMV2_v1_0_S00_AXI_inst_n_135;
  wire S2MMV2_v1_0_S00_AXI_inst_n_136;
  wire S2MMV2_v1_0_S00_AXI_inst_n_137;
  wire S2MMV2_v1_0_S00_AXI_inst_n_138;
  wire S2MMV2_v1_0_S00_AXI_inst_n_139;
  wire S2MMV2_v1_0_S00_AXI_inst_n_140;
  wire S2MMV2_v1_0_S00_AXI_inst_n_141;
  wire S2MMV2_v1_0_S00_AXI_inst_n_142;
  wire S2MMV2_v1_0_S00_AXI_inst_n_143;
  wire S2MMV2_v1_0_S00_AXI_inst_n_144;
  wire S2MMV2_v1_0_S00_AXI_inst_n_145;
  wire S2MMV2_v1_0_S00_AXI_inst_n_146;
  wire S2MMV2_v1_0_S00_AXI_inst_n_147;
  wire S2MMV2_v1_0_S00_AXI_inst_n_148;
  wire S2MMV2_v1_0_S00_AXI_inst_n_149;
  wire S2MMV2_v1_0_S00_AXI_inst_n_150;
  wire S2MMV2_v1_0_S00_AXI_inst_n_151;
  wire S2MMV2_v1_0_S00_AXI_inst_n_152;
  wire S2MMV2_v1_0_S00_AXI_inst_n_153;
  wire S2MMV2_v1_0_S00_AXI_inst_n_154;
  wire S2MMV2_v1_0_S00_AXI_inst_n_155;
  wire S2MMV2_v1_0_S00_AXI_inst_n_156;
  wire S2MMV2_v1_0_S00_AXI_inst_n_157;
  wire S2MMV2_v1_0_S00_AXI_inst_n_158;
  wire S2MMV2_v1_0_S00_AXI_inst_n_159;
  wire S2MMV2_v1_0_S00_AXI_inst_n_160;
  wire S2MMV2_v1_0_S00_AXI_inst_n_39;
  wire S2MMV2_v1_0_S00_AXI_inst_n_40;
  wire S2MMV2_v1_0_S00_AXI_inst_n_41;
  wire S2MMV2_v1_0_S00_AXI_inst_n_42;
  wire S2MMV2_v1_0_S00_AXI_inst_n_43;
  wire S2MMV2_v1_0_S00_AXI_inst_n_44;
  wire S2MMV2_v1_0_S00_AXI_inst_n_45;
  wire S2MMV2_v1_0_S00_AXI_inst_n_46;
  wire S2MMV2_v1_0_S00_AXI_inst_n_47;
  wire S2MMV2_v1_0_S00_AXI_inst_n_48;
  wire S2MMV2_v1_0_S00_AXI_inst_n_49;
  wire S2MMV2_v1_0_S00_AXI_inst_n_5;
  wire S2MMV2_v1_0_S00_AXI_inst_n_50;
  wire S2MMV2_v1_0_S00_AXI_inst_n_51;
  wire S2MMV2_v1_0_S00_AXI_inst_n_52;
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
  wire [29:0]addr;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire [29:0]fifo_addr;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [31:0]read_pointer_reg;
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
  wire \we_reg[3] ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS S2MMV2_v1_0_M00_AXIS_inst
       (.DI({S2MMV2_v1_0_S00_AXI_inst_n_102,S2MMV2_v1_0_S00_AXI_inst_n_103,S2MMV2_v1_0_S00_AXI_inst_n_104,S2MMV2_v1_0_S00_AXI_inst_n_105}),
        .Q(DMA_S2MM_BUFF_LEN),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_67,S2MMV2_v1_0_S00_AXI_inst_n_68,S2MMV2_v1_0_S00_AXI_inst_n_69,S2MMV2_v1_0_S00_AXI_inst_n_70}),
        .axis_tvalid0_carry__1_0({S2MMV2_v1_0_S00_AXI_inst_n_110,S2MMV2_v1_0_S00_AXI_inst_n_111,S2MMV2_v1_0_S00_AXI_inst_n_112,S2MMV2_v1_0_S00_AXI_inst_n_113}),
        .axis_tvalid0_carry__1_1({S2MMV2_v1_0_S00_AXI_inst_n_106,S2MMV2_v1_0_S00_AXI_inst_n_107,S2MMV2_v1_0_S00_AXI_inst_n_108,S2MMV2_v1_0_S00_AXI_inst_n_109}),
        .axis_tvalid0_carry__2_0({S2MMV2_v1_0_S00_AXI_inst_n_118,S2MMV2_v1_0_S00_AXI_inst_n_119,S2MMV2_v1_0_S00_AXI_inst_n_120,S2MMV2_v1_0_S00_AXI_inst_n_121}),
        .axis_tvalid0_carry__2_1({S2MMV2_v1_0_S00_AXI_inst_n_114,S2MMV2_v1_0_S00_AXI_inst_n_115,S2MMV2_v1_0_S00_AXI_inst_n_116,S2MMV2_v1_0_S00_AXI_inst_n_117}),
        .axis_tvalid_delay_reg_0({S2MMV2_v1_0_S00_AXI_inst_n_126,S2MMV2_v1_0_S00_AXI_inst_n_127,S2MMV2_v1_0_S00_AXI_inst_n_128,S2MMV2_v1_0_S00_AXI_inst_n_129}),
        .axis_tvalid_delay_reg_1({S2MMV2_v1_0_S00_AXI_inst_n_122,S2MMV2_v1_0_S00_AXI_inst_n_123,S2MMV2_v1_0_S00_AXI_inst_n_124,S2MMV2_v1_0_S00_AXI_inst_n_125}),
        .fifo_addr(fifo_addr),
        .fifo_addr_carry__6_0(DMA_S2MM_START_ADDR),
        .m00_axis_aclk(m00_axis_aclk),
        .m00_axis_aresetn(m00_axis_aresetn),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .out(read_pointer_reg),
        .read_pointer1_carry__0_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_145,S2MMV2_v1_0_S00_AXI_inst_n_146,S2MMV2_v1_0_S00_AXI_inst_n_147,S2MMV2_v1_0_S00_AXI_inst_n_148}),
        .read_pointer1_carry__0_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_149,S2MMV2_v1_0_S00_AXI_inst_n_150,S2MMV2_v1_0_S00_AXI_inst_n_151,S2MMV2_v1_0_S00_AXI_inst_n_152}),
        .read_pointer1_carry__1_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_137,S2MMV2_v1_0_S00_AXI_inst_n_138,S2MMV2_v1_0_S00_AXI_inst_n_139,S2MMV2_v1_0_S00_AXI_inst_n_140}),
        .read_pointer1_carry__1_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_141,S2MMV2_v1_0_S00_AXI_inst_n_142,S2MMV2_v1_0_S00_AXI_inst_n_143,S2MMV2_v1_0_S00_AXI_inst_n_144}),
        .read_pointer1_carry__2_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_130,S2MMV2_v1_0_S00_AXI_inst_n_131,S2MMV2_v1_0_S00_AXI_inst_n_132}),
        .read_pointer1_carry__2_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_133,S2MMV2_v1_0_S00_AXI_inst_n_134,S2MMV2_v1_0_S00_AXI_inst_n_135,S2MMV2_v1_0_S00_AXI_inst_n_136}),
        .read_pointer1_carry_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_153,S2MMV2_v1_0_S00_AXI_inst_n_154,S2MMV2_v1_0_S00_AXI_inst_n_155,S2MMV2_v1_0_S00_AXI_inst_n_156}),
        .read_pointer1_carry_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_157,S2MMV2_v1_0_S00_AXI_inst_n_158,S2MMV2_v1_0_S00_AXI_inst_n_159,S2MMV2_v1_0_S00_AXI_inst_n_160}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS S2MMV2_v1_0_S00_AXIS_inst
       (.Q(DMA_MM2S_BUFF_LEN),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_63,S2MMV2_v1_0_S00_AXI_inst_n_64,S2MMV2_v1_0_S00_AXI_inst_n_65,S2MMV2_v1_0_S00_AXI_inst_n_66}),
        .addr(addr),
        .\addr_to_bram_reg[29]_0 (DMA_MM2S_START_ADDR),
        .done_cal(done_cal),
        .dout(dout),
        .en(en),
        .fifo_addr(fifo_addr),
        .m00_axis_tready(m00_axis_tready),
        .s00_axis_aclk(s00_axis_aclk),
        .s00_axis_aresetn(s00_axis_aresetn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tvalid(s00_axis_tvalid),
        .\we_reg[3]_0 (\we_reg[3] ),
        .write_pointer1_carry__0_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_51,S2MMV2_v1_0_S00_AXI_inst_n_52,S2MMV2_v1_0_S00_AXI_inst_n_53,S2MMV2_v1_0_S00_AXI_inst_n_54}),
        .write_pointer1_carry__0_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_55,S2MMV2_v1_0_S00_AXI_inst_n_56,S2MMV2_v1_0_S00_AXI_inst_n_57,S2MMV2_v1_0_S00_AXI_inst_n_58}),
        .write_pointer1_carry__1_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_43,S2MMV2_v1_0_S00_AXI_inst_n_44,S2MMV2_v1_0_S00_AXI_inst_n_45,S2MMV2_v1_0_S00_AXI_inst_n_46}),
        .write_pointer1_carry__1_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_47,S2MMV2_v1_0_S00_AXI_inst_n_48,S2MMV2_v1_0_S00_AXI_inst_n_49,S2MMV2_v1_0_S00_AXI_inst_n_50}),
        .write_pointer1_carry__2_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_5,S2MMV2_v1_0_S00_AXI_inst_n_6,S2MMV2_v1_0_S00_AXI_inst_n_7}),
        .write_pointer1_carry__2_i_8_0({S2MMV2_v1_0_S00_AXI_inst_n_39,S2MMV2_v1_0_S00_AXI_inst_n_40,S2MMV2_v1_0_S00_AXI_inst_n_41,S2MMV2_v1_0_S00_AXI_inst_n_42}),
        .write_pointer1_carry_i_6_0({S2MMV2_v1_0_S00_AXI_inst_n_59,S2MMV2_v1_0_S00_AXI_inst_n_60,S2MMV2_v1_0_S00_AXI_inst_n_61,S2MMV2_v1_0_S00_AXI_inst_n_62}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI S2MMV2_v1_0_S00_AXI_inst
       (.DI({S2MMV2_v1_0_S00_AXI_inst_n_102,S2MMV2_v1_0_S00_AXI_inst_n_103,S2MMV2_v1_0_S00_AXI_inst_n_104,S2MMV2_v1_0_S00_AXI_inst_n_105}),
        .Q(DMA_MM2S_BUFF_LEN),
        .S({S2MMV2_v1_0_S00_AXI_inst_n_63,S2MMV2_v1_0_S00_AXI_inst_n_64,S2MMV2_v1_0_S00_AXI_inst_n_65,S2MMV2_v1_0_S00_AXI_inst_n_66}),
        .axi_arready_reg_0(s00_axi_arready),
        .axi_awready_reg_0(s00_axi_awready),
        .axi_wready_reg_0(s00_axi_wready),
        .out(read_pointer_reg),
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
        .\slv_reg0_reg[12]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_55,S2MMV2_v1_0_S00_AXI_inst_n_56,S2MMV2_v1_0_S00_AXI_inst_n_57,S2MMV2_v1_0_S00_AXI_inst_n_58}),
        .\slv_reg0_reg[16]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_51,S2MMV2_v1_0_S00_AXI_inst_n_52,S2MMV2_v1_0_S00_AXI_inst_n_53,S2MMV2_v1_0_S00_AXI_inst_n_54}),
        .\slv_reg0_reg[20]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_47,S2MMV2_v1_0_S00_AXI_inst_n_48,S2MMV2_v1_0_S00_AXI_inst_n_49,S2MMV2_v1_0_S00_AXI_inst_n_50}),
        .\slv_reg0_reg[24]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_43,S2MMV2_v1_0_S00_AXI_inst_n_44,S2MMV2_v1_0_S00_AXI_inst_n_45,S2MMV2_v1_0_S00_AXI_inst_n_46}),
        .\slv_reg0_reg[28]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_39,S2MMV2_v1_0_S00_AXI_inst_n_40,S2MMV2_v1_0_S00_AXI_inst_n_41,S2MMV2_v1_0_S00_AXI_inst_n_42}),
        .\slv_reg0_reg[31]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_5,S2MMV2_v1_0_S00_AXI_inst_n_6,S2MMV2_v1_0_S00_AXI_inst_n_7}),
        .\slv_reg0_reg[8]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_59,S2MMV2_v1_0_S00_AXI_inst_n_60,S2MMV2_v1_0_S00_AXI_inst_n_61,S2MMV2_v1_0_S00_AXI_inst_n_62}),
        .\slv_reg1_reg[29]_0 (DMA_MM2S_START_ADDR),
        .\slv_reg2_reg[12]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_149,S2MMV2_v1_0_S00_AXI_inst_n_150,S2MMV2_v1_0_S00_AXI_inst_n_151,S2MMV2_v1_0_S00_AXI_inst_n_152}),
        .\slv_reg2_reg[14]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_106,S2MMV2_v1_0_S00_AXI_inst_n_107,S2MMV2_v1_0_S00_AXI_inst_n_108,S2MMV2_v1_0_S00_AXI_inst_n_109}),
        .\slv_reg2_reg[14]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_110,S2MMV2_v1_0_S00_AXI_inst_n_111,S2MMV2_v1_0_S00_AXI_inst_n_112,S2MMV2_v1_0_S00_AXI_inst_n_113}),
        .\slv_reg2_reg[16]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_145,S2MMV2_v1_0_S00_AXI_inst_n_146,S2MMV2_v1_0_S00_AXI_inst_n_147,S2MMV2_v1_0_S00_AXI_inst_n_148}),
        .\slv_reg2_reg[20]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_141,S2MMV2_v1_0_S00_AXI_inst_n_142,S2MMV2_v1_0_S00_AXI_inst_n_143,S2MMV2_v1_0_S00_AXI_inst_n_144}),
        .\slv_reg2_reg[22]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_114,S2MMV2_v1_0_S00_AXI_inst_n_115,S2MMV2_v1_0_S00_AXI_inst_n_116,S2MMV2_v1_0_S00_AXI_inst_n_117}),
        .\slv_reg2_reg[22]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_118,S2MMV2_v1_0_S00_AXI_inst_n_119,S2MMV2_v1_0_S00_AXI_inst_n_120,S2MMV2_v1_0_S00_AXI_inst_n_121}),
        .\slv_reg2_reg[24]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_137,S2MMV2_v1_0_S00_AXI_inst_n_138,S2MMV2_v1_0_S00_AXI_inst_n_139,S2MMV2_v1_0_S00_AXI_inst_n_140}),
        .\slv_reg2_reg[28]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_133,S2MMV2_v1_0_S00_AXI_inst_n_134,S2MMV2_v1_0_S00_AXI_inst_n_135,S2MMV2_v1_0_S00_AXI_inst_n_136}),
        .\slv_reg2_reg[30]_0 (DMA_S2MM_BUFF_LEN),
        .\slv_reg2_reg[30]_1 ({S2MMV2_v1_0_S00_AXI_inst_n_122,S2MMV2_v1_0_S00_AXI_inst_n_123,S2MMV2_v1_0_S00_AXI_inst_n_124,S2MMV2_v1_0_S00_AXI_inst_n_125}),
        .\slv_reg2_reg[30]_2 ({S2MMV2_v1_0_S00_AXI_inst_n_126,S2MMV2_v1_0_S00_AXI_inst_n_127,S2MMV2_v1_0_S00_AXI_inst_n_128,S2MMV2_v1_0_S00_AXI_inst_n_129}),
        .\slv_reg2_reg[31]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_130,S2MMV2_v1_0_S00_AXI_inst_n_131,S2MMV2_v1_0_S00_AXI_inst_n_132}),
        .\slv_reg2_reg[4]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_157,S2MMV2_v1_0_S00_AXI_inst_n_158,S2MMV2_v1_0_S00_AXI_inst_n_159,S2MMV2_v1_0_S00_AXI_inst_n_160}),
        .\slv_reg2_reg[6]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_67,S2MMV2_v1_0_S00_AXI_inst_n_68,S2MMV2_v1_0_S00_AXI_inst_n_69,S2MMV2_v1_0_S00_AXI_inst_n_70}),
        .\slv_reg2_reg[8]_0 ({S2MMV2_v1_0_S00_AXI_inst_n_153,S2MMV2_v1_0_S00_AXI_inst_n_154,S2MMV2_v1_0_S00_AXI_inst_n_155,S2MMV2_v1_0_S00_AXI_inst_n_156}),
        .\slv_reg3_reg[29]_0 (DMA_S2MM_START_ADDR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS
   (m00_axis_tvalid,
    m00_axis_tlast,
    fifo_addr,
    out,
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
    Q,
    read_pointer1_carry_i_8_0,
    read_pointer1_carry_i_6_0,
    read_pointer1_carry__0_i_8_0,
    read_pointer1_carry__0_i_6_0,
    read_pointer1_carry__1_i_8_0,
    read_pointer1_carry__1_i_6_0,
    read_pointer1_carry__2_i_8_0,
    read_pointer1_carry__2_i_6_0,
    m00_axis_tready,
    m00_axis_aresetn,
    fifo_addr_carry__6_0);
  output m00_axis_tvalid;
  output m00_axis_tlast;
  output [29:0]fifo_addr;
  output [31:0]out;
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
  input [30:0]Q;
  input [3:0]read_pointer1_carry_i_8_0;
  input [3:0]read_pointer1_carry_i_6_0;
  input [3:0]read_pointer1_carry__0_i_8_0;
  input [3:0]read_pointer1_carry__0_i_6_0;
  input [3:0]read_pointer1_carry__1_i_8_0;
  input [3:0]read_pointer1_carry__1_i_6_0;
  input [3:0]read_pointer1_carry__2_i_8_0;
  input [2:0]read_pointer1_carry__2_i_6_0;
  input m00_axis_tready;
  input m00_axis_aresetn;
  input [29:0]fifo_addr_carry__6_0;

  wire [3:0]DI;
  wire \FSM_sequential_mst_exec_state[0]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_1_n_0 ;
  wire \FSM_sequential_mst_exec_state[1]_i_2_n_0 ;
  wire [30:0]Q;
  wire [3:0]S;
  wire axis_tlast;
  wire [31:1]axis_tlast0;
  wire axis_tlast0_carry__0_n_0;
  wire axis_tlast0_carry__0_n_1;
  wire axis_tlast0_carry__0_n_2;
  wire axis_tlast0_carry__0_n_3;
  wire axis_tlast0_carry__1_n_0;
  wire axis_tlast0_carry__1_n_1;
  wire axis_tlast0_carry__1_n_2;
  wire axis_tlast0_carry__1_n_3;
  wire axis_tlast0_carry__2_n_0;
  wire axis_tlast0_carry__2_n_1;
  wire axis_tlast0_carry__2_n_2;
  wire axis_tlast0_carry__2_n_3;
  wire axis_tlast0_carry__3_n_0;
  wire axis_tlast0_carry__3_n_1;
  wire axis_tlast0_carry__3_n_2;
  wire axis_tlast0_carry__3_n_3;
  wire axis_tlast0_carry__4_n_0;
  wire axis_tlast0_carry__4_n_1;
  wire axis_tlast0_carry__4_n_2;
  wire axis_tlast0_carry__4_n_3;
  wire axis_tlast0_carry__5_n_0;
  wire axis_tlast0_carry__5_n_1;
  wire axis_tlast0_carry__5_n_2;
  wire axis_tlast0_carry__5_n_3;
  wire axis_tlast0_carry__6_n_2;
  wire axis_tlast0_carry__6_n_3;
  wire axis_tlast0_carry_n_0;
  wire axis_tlast0_carry_n_1;
  wire axis_tlast0_carry_n_2;
  wire axis_tlast0_carry_n_3;
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
  wire axis_tlast_carry_i_4_n_0;
  wire axis_tlast_carry_n_0;
  wire axis_tlast_carry_n_1;
  wire axis_tlast_carry_n_2;
  wire axis_tlast_carry_n_3;
  wire axis_tlast_delay;
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
  wire [29:0]fifo_addr;
  wire fifo_addr_carry__0_i_1_n_0;
  wire fifo_addr_carry__0_i_2_n_0;
  wire fifo_addr_carry__0_i_3_n_0;
  wire fifo_addr_carry__0_i_4_n_0;
  wire fifo_addr_carry__0_n_0;
  wire fifo_addr_carry__0_n_1;
  wire fifo_addr_carry__0_n_2;
  wire fifo_addr_carry__0_n_3;
  wire fifo_addr_carry__1_i_1_n_0;
  wire fifo_addr_carry__1_i_2_n_0;
  wire fifo_addr_carry__1_i_3_n_0;
  wire fifo_addr_carry__1_i_4_n_0;
  wire fifo_addr_carry__1_n_0;
  wire fifo_addr_carry__1_n_1;
  wire fifo_addr_carry__1_n_2;
  wire fifo_addr_carry__1_n_3;
  wire fifo_addr_carry__2_i_1_n_0;
  wire fifo_addr_carry__2_i_2_n_0;
  wire fifo_addr_carry__2_i_3_n_0;
  wire fifo_addr_carry__2_i_4_n_0;
  wire fifo_addr_carry__2_n_0;
  wire fifo_addr_carry__2_n_1;
  wire fifo_addr_carry__2_n_2;
  wire fifo_addr_carry__2_n_3;
  wire fifo_addr_carry__3_i_1_n_0;
  wire fifo_addr_carry__3_i_2_n_0;
  wire fifo_addr_carry__3_i_3_n_0;
  wire fifo_addr_carry__3_i_4_n_0;
  wire fifo_addr_carry__3_n_0;
  wire fifo_addr_carry__3_n_1;
  wire fifo_addr_carry__3_n_2;
  wire fifo_addr_carry__3_n_3;
  wire fifo_addr_carry__4_i_1_n_0;
  wire fifo_addr_carry__4_i_2_n_0;
  wire fifo_addr_carry__4_i_3_n_0;
  wire fifo_addr_carry__4_i_4_n_0;
  wire fifo_addr_carry__4_n_0;
  wire fifo_addr_carry__4_n_1;
  wire fifo_addr_carry__4_n_2;
  wire fifo_addr_carry__4_n_3;
  wire fifo_addr_carry__5_i_1_n_0;
  wire fifo_addr_carry__5_i_2_n_0;
  wire fifo_addr_carry__5_i_3_n_0;
  wire fifo_addr_carry__5_i_4_n_0;
  wire fifo_addr_carry__5_n_0;
  wire fifo_addr_carry__5_n_1;
  wire fifo_addr_carry__5_n_2;
  wire fifo_addr_carry__5_n_3;
  wire [29:0]fifo_addr_carry__6_0;
  wire fifo_addr_carry__6_i_1_n_0;
  wire fifo_addr_carry__6_i_2_n_0;
  wire fifo_addr_carry__6_n_3;
  wire fifo_addr_carry_i_1_n_0;
  wire fifo_addr_carry_i_2_n_0;
  wire fifo_addr_carry_i_3_n_0;
  wire fifo_addr_carry_i_4_n_0;
  wire fifo_addr_carry_n_0;
  wire fifo_addr_carry_n_1;
  wire fifo_addr_carry_n_2;
  wire fifo_addr_carry_n_3;
  wire m00_axis_aclk;
  wire m00_axis_aresetn;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [1:0]mst_exec_state;
  wire [31:0]out;
  wire [4:0]p_0_in;
  wire read_pointer1;
  wire read_pointer1_carry__0_i_1_n_0;
  wire read_pointer1_carry__0_i_2_n_0;
  wire read_pointer1_carry__0_i_3_n_0;
  wire read_pointer1_carry__0_i_4_n_0;
  wire read_pointer1_carry__0_i_5_n_0;
  wire [3:0]read_pointer1_carry__0_i_6_0;
  wire read_pointer1_carry__0_i_6_n_0;
  wire read_pointer1_carry__0_i_7_n_0;
  wire [3:0]read_pointer1_carry__0_i_8_0;
  wire read_pointer1_carry__0_i_8_n_0;
  wire read_pointer1_carry__0_n_0;
  wire read_pointer1_carry__0_n_1;
  wire read_pointer1_carry__0_n_2;
  wire read_pointer1_carry__0_n_3;
  wire read_pointer1_carry__1_i_1_n_0;
  wire read_pointer1_carry__1_i_2_n_0;
  wire read_pointer1_carry__1_i_3_n_0;
  wire read_pointer1_carry__1_i_4_n_0;
  wire read_pointer1_carry__1_i_5_n_0;
  wire [3:0]read_pointer1_carry__1_i_6_0;
  wire read_pointer1_carry__1_i_6_n_0;
  wire read_pointer1_carry__1_i_7_n_0;
  wire [3:0]read_pointer1_carry__1_i_8_0;
  wire read_pointer1_carry__1_i_8_n_0;
  wire read_pointer1_carry__1_n_0;
  wire read_pointer1_carry__1_n_1;
  wire read_pointer1_carry__1_n_2;
  wire read_pointer1_carry__1_n_3;
  wire read_pointer1_carry__2_i_1_n_0;
  wire read_pointer1_carry__2_i_2_n_0;
  wire read_pointer1_carry__2_i_3_n_0;
  wire read_pointer1_carry__2_i_4_n_0;
  wire read_pointer1_carry__2_i_5_n_0;
  wire [2:0]read_pointer1_carry__2_i_6_0;
  wire read_pointer1_carry__2_i_6_n_0;
  wire read_pointer1_carry__2_i_7_n_0;
  wire [3:0]read_pointer1_carry__2_i_8_0;
  wire read_pointer1_carry__2_i_8_n_0;
  wire read_pointer1_carry__2_n_1;
  wire read_pointer1_carry__2_n_2;
  wire read_pointer1_carry__2_n_3;
  wire read_pointer1_carry_i_1_n_0;
  wire read_pointer1_carry_i_2_n_0;
  wire read_pointer1_carry_i_3_n_0;
  wire read_pointer1_carry_i_4_n_0;
  wire read_pointer1_carry_i_5_n_0;
  wire [3:0]read_pointer1_carry_i_6_0;
  wire read_pointer1_carry_i_6_n_0;
  wire read_pointer1_carry_i_7_n_0;
  wire [3:0]read_pointer1_carry_i_8_0;
  wire read_pointer1_carry_i_8_n_0;
  wire read_pointer1_carry_n_0;
  wire read_pointer1_carry_n_1;
  wire read_pointer1_carry_n_2;
  wire read_pointer1_carry_n_3;
  wire \read_pointer[0]_i_1_n_0 ;
  wire \read_pointer[0]_i_4_n_0 ;
  wire \read_pointer_reg[0]_i_3_n_0 ;
  wire \read_pointer_reg[0]_i_3_n_1 ;
  wire \read_pointer_reg[0]_i_3_n_2 ;
  wire \read_pointer_reg[0]_i_3_n_3 ;
  wire \read_pointer_reg[0]_i_3_n_4 ;
  wire \read_pointer_reg[0]_i_3_n_5 ;
  wire \read_pointer_reg[0]_i_3_n_6 ;
  wire \read_pointer_reg[0]_i_3_n_7 ;
  wire \read_pointer_reg[12]_i_1_n_0 ;
  wire \read_pointer_reg[12]_i_1_n_1 ;
  wire \read_pointer_reg[12]_i_1_n_2 ;
  wire \read_pointer_reg[12]_i_1_n_3 ;
  wire \read_pointer_reg[12]_i_1_n_4 ;
  wire \read_pointer_reg[12]_i_1_n_5 ;
  wire \read_pointer_reg[12]_i_1_n_6 ;
  wire \read_pointer_reg[12]_i_1_n_7 ;
  wire \read_pointer_reg[16]_i_1_n_0 ;
  wire \read_pointer_reg[16]_i_1_n_1 ;
  wire \read_pointer_reg[16]_i_1_n_2 ;
  wire \read_pointer_reg[16]_i_1_n_3 ;
  wire \read_pointer_reg[16]_i_1_n_4 ;
  wire \read_pointer_reg[16]_i_1_n_5 ;
  wire \read_pointer_reg[16]_i_1_n_6 ;
  wire \read_pointer_reg[16]_i_1_n_7 ;
  wire \read_pointer_reg[20]_i_1_n_0 ;
  wire \read_pointer_reg[20]_i_1_n_1 ;
  wire \read_pointer_reg[20]_i_1_n_2 ;
  wire \read_pointer_reg[20]_i_1_n_3 ;
  wire \read_pointer_reg[20]_i_1_n_4 ;
  wire \read_pointer_reg[20]_i_1_n_5 ;
  wire \read_pointer_reg[20]_i_1_n_6 ;
  wire \read_pointer_reg[20]_i_1_n_7 ;
  wire \read_pointer_reg[24]_i_1_n_0 ;
  wire \read_pointer_reg[24]_i_1_n_1 ;
  wire \read_pointer_reg[24]_i_1_n_2 ;
  wire \read_pointer_reg[24]_i_1_n_3 ;
  wire \read_pointer_reg[24]_i_1_n_4 ;
  wire \read_pointer_reg[24]_i_1_n_5 ;
  wire \read_pointer_reg[24]_i_1_n_6 ;
  wire \read_pointer_reg[24]_i_1_n_7 ;
  wire \read_pointer_reg[28]_i_1_n_1 ;
  wire \read_pointer_reg[28]_i_1_n_2 ;
  wire \read_pointer_reg[28]_i_1_n_3 ;
  wire \read_pointer_reg[28]_i_1_n_4 ;
  wire \read_pointer_reg[28]_i_1_n_5 ;
  wire \read_pointer_reg[28]_i_1_n_6 ;
  wire \read_pointer_reg[28]_i_1_n_7 ;
  wire \read_pointer_reg[4]_i_1_n_0 ;
  wire \read_pointer_reg[4]_i_1_n_1 ;
  wire \read_pointer_reg[4]_i_1_n_2 ;
  wire \read_pointer_reg[4]_i_1_n_3 ;
  wire \read_pointer_reg[4]_i_1_n_4 ;
  wire \read_pointer_reg[4]_i_1_n_5 ;
  wire \read_pointer_reg[4]_i_1_n_6 ;
  wire \read_pointer_reg[4]_i_1_n_7 ;
  wire \read_pointer_reg[8]_i_1_n_0 ;
  wire \read_pointer_reg[8]_i_1_n_1 ;
  wire \read_pointer_reg[8]_i_1_n_2 ;
  wire \read_pointer_reg[8]_i_1_n_3 ;
  wire \read_pointer_reg[8]_i_1_n_4 ;
  wire \read_pointer_reg[8]_i_1_n_5 ;
  wire \read_pointer_reg[8]_i_1_n_6 ;
  wire \read_pointer_reg[8]_i_1_n_7 ;
  wire [31:0]stream_data_out;
  wire \stream_data_out[0]_i_2_n_0 ;
  wire tx_done_i_1_n_0;
  wire tx_done_reg_n_0;
  wire tx_en;
  wire [3:2]NLW_axis_tlast0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_axis_tlast0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_axis_tlast_carry_O_UNCONNECTED;
  wire [3:0]NLW_axis_tlast_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_axis_tlast_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_axis_tlast_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_axis_tvalid0_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_fifo_addr_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_fifo_addr_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_read_pointer1_carry_O_UNCONNECTED;
  wire [3:0]NLW_read_pointer1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_read_pointer1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_read_pointer1_carry__2_O_UNCONNECTED;
  wire [3:3]\NLW_read_pointer_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hC7)) 
    \FSM_sequential_mst_exec_state[0]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .O(\FSM_sequential_mst_exec_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hF3A0)) 
    \FSM_sequential_mst_exec_state[1]_i_1 
       (.I0(\FSM_sequential_mst_exec_state[1]_i_2_n_0 ),
        .I1(tx_done_reg_n_0),
        .I2(mst_exec_state[0]),
        .I3(mst_exec_state[1]),
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
        .R(stream_data_out[0]));
  (* FSM_ENCODED_STATES = "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00" *) 
  FDRE \FSM_sequential_mst_exec_state_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_mst_exec_state[1]_i_1_n_0 ),
        .Q(mst_exec_state[1]),
        .R(stream_data_out[0]));
  CARRY4 axis_tlast0_carry
       (.CI(1'b0),
        .CO({axis_tlast0_carry_n_0,axis_tlast0_carry_n_1,axis_tlast0_carry_n_2,axis_tlast0_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(axis_tlast0[4:1]),
        .S(read_pointer1_carry_i_8_0));
  CARRY4 axis_tlast0_carry__0
       (.CI(axis_tlast0_carry_n_0),
        .CO({axis_tlast0_carry__0_n_0,axis_tlast0_carry__0_n_1,axis_tlast0_carry__0_n_2,axis_tlast0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(axis_tlast0[8:5]),
        .S(read_pointer1_carry_i_6_0));
  CARRY4 axis_tlast0_carry__1
       (.CI(axis_tlast0_carry__0_n_0),
        .CO({axis_tlast0_carry__1_n_0,axis_tlast0_carry__1_n_1,axis_tlast0_carry__1_n_2,axis_tlast0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(axis_tlast0[12:9]),
        .S(read_pointer1_carry__0_i_8_0));
  CARRY4 axis_tlast0_carry__2
       (.CI(axis_tlast0_carry__1_n_0),
        .CO({axis_tlast0_carry__2_n_0,axis_tlast0_carry__2_n_1,axis_tlast0_carry__2_n_2,axis_tlast0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(axis_tlast0[16:13]),
        .S(read_pointer1_carry__0_i_6_0));
  CARRY4 axis_tlast0_carry__3
       (.CI(axis_tlast0_carry__2_n_0),
        .CO({axis_tlast0_carry__3_n_0,axis_tlast0_carry__3_n_1,axis_tlast0_carry__3_n_2,axis_tlast0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(axis_tlast0[20:17]),
        .S(read_pointer1_carry__1_i_8_0));
  CARRY4 axis_tlast0_carry__4
       (.CI(axis_tlast0_carry__3_n_0),
        .CO({axis_tlast0_carry__4_n_0,axis_tlast0_carry__4_n_1,axis_tlast0_carry__4_n_2,axis_tlast0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(axis_tlast0[24:21]),
        .S(read_pointer1_carry__1_i_6_0));
  CARRY4 axis_tlast0_carry__5
       (.CI(axis_tlast0_carry__4_n_0),
        .CO({axis_tlast0_carry__5_n_0,axis_tlast0_carry__5_n_1,axis_tlast0_carry__5_n_2,axis_tlast0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(axis_tlast0[28:25]),
        .S(read_pointer1_carry__2_i_8_0));
  CARRY4 axis_tlast0_carry__6
       (.CI(axis_tlast0_carry__5_n_0),
        .CO({NLW_axis_tlast0_carry__6_CO_UNCONNECTED[3:2],axis_tlast0_carry__6_n_2,axis_tlast0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_axis_tlast0_carry__6_O_UNCONNECTED[3],axis_tlast0[31:29]}),
        .S({1'b0,read_pointer1_carry__2_i_6_0}));
  CARRY4 axis_tlast_carry
       (.CI(1'b0),
        .CO({axis_tlast_carry_n_0,axis_tlast_carry_n_1,axis_tlast_carry_n_2,axis_tlast_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry_O_UNCONNECTED[3:0]),
        .S({axis_tlast_carry_i_1_n_0,axis_tlast_carry_i_2_n_0,axis_tlast_carry_i_3_n_0,axis_tlast_carry_i_4_n_0}));
  CARRY4 axis_tlast_carry__0
       (.CI(axis_tlast_carry_n_0),
        .CO({axis_tlast_carry__0_n_0,axis_tlast_carry__0_n_1,axis_tlast_carry__0_n_2,axis_tlast_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry__0_O_UNCONNECTED[3:0]),
        .S({axis_tlast_carry__0_i_1_n_0,axis_tlast_carry__0_i_2_n_0,axis_tlast_carry__0_i_3_n_0,axis_tlast_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__0_i_1
       (.I0(out[21]),
        .I1(axis_tlast0[21]),
        .I2(axis_tlast0[23]),
        .I3(out[23]),
        .I4(axis_tlast0[22]),
        .I5(out[22]),
        .O(axis_tlast_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__0_i_2
       (.I0(out[18]),
        .I1(axis_tlast0[18]),
        .I2(axis_tlast0[20]),
        .I3(out[20]),
        .I4(axis_tlast0[19]),
        .I5(out[19]),
        .O(axis_tlast_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__0_i_3
       (.I0(out[15]),
        .I1(axis_tlast0[15]),
        .I2(axis_tlast0[17]),
        .I3(out[17]),
        .I4(axis_tlast0[16]),
        .I5(out[16]),
        .O(axis_tlast_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__0_i_4
       (.I0(out[12]),
        .I1(axis_tlast0[12]),
        .I2(axis_tlast0[14]),
        .I3(out[14]),
        .I4(axis_tlast0[13]),
        .I5(out[13]),
        .O(axis_tlast_carry__0_i_4_n_0));
  CARRY4 axis_tlast_carry__1
       (.CI(axis_tlast_carry__0_n_0),
        .CO({NLW_axis_tlast_carry__1_CO_UNCONNECTED[3],axis_tlast,axis_tlast_carry__1_n_2,axis_tlast_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_axis_tlast_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,axis_tlast_carry__1_i_1_n_0,axis_tlast_carry__1_i_2_n_0,axis_tlast_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tlast_carry__1_i_1
       (.I0(out[30]),
        .I1(axis_tlast0[30]),
        .I2(out[31]),
        .I3(axis_tlast0[31]),
        .O(axis_tlast_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__1_i_2
       (.I0(out[27]),
        .I1(axis_tlast0[27]),
        .I2(axis_tlast0[29]),
        .I3(out[29]),
        .I4(axis_tlast0[28]),
        .I5(out[28]),
        .O(axis_tlast_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry__1_i_3
       (.I0(out[24]),
        .I1(axis_tlast0[24]),
        .I2(axis_tlast0[26]),
        .I3(out[26]),
        .I4(axis_tlast0[25]),
        .I5(out[25]),
        .O(axis_tlast_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry_i_1
       (.I0(out[9]),
        .I1(axis_tlast0[9]),
        .I2(axis_tlast0[11]),
        .I3(out[11]),
        .I4(axis_tlast0[10]),
        .I5(out[10]),
        .O(axis_tlast_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry_i_2
       (.I0(out[6]),
        .I1(axis_tlast0[6]),
        .I2(axis_tlast0[8]),
        .I3(out[8]),
        .I4(axis_tlast0[7]),
        .I5(out[7]),
        .O(axis_tlast_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    axis_tlast_carry_i_3
       (.I0(out[3]),
        .I1(axis_tlast0[3]),
        .I2(axis_tlast0[5]),
        .I3(out[5]),
        .I4(axis_tlast0[4]),
        .I5(out[4]),
        .O(axis_tlast_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000900990090000)) 
    axis_tlast_carry_i_4
       (.I0(axis_tlast0[2]),
        .I1(out[2]),
        .I2(axis_tlast0[1]),
        .I3(out[1]),
        .I4(Q[0]),
        .I5(out[0]),
        .O(axis_tlast_carry_i_4_n_0));
  FDRE axis_tlast_delay_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast_delay),
        .Q(m00_axis_tlast),
        .R(stream_data_out[0]));
  FDRE axis_tlast_delay_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(axis_tlast),
        .Q(axis_tlast_delay),
        .R(stream_data_out[0]));
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
        .R(stream_data_out[0]));
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
        .R(stream_data_out[0]));
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
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
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
        .R(stream_data_out[0]));
  FDRE \count_reg[1] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[1]),
        .Q(count_reg[1]),
        .R(stream_data_out[0]));
  FDRE \count_reg[2] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(\count[2]_i_1_n_0 ),
        .Q(count_reg[2]),
        .R(stream_data_out[0]));
  FDRE \count_reg[3] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[3]),
        .Q(count_reg[3]),
        .R(stream_data_out[0]));
  FDRE \count_reg[4] 
       (.C(m00_axis_aclk),
        .CE(count),
        .D(p_0_in[4]),
        .Q(count_reg[4]),
        .R(stream_data_out[0]));
  CARRY4 fifo_addr_carry
       (.CI(1'b0),
        .CO({fifo_addr_carry_n_0,fifo_addr_carry_n_1,fifo_addr_carry_n_2,fifo_addr_carry_n_3}),
        .CYINIT(1'b0),
        .DI(out[3:0]),
        .O(fifo_addr[3:0]),
        .S({fifo_addr_carry_i_1_n_0,fifo_addr_carry_i_2_n_0,fifo_addr_carry_i_3_n_0,fifo_addr_carry_i_4_n_0}));
  CARRY4 fifo_addr_carry__0
       (.CI(fifo_addr_carry_n_0),
        .CO({fifo_addr_carry__0_n_0,fifo_addr_carry__0_n_1,fifo_addr_carry__0_n_2,fifo_addr_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(out[7:4]),
        .O(fifo_addr[7:4]),
        .S({fifo_addr_carry__0_i_1_n_0,fifo_addr_carry__0_i_2_n_0,fifo_addr_carry__0_i_3_n_0,fifo_addr_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__0_i_1
       (.I0(out[7]),
        .I1(fifo_addr_carry__6_0[7]),
        .O(fifo_addr_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__0_i_2
       (.I0(out[6]),
        .I1(fifo_addr_carry__6_0[6]),
        .O(fifo_addr_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__0_i_3
       (.I0(out[5]),
        .I1(fifo_addr_carry__6_0[5]),
        .O(fifo_addr_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__0_i_4
       (.I0(out[4]),
        .I1(fifo_addr_carry__6_0[4]),
        .O(fifo_addr_carry__0_i_4_n_0));
  CARRY4 fifo_addr_carry__1
       (.CI(fifo_addr_carry__0_n_0),
        .CO({fifo_addr_carry__1_n_0,fifo_addr_carry__1_n_1,fifo_addr_carry__1_n_2,fifo_addr_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(out[11:8]),
        .O(fifo_addr[11:8]),
        .S({fifo_addr_carry__1_i_1_n_0,fifo_addr_carry__1_i_2_n_0,fifo_addr_carry__1_i_3_n_0,fifo_addr_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__1_i_1
       (.I0(out[11]),
        .I1(fifo_addr_carry__6_0[11]),
        .O(fifo_addr_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__1_i_2
       (.I0(out[10]),
        .I1(fifo_addr_carry__6_0[10]),
        .O(fifo_addr_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__1_i_3
       (.I0(out[9]),
        .I1(fifo_addr_carry__6_0[9]),
        .O(fifo_addr_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__1_i_4
       (.I0(out[8]),
        .I1(fifo_addr_carry__6_0[8]),
        .O(fifo_addr_carry__1_i_4_n_0));
  CARRY4 fifo_addr_carry__2
       (.CI(fifo_addr_carry__1_n_0),
        .CO({fifo_addr_carry__2_n_0,fifo_addr_carry__2_n_1,fifo_addr_carry__2_n_2,fifo_addr_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(out[15:12]),
        .O(fifo_addr[15:12]),
        .S({fifo_addr_carry__2_i_1_n_0,fifo_addr_carry__2_i_2_n_0,fifo_addr_carry__2_i_3_n_0,fifo_addr_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__2_i_1
       (.I0(out[15]),
        .I1(fifo_addr_carry__6_0[15]),
        .O(fifo_addr_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__2_i_2
       (.I0(out[14]),
        .I1(fifo_addr_carry__6_0[14]),
        .O(fifo_addr_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__2_i_3
       (.I0(out[13]),
        .I1(fifo_addr_carry__6_0[13]),
        .O(fifo_addr_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__2_i_4
       (.I0(out[12]),
        .I1(fifo_addr_carry__6_0[12]),
        .O(fifo_addr_carry__2_i_4_n_0));
  CARRY4 fifo_addr_carry__3
       (.CI(fifo_addr_carry__2_n_0),
        .CO({fifo_addr_carry__3_n_0,fifo_addr_carry__3_n_1,fifo_addr_carry__3_n_2,fifo_addr_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(out[19:16]),
        .O(fifo_addr[19:16]),
        .S({fifo_addr_carry__3_i_1_n_0,fifo_addr_carry__3_i_2_n_0,fifo_addr_carry__3_i_3_n_0,fifo_addr_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__3_i_1
       (.I0(out[19]),
        .I1(fifo_addr_carry__6_0[19]),
        .O(fifo_addr_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__3_i_2
       (.I0(out[18]),
        .I1(fifo_addr_carry__6_0[18]),
        .O(fifo_addr_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__3_i_3
       (.I0(out[17]),
        .I1(fifo_addr_carry__6_0[17]),
        .O(fifo_addr_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__3_i_4
       (.I0(out[16]),
        .I1(fifo_addr_carry__6_0[16]),
        .O(fifo_addr_carry__3_i_4_n_0));
  CARRY4 fifo_addr_carry__4
       (.CI(fifo_addr_carry__3_n_0),
        .CO({fifo_addr_carry__4_n_0,fifo_addr_carry__4_n_1,fifo_addr_carry__4_n_2,fifo_addr_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(out[23:20]),
        .O(fifo_addr[23:20]),
        .S({fifo_addr_carry__4_i_1_n_0,fifo_addr_carry__4_i_2_n_0,fifo_addr_carry__4_i_3_n_0,fifo_addr_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__4_i_1
       (.I0(out[23]),
        .I1(fifo_addr_carry__6_0[23]),
        .O(fifo_addr_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__4_i_2
       (.I0(out[22]),
        .I1(fifo_addr_carry__6_0[22]),
        .O(fifo_addr_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__4_i_3
       (.I0(out[21]),
        .I1(fifo_addr_carry__6_0[21]),
        .O(fifo_addr_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__4_i_4
       (.I0(out[20]),
        .I1(fifo_addr_carry__6_0[20]),
        .O(fifo_addr_carry__4_i_4_n_0));
  CARRY4 fifo_addr_carry__5
       (.CI(fifo_addr_carry__4_n_0),
        .CO({fifo_addr_carry__5_n_0,fifo_addr_carry__5_n_1,fifo_addr_carry__5_n_2,fifo_addr_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(out[27:24]),
        .O(fifo_addr[27:24]),
        .S({fifo_addr_carry__5_i_1_n_0,fifo_addr_carry__5_i_2_n_0,fifo_addr_carry__5_i_3_n_0,fifo_addr_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__5_i_1
       (.I0(out[27]),
        .I1(fifo_addr_carry__6_0[27]),
        .O(fifo_addr_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__5_i_2
       (.I0(out[26]),
        .I1(fifo_addr_carry__6_0[26]),
        .O(fifo_addr_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__5_i_3
       (.I0(out[25]),
        .I1(fifo_addr_carry__6_0[25]),
        .O(fifo_addr_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__5_i_4
       (.I0(out[24]),
        .I1(fifo_addr_carry__6_0[24]),
        .O(fifo_addr_carry__5_i_4_n_0));
  CARRY4 fifo_addr_carry__6
       (.CI(fifo_addr_carry__5_n_0),
        .CO({NLW_fifo_addr_carry__6_CO_UNCONNECTED[3:1],fifo_addr_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,out[28]}),
        .O({NLW_fifo_addr_carry__6_O_UNCONNECTED[3:2],fifo_addr[29:28]}),
        .S({1'b0,1'b0,fifo_addr_carry__6_i_1_n_0,fifo_addr_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__6_i_1
       (.I0(out[29]),
        .I1(fifo_addr_carry__6_0[29]),
        .O(fifo_addr_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry__6_i_2
       (.I0(out[28]),
        .I1(fifo_addr_carry__6_0[28]),
        .O(fifo_addr_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry_i_1
       (.I0(out[3]),
        .I1(fifo_addr_carry__6_0[3]),
        .O(fifo_addr_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry_i_2
       (.I0(out[2]),
        .I1(fifo_addr_carry__6_0[2]),
        .O(fifo_addr_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry_i_3
       (.I0(out[1]),
        .I1(fifo_addr_carry__6_0[1]),
        .O(fifo_addr_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    fifo_addr_carry_i_4
       (.I0(out[0]),
        .I1(fifo_addr_carry__6_0[0]),
        .O(fifo_addr_carry_i_4_n_0));
  CARRY4 read_pointer1_carry
       (.CI(1'b0),
        .CO({read_pointer1_carry_n_0,read_pointer1_carry_n_1,read_pointer1_carry_n_2,read_pointer1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({read_pointer1_carry_i_1_n_0,read_pointer1_carry_i_2_n_0,read_pointer1_carry_i_3_n_0,read_pointer1_carry_i_4_n_0}),
        .O(NLW_read_pointer1_carry_O_UNCONNECTED[3:0]),
        .S({read_pointer1_carry_i_5_n_0,read_pointer1_carry_i_6_n_0,read_pointer1_carry_i_7_n_0,read_pointer1_carry_i_8_n_0}));
  CARRY4 read_pointer1_carry__0
       (.CI(read_pointer1_carry_n_0),
        .CO({read_pointer1_carry__0_n_0,read_pointer1_carry__0_n_1,read_pointer1_carry__0_n_2,read_pointer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({read_pointer1_carry__0_i_1_n_0,read_pointer1_carry__0_i_2_n_0,read_pointer1_carry__0_i_3_n_0,read_pointer1_carry__0_i_4_n_0}),
        .O(NLW_read_pointer1_carry__0_O_UNCONNECTED[3:0]),
        .S({read_pointer1_carry__0_i_5_n_0,read_pointer1_carry__0_i_6_n_0,read_pointer1_carry__0_i_7_n_0,read_pointer1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__0_i_1
       (.I0(axis_tlast0[14]),
        .I1(out[14]),
        .I2(out[15]),
        .I3(axis_tlast0[15]),
        .O(read_pointer1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__0_i_2
       (.I0(axis_tlast0[12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(axis_tlast0[13]),
        .O(read_pointer1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__0_i_3
       (.I0(axis_tlast0[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(axis_tlast0[11]),
        .O(read_pointer1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__0_i_4
       (.I0(axis_tlast0[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(axis_tlast0[9]),
        .O(read_pointer1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__0_i_5
       (.I0(axis_tlast0[14]),
        .I1(out[14]),
        .I2(axis_tlast0[15]),
        .I3(out[15]),
        .O(read_pointer1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__0_i_6
       (.I0(axis_tlast0[12]),
        .I1(out[12]),
        .I2(axis_tlast0[13]),
        .I3(out[13]),
        .O(read_pointer1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__0_i_7
       (.I0(axis_tlast0[10]),
        .I1(out[10]),
        .I2(axis_tlast0[11]),
        .I3(out[11]),
        .O(read_pointer1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__0_i_8
       (.I0(axis_tlast0[8]),
        .I1(out[8]),
        .I2(axis_tlast0[9]),
        .I3(out[9]),
        .O(read_pointer1_carry__0_i_8_n_0));
  CARRY4 read_pointer1_carry__1
       (.CI(read_pointer1_carry__0_n_0),
        .CO({read_pointer1_carry__1_n_0,read_pointer1_carry__1_n_1,read_pointer1_carry__1_n_2,read_pointer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({read_pointer1_carry__1_i_1_n_0,read_pointer1_carry__1_i_2_n_0,read_pointer1_carry__1_i_3_n_0,read_pointer1_carry__1_i_4_n_0}),
        .O(NLW_read_pointer1_carry__1_O_UNCONNECTED[3:0]),
        .S({read_pointer1_carry__1_i_5_n_0,read_pointer1_carry__1_i_6_n_0,read_pointer1_carry__1_i_7_n_0,read_pointer1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__1_i_1
       (.I0(axis_tlast0[22]),
        .I1(out[22]),
        .I2(out[23]),
        .I3(axis_tlast0[23]),
        .O(read_pointer1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__1_i_2
       (.I0(axis_tlast0[20]),
        .I1(out[20]),
        .I2(out[21]),
        .I3(axis_tlast0[21]),
        .O(read_pointer1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__1_i_3
       (.I0(axis_tlast0[18]),
        .I1(out[18]),
        .I2(out[19]),
        .I3(axis_tlast0[19]),
        .O(read_pointer1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__1_i_4
       (.I0(axis_tlast0[16]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(axis_tlast0[17]),
        .O(read_pointer1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__1_i_5
       (.I0(axis_tlast0[22]),
        .I1(out[22]),
        .I2(axis_tlast0[23]),
        .I3(out[23]),
        .O(read_pointer1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__1_i_6
       (.I0(axis_tlast0[20]),
        .I1(out[20]),
        .I2(axis_tlast0[21]),
        .I3(out[21]),
        .O(read_pointer1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__1_i_7
       (.I0(axis_tlast0[18]),
        .I1(out[18]),
        .I2(axis_tlast0[19]),
        .I3(out[19]),
        .O(read_pointer1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__1_i_8
       (.I0(axis_tlast0[16]),
        .I1(out[16]),
        .I2(axis_tlast0[17]),
        .I3(out[17]),
        .O(read_pointer1_carry__1_i_8_n_0));
  CARRY4 read_pointer1_carry__2
       (.CI(read_pointer1_carry__1_n_0),
        .CO({read_pointer1,read_pointer1_carry__2_n_1,read_pointer1_carry__2_n_2,read_pointer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({read_pointer1_carry__2_i_1_n_0,read_pointer1_carry__2_i_2_n_0,read_pointer1_carry__2_i_3_n_0,read_pointer1_carry__2_i_4_n_0}),
        .O(NLW_read_pointer1_carry__2_O_UNCONNECTED[3:0]),
        .S({read_pointer1_carry__2_i_5_n_0,read_pointer1_carry__2_i_6_n_0,read_pointer1_carry__2_i_7_n_0,read_pointer1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__2_i_1
       (.I0(axis_tlast0[30]),
        .I1(out[30]),
        .I2(out[31]),
        .I3(axis_tlast0[31]),
        .O(read_pointer1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__2_i_2
       (.I0(axis_tlast0[28]),
        .I1(out[28]),
        .I2(out[29]),
        .I3(axis_tlast0[29]),
        .O(read_pointer1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__2_i_3
       (.I0(axis_tlast0[26]),
        .I1(out[26]),
        .I2(out[27]),
        .I3(axis_tlast0[27]),
        .O(read_pointer1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry__2_i_4
       (.I0(axis_tlast0[24]),
        .I1(out[24]),
        .I2(out[25]),
        .I3(axis_tlast0[25]),
        .O(read_pointer1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__2_i_5
       (.I0(axis_tlast0[30]),
        .I1(out[30]),
        .I2(axis_tlast0[31]),
        .I3(out[31]),
        .O(read_pointer1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__2_i_6
       (.I0(axis_tlast0[28]),
        .I1(out[28]),
        .I2(axis_tlast0[29]),
        .I3(out[29]),
        .O(read_pointer1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__2_i_7
       (.I0(axis_tlast0[26]),
        .I1(out[26]),
        .I2(axis_tlast0[27]),
        .I3(out[27]),
        .O(read_pointer1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry__2_i_8
       (.I0(axis_tlast0[24]),
        .I1(out[24]),
        .I2(axis_tlast0[25]),
        .I3(out[25]),
        .O(read_pointer1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry_i_1
       (.I0(axis_tlast0[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(axis_tlast0[7]),
        .O(read_pointer1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry_i_2
       (.I0(axis_tlast0[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(axis_tlast0[5]),
        .O(read_pointer1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    read_pointer1_carry_i_3
       (.I0(axis_tlast0[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(axis_tlast0[3]),
        .O(read_pointer1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    read_pointer1_carry_i_4
       (.I0(out[0]),
        .I1(Q[0]),
        .I2(out[1]),
        .I3(axis_tlast0[1]),
        .O(read_pointer1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry_i_5
       (.I0(axis_tlast0[6]),
        .I1(out[6]),
        .I2(axis_tlast0[7]),
        .I3(out[7]),
        .O(read_pointer1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry_i_6
       (.I0(axis_tlast0[4]),
        .I1(out[4]),
        .I2(axis_tlast0[5]),
        .I3(out[5]),
        .O(read_pointer1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    read_pointer1_carry_i_7
       (.I0(axis_tlast0[2]),
        .I1(out[2]),
        .I2(axis_tlast0[3]),
        .I3(out[3]),
        .O(read_pointer1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    read_pointer1_carry_i_8
       (.I0(out[0]),
        .I1(Q[0]),
        .I2(axis_tlast0[1]),
        .I3(out[1]),
        .O(read_pointer1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    \read_pointer[0]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(read_pointer1),
        .O(\read_pointer[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \read_pointer[0]_i_2 
       (.I0(m00_axis_tready),
        .I1(axis_tvalid0),
        .I2(mst_exec_state[1]),
        .I3(mst_exec_state[0]),
        .O(tx_en));
  LUT1 #(
    .INIT(2'h1)) 
    \read_pointer[0]_i_4 
       (.I0(out[0]),
        .O(\read_pointer[0]_i_4_n_0 ));
  FDRE \read_pointer_reg[0] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[0]_i_3_n_7 ),
        .Q(out[0]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\read_pointer_reg[0]_i_3_n_0 ,\read_pointer_reg[0]_i_3_n_1 ,\read_pointer_reg[0]_i_3_n_2 ,\read_pointer_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\read_pointer_reg[0]_i_3_n_4 ,\read_pointer_reg[0]_i_3_n_5 ,\read_pointer_reg[0]_i_3_n_6 ,\read_pointer_reg[0]_i_3_n_7 }),
        .S({out[3:1],\read_pointer[0]_i_4_n_0 }));
  FDRE \read_pointer_reg[10] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[8]_i_1_n_5 ),
        .Q(out[10]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[11] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[8]_i_1_n_4 ),
        .Q(out[11]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[12] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[12]_i_1_n_7 ),
        .Q(out[12]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[12]_i_1 
       (.CI(\read_pointer_reg[8]_i_1_n_0 ),
        .CO({\read_pointer_reg[12]_i_1_n_0 ,\read_pointer_reg[12]_i_1_n_1 ,\read_pointer_reg[12]_i_1_n_2 ,\read_pointer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[12]_i_1_n_4 ,\read_pointer_reg[12]_i_1_n_5 ,\read_pointer_reg[12]_i_1_n_6 ,\read_pointer_reg[12]_i_1_n_7 }),
        .S(out[15:12]));
  FDRE \read_pointer_reg[13] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[12]_i_1_n_6 ),
        .Q(out[13]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[14] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[12]_i_1_n_5 ),
        .Q(out[14]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[15] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[12]_i_1_n_4 ),
        .Q(out[15]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[16] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[16]_i_1_n_7 ),
        .Q(out[16]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[16]_i_1 
       (.CI(\read_pointer_reg[12]_i_1_n_0 ),
        .CO({\read_pointer_reg[16]_i_1_n_0 ,\read_pointer_reg[16]_i_1_n_1 ,\read_pointer_reg[16]_i_1_n_2 ,\read_pointer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[16]_i_1_n_4 ,\read_pointer_reg[16]_i_1_n_5 ,\read_pointer_reg[16]_i_1_n_6 ,\read_pointer_reg[16]_i_1_n_7 }),
        .S(out[19:16]));
  FDRE \read_pointer_reg[17] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[16]_i_1_n_6 ),
        .Q(out[17]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[18] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[16]_i_1_n_5 ),
        .Q(out[18]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[19] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[16]_i_1_n_4 ),
        .Q(out[19]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[1] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[0]_i_3_n_6 ),
        .Q(out[1]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[20] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[20]_i_1_n_7 ),
        .Q(out[20]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[20]_i_1 
       (.CI(\read_pointer_reg[16]_i_1_n_0 ),
        .CO({\read_pointer_reg[20]_i_1_n_0 ,\read_pointer_reg[20]_i_1_n_1 ,\read_pointer_reg[20]_i_1_n_2 ,\read_pointer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[20]_i_1_n_4 ,\read_pointer_reg[20]_i_1_n_5 ,\read_pointer_reg[20]_i_1_n_6 ,\read_pointer_reg[20]_i_1_n_7 }),
        .S(out[23:20]));
  FDRE \read_pointer_reg[21] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[20]_i_1_n_6 ),
        .Q(out[21]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[22] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[20]_i_1_n_5 ),
        .Q(out[22]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[23] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[20]_i_1_n_4 ),
        .Q(out[23]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[24] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[24]_i_1_n_7 ),
        .Q(out[24]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[24]_i_1 
       (.CI(\read_pointer_reg[20]_i_1_n_0 ),
        .CO({\read_pointer_reg[24]_i_1_n_0 ,\read_pointer_reg[24]_i_1_n_1 ,\read_pointer_reg[24]_i_1_n_2 ,\read_pointer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[24]_i_1_n_4 ,\read_pointer_reg[24]_i_1_n_5 ,\read_pointer_reg[24]_i_1_n_6 ,\read_pointer_reg[24]_i_1_n_7 }),
        .S(out[27:24]));
  FDRE \read_pointer_reg[25] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[24]_i_1_n_6 ),
        .Q(out[25]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[26] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[24]_i_1_n_5 ),
        .Q(out[26]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[27] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[24]_i_1_n_4 ),
        .Q(out[27]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[28] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[28]_i_1_n_7 ),
        .Q(out[28]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[28]_i_1 
       (.CI(\read_pointer_reg[24]_i_1_n_0 ),
        .CO({\NLW_read_pointer_reg[28]_i_1_CO_UNCONNECTED [3],\read_pointer_reg[28]_i_1_n_1 ,\read_pointer_reg[28]_i_1_n_2 ,\read_pointer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[28]_i_1_n_4 ,\read_pointer_reg[28]_i_1_n_5 ,\read_pointer_reg[28]_i_1_n_6 ,\read_pointer_reg[28]_i_1_n_7 }),
        .S(out[31:28]));
  FDRE \read_pointer_reg[29] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[28]_i_1_n_6 ),
        .Q(out[29]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[2] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[0]_i_3_n_5 ),
        .Q(out[2]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[30] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[28]_i_1_n_5 ),
        .Q(out[30]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[31] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[28]_i_1_n_4 ),
        .Q(out[31]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[3] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[0]_i_3_n_4 ),
        .Q(out[3]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[4] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[4]_i_1_n_7 ),
        .Q(out[4]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[4]_i_1 
       (.CI(\read_pointer_reg[0]_i_3_n_0 ),
        .CO({\read_pointer_reg[4]_i_1_n_0 ,\read_pointer_reg[4]_i_1_n_1 ,\read_pointer_reg[4]_i_1_n_2 ,\read_pointer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[4]_i_1_n_4 ,\read_pointer_reg[4]_i_1_n_5 ,\read_pointer_reg[4]_i_1_n_6 ,\read_pointer_reg[4]_i_1_n_7 }),
        .S(out[7:4]));
  FDRE \read_pointer_reg[5] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[4]_i_1_n_6 ),
        .Q(out[5]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[6] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[4]_i_1_n_5 ),
        .Q(out[6]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[7] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[4]_i_1_n_4 ),
        .Q(out[7]),
        .R(\read_pointer[0]_i_1_n_0 ));
  FDRE \read_pointer_reg[8] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[8]_i_1_n_7 ),
        .Q(out[8]),
        .R(\read_pointer[0]_i_1_n_0 ));
  CARRY4 \read_pointer_reg[8]_i_1 
       (.CI(\read_pointer_reg[4]_i_1_n_0 ),
        .CO({\read_pointer_reg[8]_i_1_n_0 ,\read_pointer_reg[8]_i_1_n_1 ,\read_pointer_reg[8]_i_1_n_2 ,\read_pointer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\read_pointer_reg[8]_i_1_n_4 ,\read_pointer_reg[8]_i_1_n_5 ,\read_pointer_reg[8]_i_1_n_6 ,\read_pointer_reg[8]_i_1_n_7 }),
        .S(out[11:8]));
  FDRE \read_pointer_reg[9] 
       (.C(m00_axis_aclk),
        .CE(tx_en),
        .D(\read_pointer_reg[8]_i_1_n_6 ),
        .Q(out[9]),
        .R(\read_pointer[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \stream_data_out[0]_i_1 
       (.I0(m00_axis_aresetn),
        .O(stream_data_out[0]));
  LUT5 #(
    .INIT(32'h20000000)) 
    \stream_data_out[0]_i_2 
       (.I0(out[0]),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(axis_tvalid0),
        .I4(m00_axis_tready),
        .O(\stream_data_out[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \stream_data_out[31]_i_1 
       (.I0(m00_axis_aresetn),
        .I1(mst_exec_state[0]),
        .I2(mst_exec_state[1]),
        .I3(axis_tvalid0),
        .I4(m00_axis_tready),
        .O(stream_data_out[31]));
  FDSE \stream_data_out_reg[0] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(\stream_data_out[0]_i_2_n_0 ),
        .Q(m00_axis_tdata[0]),
        .S(stream_data_out[0]));
  FDRE \stream_data_out_reg[10] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[10]),
        .Q(m00_axis_tdata[10]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[11] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[11]),
        .Q(m00_axis_tdata[11]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[12] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[12]),
        .Q(m00_axis_tdata[12]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[13] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[13]),
        .Q(m00_axis_tdata[13]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[14] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[14]),
        .Q(m00_axis_tdata[14]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[15] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[15]),
        .Q(m00_axis_tdata[15]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[16] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[16]),
        .Q(m00_axis_tdata[16]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[17] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[17]),
        .Q(m00_axis_tdata[17]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[18] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[18]),
        .Q(m00_axis_tdata[18]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[19] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[19]),
        .Q(m00_axis_tdata[19]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[1] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[1]),
        .Q(m00_axis_tdata[1]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[20] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[20]),
        .Q(m00_axis_tdata[20]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[21] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[21]),
        .Q(m00_axis_tdata[21]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[22] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[22]),
        .Q(m00_axis_tdata[22]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[23] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[23]),
        .Q(m00_axis_tdata[23]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[24] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[24]),
        .Q(m00_axis_tdata[24]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[25] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[25]),
        .Q(m00_axis_tdata[25]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[26] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[26]),
        .Q(m00_axis_tdata[26]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[27] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[27]),
        .Q(m00_axis_tdata[27]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[28] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[28]),
        .Q(m00_axis_tdata[28]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[29] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[29]),
        .Q(m00_axis_tdata[29]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[2] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[2]),
        .Q(m00_axis_tdata[2]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[30] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[30]),
        .Q(m00_axis_tdata[30]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[31] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[31]),
        .Q(m00_axis_tdata[31]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[3] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[3]),
        .Q(m00_axis_tdata[3]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[4] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[4]),
        .Q(m00_axis_tdata[4]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[5] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[5]),
        .Q(m00_axis_tdata[5]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[6] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[6]),
        .Q(m00_axis_tdata[6]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[7] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[7]),
        .Q(m00_axis_tdata[7]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[8] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[8]),
        .Q(m00_axis_tdata[8]),
        .R(stream_data_out[31]));
  FDRE \stream_data_out_reg[9] 
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(out[9]),
        .Q(m00_axis_tdata[9]),
        .R(stream_data_out[31]));
  LUT5 #(
    .INIT(32'hFFFF7000)) 
    tx_done_i_1
       (.I0(tx_en),
        .I1(read_pointer1),
        .I2(m00_axis_aresetn),
        .I3(tx_done_reg_n_0),
        .I4(axis_tlast),
        .O(tx_done_i_1_n_0));
  FDRE tx_done_reg
       (.C(m00_axis_aclk),
        .CE(1'b1),
        .D(tx_done_i_1_n_0),
        .Q(tx_done_reg_n_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s00_axi_bvalid,
    s00_axi_rvalid,
    \slv_reg0_reg[31]_0 ,
    Q,
    \slv_reg0_reg[28]_0 ,
    \slv_reg0_reg[24]_0 ,
    \slv_reg0_reg[20]_0 ,
    \slv_reg0_reg[16]_0 ,
    \slv_reg0_reg[12]_0 ,
    \slv_reg0_reg[8]_0 ,
    S,
    \slv_reg2_reg[6]_0 ,
    \slv_reg2_reg[30]_0 ,
    DI,
    \slv_reg2_reg[14]_0 ,
    \slv_reg2_reg[14]_1 ,
    \slv_reg2_reg[22]_0 ,
    \slv_reg2_reg[22]_1 ,
    \slv_reg2_reg[30]_1 ,
    \slv_reg2_reg[30]_2 ,
    \slv_reg2_reg[31]_0 ,
    \slv_reg2_reg[28]_0 ,
    \slv_reg2_reg[24]_0 ,
    \slv_reg2_reg[20]_0 ,
    \slv_reg2_reg[16]_0 ,
    \slv_reg2_reg[12]_0 ,
    \slv_reg2_reg[8]_0 ,
    \slv_reg2_reg[4]_0 ,
    \slv_reg3_reg[29]_0 ,
    \slv_reg1_reg[29]_0 ,
    s00_axi_rdata,
    s00_axi_aclk,
    out,
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
  output [2:0]\slv_reg0_reg[31]_0 ;
  output [30:0]Q;
  output [3:0]\slv_reg0_reg[28]_0 ;
  output [3:0]\slv_reg0_reg[24]_0 ;
  output [3:0]\slv_reg0_reg[20]_0 ;
  output [3:0]\slv_reg0_reg[16]_0 ;
  output [3:0]\slv_reg0_reg[12]_0 ;
  output [3:0]\slv_reg0_reg[8]_0 ;
  output [3:0]S;
  output [3:0]\slv_reg2_reg[6]_0 ;
  output [30:0]\slv_reg2_reg[30]_0 ;
  output [3:0]DI;
  output [3:0]\slv_reg2_reg[14]_0 ;
  output [3:0]\slv_reg2_reg[14]_1 ;
  output [3:0]\slv_reg2_reg[22]_0 ;
  output [3:0]\slv_reg2_reg[22]_1 ;
  output [3:0]\slv_reg2_reg[30]_1 ;
  output [3:0]\slv_reg2_reg[30]_2 ;
  output [2:0]\slv_reg2_reg[31]_0 ;
  output [3:0]\slv_reg2_reg[28]_0 ;
  output [3:0]\slv_reg2_reg[24]_0 ;
  output [3:0]\slv_reg2_reg[20]_0 ;
  output [3:0]\slv_reg2_reg[16]_0 ;
  output [3:0]\slv_reg2_reg[12]_0 ;
  output [3:0]\slv_reg2_reg[8]_0 ;
  output [3:0]\slv_reg2_reg[4]_0 ;
  output [29:0]\slv_reg3_reg[29]_0 ;
  output [29:0]\slv_reg1_reg[29]_0 ;
  output [31:0]s00_axi_rdata;
  input s00_axi_aclk;
  input [31:0]out;
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

  wire [3:0]DI;
  wire [31:31]DMA_MM2S_BUFF_LEN;
  wire [31:30]DMA_MM2S_START_ADDR;
  wire [31:31]DMA_S2MM_BUFF_LEN;
  wire [31:30]DMA_S2MM_START_ADDR;
  wire [30:0]Q;
  wire [3:0]S;
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
  wire [31:0]out;
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
  wire [3:0]\slv_reg0_reg[12]_0 ;
  wire [3:0]\slv_reg0_reg[16]_0 ;
  wire [3:0]\slv_reg0_reg[20]_0 ;
  wire [3:0]\slv_reg0_reg[24]_0 ;
  wire [3:0]\slv_reg0_reg[28]_0 ;
  wire [2:0]\slv_reg0_reg[31]_0 ;
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
  wire [3:0]\slv_reg2_reg[12]_0 ;
  wire [3:0]\slv_reg2_reg[14]_0 ;
  wire [3:0]\slv_reg2_reg[14]_1 ;
  wire [3:0]\slv_reg2_reg[16]_0 ;
  wire [3:0]\slv_reg2_reg[20]_0 ;
  wire [3:0]\slv_reg2_reg[22]_0 ;
  wire [3:0]\slv_reg2_reg[22]_1 ;
  wire [3:0]\slv_reg2_reg[24]_0 ;
  wire [3:0]\slv_reg2_reg[28]_0 ;
  wire [30:0]\slv_reg2_reg[30]_0 ;
  wire [3:0]\slv_reg2_reg[30]_1 ;
  wire [3:0]\slv_reg2_reg[30]_2 ;
  wire [2:0]\slv_reg2_reg[31]_0 ;
  wire [3:0]\slv_reg2_reg[4]_0 ;
  wire [3:0]\slv_reg2_reg[6]_0 ;
  wire [3:0]\slv_reg2_reg[8]_0 ;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [29:0]\slv_reg3_reg[29]_0 ;
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
       (.I0(\slv_reg3_reg[29]_0 [0]),
        .I1(\slv_reg2_reg[30]_0 [0]),
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
       (.I0(\slv_reg3_reg[29]_0 [10]),
        .I1(\slv_reg2_reg[30]_0 [10]),
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
       (.I0(\slv_reg3_reg[29]_0 [11]),
        .I1(\slv_reg2_reg[30]_0 [11]),
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
       (.I0(\slv_reg3_reg[29]_0 [12]),
        .I1(\slv_reg2_reg[30]_0 [12]),
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
       (.I0(\slv_reg3_reg[29]_0 [13]),
        .I1(\slv_reg2_reg[30]_0 [13]),
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
       (.I0(\slv_reg3_reg[29]_0 [14]),
        .I1(\slv_reg2_reg[30]_0 [14]),
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
       (.I0(\slv_reg3_reg[29]_0 [15]),
        .I1(\slv_reg2_reg[30]_0 [15]),
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
       (.I0(\slv_reg3_reg[29]_0 [16]),
        .I1(\slv_reg2_reg[30]_0 [16]),
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
       (.I0(\slv_reg3_reg[29]_0 [17]),
        .I1(\slv_reg2_reg[30]_0 [17]),
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
       (.I0(\slv_reg3_reg[29]_0 [18]),
        .I1(\slv_reg2_reg[30]_0 [18]),
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
       (.I0(\slv_reg3_reg[29]_0 [19]),
        .I1(\slv_reg2_reg[30]_0 [19]),
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
       (.I0(\slv_reg3_reg[29]_0 [1]),
        .I1(\slv_reg2_reg[30]_0 [1]),
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
       (.I0(\slv_reg3_reg[29]_0 [20]),
        .I1(\slv_reg2_reg[30]_0 [20]),
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
       (.I0(\slv_reg3_reg[29]_0 [21]),
        .I1(\slv_reg2_reg[30]_0 [21]),
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
       (.I0(\slv_reg3_reg[29]_0 [22]),
        .I1(\slv_reg2_reg[30]_0 [22]),
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
       (.I0(\slv_reg3_reg[29]_0 [23]),
        .I1(\slv_reg2_reg[30]_0 [23]),
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
       (.I0(\slv_reg3_reg[29]_0 [24]),
        .I1(\slv_reg2_reg[30]_0 [24]),
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
       (.I0(\slv_reg3_reg[29]_0 [25]),
        .I1(\slv_reg2_reg[30]_0 [25]),
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
       (.I0(\slv_reg3_reg[29]_0 [26]),
        .I1(\slv_reg2_reg[30]_0 [26]),
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
       (.I0(\slv_reg3_reg[29]_0 [27]),
        .I1(\slv_reg2_reg[30]_0 [27]),
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
       (.I0(\slv_reg3_reg[29]_0 [28]),
        .I1(\slv_reg2_reg[30]_0 [28]),
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
       (.I0(\slv_reg3_reg[29]_0 [29]),
        .I1(\slv_reg2_reg[30]_0 [29]),
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
       (.I0(\slv_reg3_reg[29]_0 [2]),
        .I1(\slv_reg2_reg[30]_0 [2]),
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
        .I1(\slv_reg2_reg[30]_0 [30]),
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
        .I1(DMA_S2MM_BUFF_LEN),
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
       (.I0(\slv_reg3_reg[29]_0 [3]),
        .I1(\slv_reg2_reg[30]_0 [3]),
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
       (.I0(\slv_reg3_reg[29]_0 [4]),
        .I1(\slv_reg2_reg[30]_0 [4]),
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
       (.I0(\slv_reg3_reg[29]_0 [5]),
        .I1(\slv_reg2_reg[30]_0 [5]),
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
       (.I0(\slv_reg3_reg[29]_0 [6]),
        .I1(\slv_reg2_reg[30]_0 [6]),
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
       (.I0(\slv_reg3_reg[29]_0 [7]),
        .I1(\slv_reg2_reg[30]_0 [7]),
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
       (.I0(\slv_reg3_reg[29]_0 [8]),
        .I1(\slv_reg2_reg[30]_0 [8]),
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
       (.I0(\slv_reg3_reg[29]_0 [9]),
        .I1(\slv_reg2_reg[30]_0 [9]),
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
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
    axis_tlast0_carry__0_i_1
       (.I0(\slv_reg2_reg[30]_0 [8]),
        .O(\slv_reg2_reg[8]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__0_i_2
       (.I0(\slv_reg2_reg[30]_0 [7]),
        .O(\slv_reg2_reg[8]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__0_i_3
       (.I0(\slv_reg2_reg[30]_0 [6]),
        .O(\slv_reg2_reg[8]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__0_i_4
       (.I0(\slv_reg2_reg[30]_0 [5]),
        .O(\slv_reg2_reg[8]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__1_i_1
       (.I0(\slv_reg2_reg[30]_0 [12]),
        .O(\slv_reg2_reg[12]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__1_i_2
       (.I0(\slv_reg2_reg[30]_0 [11]),
        .O(\slv_reg2_reg[12]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__1_i_3
       (.I0(\slv_reg2_reg[30]_0 [10]),
        .O(\slv_reg2_reg[12]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__1_i_4
       (.I0(\slv_reg2_reg[30]_0 [9]),
        .O(\slv_reg2_reg[12]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__2_i_1
       (.I0(\slv_reg2_reg[30]_0 [16]),
        .O(\slv_reg2_reg[16]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__2_i_2
       (.I0(\slv_reg2_reg[30]_0 [15]),
        .O(\slv_reg2_reg[16]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__2_i_3
       (.I0(\slv_reg2_reg[30]_0 [14]),
        .O(\slv_reg2_reg[16]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__2_i_4
       (.I0(\slv_reg2_reg[30]_0 [13]),
        .O(\slv_reg2_reg[16]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__3_i_1
       (.I0(\slv_reg2_reg[30]_0 [20]),
        .O(\slv_reg2_reg[20]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__3_i_2
       (.I0(\slv_reg2_reg[30]_0 [19]),
        .O(\slv_reg2_reg[20]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__3_i_3
       (.I0(\slv_reg2_reg[30]_0 [18]),
        .O(\slv_reg2_reg[20]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__3_i_4
       (.I0(\slv_reg2_reg[30]_0 [17]),
        .O(\slv_reg2_reg[20]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__4_i_1
       (.I0(\slv_reg2_reg[30]_0 [24]),
        .O(\slv_reg2_reg[24]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__4_i_2
       (.I0(\slv_reg2_reg[30]_0 [23]),
        .O(\slv_reg2_reg[24]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__4_i_3
       (.I0(\slv_reg2_reg[30]_0 [22]),
        .O(\slv_reg2_reg[24]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__4_i_4
       (.I0(\slv_reg2_reg[30]_0 [21]),
        .O(\slv_reg2_reg[24]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__5_i_1
       (.I0(\slv_reg2_reg[30]_0 [28]),
        .O(\slv_reg2_reg[28]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__5_i_2
       (.I0(\slv_reg2_reg[30]_0 [27]),
        .O(\slv_reg2_reg[28]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__5_i_3
       (.I0(\slv_reg2_reg[30]_0 [26]),
        .O(\slv_reg2_reg[28]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__5_i_4
       (.I0(\slv_reg2_reg[30]_0 [25]),
        .O(\slv_reg2_reg[28]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__6_i_1
       (.I0(DMA_S2MM_BUFF_LEN),
        .O(\slv_reg2_reg[31]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__6_i_2
       (.I0(\slv_reg2_reg[30]_0 [30]),
        .O(\slv_reg2_reg[31]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry__6_i_3
       (.I0(\slv_reg2_reg[30]_0 [29]),
        .O(\slv_reg2_reg[31]_0 [0]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry_i_1
       (.I0(\slv_reg2_reg[30]_0 [4]),
        .O(\slv_reg2_reg[4]_0 [3]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry_i_2
       (.I0(\slv_reg2_reg[30]_0 [3]),
        .O(\slv_reg2_reg[4]_0 [2]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry_i_3
       (.I0(\slv_reg2_reg[30]_0 [2]),
        .O(\slv_reg2_reg[4]_0 [1]));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tlast0_carry_i_4
       (.I0(\slv_reg2_reg[30]_0 [1]),
        .O(\slv_reg2_reg[4]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__0_i_1
       (.I0(\slv_reg2_reg[30]_0 [14]),
        .I1(out[14]),
        .I2(out[15]),
        .I3(\slv_reg2_reg[30]_0 [15]),
        .O(\slv_reg2_reg[14]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__0_i_2
       (.I0(\slv_reg2_reg[30]_0 [12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(\slv_reg2_reg[30]_0 [13]),
        .O(\slv_reg2_reg[14]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__0_i_3
       (.I0(\slv_reg2_reg[30]_0 [10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(\slv_reg2_reg[30]_0 [11]),
        .O(\slv_reg2_reg[14]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__0_i_4
       (.I0(\slv_reg2_reg[30]_0 [8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(\slv_reg2_reg[30]_0 [9]),
        .O(\slv_reg2_reg[14]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__0_i_5
       (.I0(\slv_reg2_reg[30]_0 [14]),
        .I1(out[14]),
        .I2(\slv_reg2_reg[30]_0 [15]),
        .I3(out[15]),
        .O(\slv_reg2_reg[14]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__0_i_6
       (.I0(\slv_reg2_reg[30]_0 [12]),
        .I1(out[12]),
        .I2(\slv_reg2_reg[30]_0 [13]),
        .I3(out[13]),
        .O(\slv_reg2_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__0_i_7
       (.I0(\slv_reg2_reg[30]_0 [10]),
        .I1(out[10]),
        .I2(\slv_reg2_reg[30]_0 [11]),
        .I3(out[11]),
        .O(\slv_reg2_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__0_i_8
       (.I0(\slv_reg2_reg[30]_0 [8]),
        .I1(out[8]),
        .I2(\slv_reg2_reg[30]_0 [9]),
        .I3(out[9]),
        .O(\slv_reg2_reg[14]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__1_i_1
       (.I0(\slv_reg2_reg[30]_0 [22]),
        .I1(out[22]),
        .I2(out[23]),
        .I3(\slv_reg2_reg[30]_0 [23]),
        .O(\slv_reg2_reg[22]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__1_i_2
       (.I0(\slv_reg2_reg[30]_0 [20]),
        .I1(out[20]),
        .I2(out[21]),
        .I3(\slv_reg2_reg[30]_0 [21]),
        .O(\slv_reg2_reg[22]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__1_i_3
       (.I0(\slv_reg2_reg[30]_0 [18]),
        .I1(out[18]),
        .I2(out[19]),
        .I3(\slv_reg2_reg[30]_0 [19]),
        .O(\slv_reg2_reg[22]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__1_i_4
       (.I0(\slv_reg2_reg[30]_0 [16]),
        .I1(out[16]),
        .I2(out[17]),
        .I3(\slv_reg2_reg[30]_0 [17]),
        .O(\slv_reg2_reg[22]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__1_i_5
       (.I0(\slv_reg2_reg[30]_0 [22]),
        .I1(out[22]),
        .I2(\slv_reg2_reg[30]_0 [23]),
        .I3(out[23]),
        .O(\slv_reg2_reg[22]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__1_i_6
       (.I0(\slv_reg2_reg[30]_0 [20]),
        .I1(out[20]),
        .I2(\slv_reg2_reg[30]_0 [21]),
        .I3(out[21]),
        .O(\slv_reg2_reg[22]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__1_i_7
       (.I0(\slv_reg2_reg[30]_0 [18]),
        .I1(out[18]),
        .I2(\slv_reg2_reg[30]_0 [19]),
        .I3(out[19]),
        .O(\slv_reg2_reg[22]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__1_i_8
       (.I0(\slv_reg2_reg[30]_0 [16]),
        .I1(out[16]),
        .I2(\slv_reg2_reg[30]_0 [17]),
        .I3(out[17]),
        .O(\slv_reg2_reg[22]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__2_i_1
       (.I0(\slv_reg2_reg[30]_0 [30]),
        .I1(out[30]),
        .I2(out[31]),
        .I3(DMA_S2MM_BUFF_LEN),
        .O(\slv_reg2_reg[30]_2 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__2_i_2
       (.I0(\slv_reg2_reg[30]_0 [28]),
        .I1(out[28]),
        .I2(out[29]),
        .I3(\slv_reg2_reg[30]_0 [29]),
        .O(\slv_reg2_reg[30]_2 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__2_i_3
       (.I0(\slv_reg2_reg[30]_0 [26]),
        .I1(out[26]),
        .I2(out[27]),
        .I3(\slv_reg2_reg[30]_0 [27]),
        .O(\slv_reg2_reg[30]_2 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry__2_i_4
       (.I0(\slv_reg2_reg[30]_0 [24]),
        .I1(out[24]),
        .I2(out[25]),
        .I3(\slv_reg2_reg[30]_0 [25]),
        .O(\slv_reg2_reg[30]_2 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__2_i_5
       (.I0(\slv_reg2_reg[30]_0 [30]),
        .I1(out[30]),
        .I2(DMA_S2MM_BUFF_LEN),
        .I3(out[31]),
        .O(\slv_reg2_reg[30]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__2_i_6
       (.I0(\slv_reg2_reg[30]_0 [28]),
        .I1(out[28]),
        .I2(\slv_reg2_reg[30]_0 [29]),
        .I3(out[29]),
        .O(\slv_reg2_reg[30]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__2_i_7
       (.I0(\slv_reg2_reg[30]_0 [26]),
        .I1(out[26]),
        .I2(\slv_reg2_reg[30]_0 [27]),
        .I3(out[27]),
        .O(\slv_reg2_reg[30]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry__2_i_8
       (.I0(\slv_reg2_reg[30]_0 [24]),
        .I1(out[24]),
        .I2(\slv_reg2_reg[30]_0 [25]),
        .I3(out[25]),
        .O(\slv_reg2_reg[30]_1 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry_i_1
       (.I0(\slv_reg2_reg[30]_0 [6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(\slv_reg2_reg[30]_0 [7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry_i_2
       (.I0(\slv_reg2_reg[30]_0 [4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(\slv_reg2_reg[30]_0 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry_i_3
       (.I0(\slv_reg2_reg[30]_0 [2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(\slv_reg2_reg[30]_0 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    axis_tvalid0_carry_i_4
       (.I0(\slv_reg2_reg[30]_0 [0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\slv_reg2_reg[30]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry_i_5
       (.I0(\slv_reg2_reg[30]_0 [6]),
        .I1(out[6]),
        .I2(\slv_reg2_reg[30]_0 [7]),
        .I3(out[7]),
        .O(\slv_reg2_reg[6]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry_i_6
       (.I0(\slv_reg2_reg[30]_0 [4]),
        .I1(out[4]),
        .I2(\slv_reg2_reg[30]_0 [5]),
        .I3(out[5]),
        .O(\slv_reg2_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry_i_7
       (.I0(\slv_reg2_reg[30]_0 [2]),
        .I1(out[2]),
        .I2(\slv_reg2_reg[30]_0 [3]),
        .I3(out[3]),
        .O(\slv_reg2_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    axis_tvalid0_carry_i_8
       (.I0(\slv_reg2_reg[30]_0 [0]),
        .I1(out[0]),
        .I2(\slv_reg2_reg[30]_0 [1]),
        .I3(out[1]),
        .O(\slv_reg2_reg[6]_0 [0]));
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
        .Q(\slv_reg2_reg[30]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg2_reg[30]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg2_reg[30]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg2_reg[30]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg2_reg[30]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg2_reg[30]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg2_reg[30]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg2_reg[30]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg2_reg[30]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg2_reg[30]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg2_reg[30]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg2_reg[30]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg2_reg[30]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg2_reg[30]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg2_reg[30]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg2_reg[30]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg2_reg[30]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg2_reg[30]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg2_reg[30]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg2_reg[30]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg2_reg[30]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg2_reg[30]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg2_reg[30]_0 [2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg2_reg[30]_0 [30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(DMA_S2MM_BUFF_LEN),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg2_reg[30]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg2_reg[30]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg2_reg[30]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg2_reg[30]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg2_reg[30]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg2_reg[30]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg2_reg[30]_0 [9]),
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
        .Q(\slv_reg3_reg[29]_0 [0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg3_reg[29]_0 [10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg3_reg[29]_0 [11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg3_reg[29]_0 [12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg3_reg[29]_0 [13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg3_reg[29]_0 [14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg3_reg[29]_0 [15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg3_reg[29]_0 [16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg3_reg[29]_0 [17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg3_reg[29]_0 [18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg3_reg[29]_0 [19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg3_reg[29]_0 [1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg3_reg[29]_0 [20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg3_reg[29]_0 [21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg3_reg[29]_0 [22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg3_reg[29]_0 [23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg3_reg[29]_0 [24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg3_reg[29]_0 [25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg3_reg[29]_0 [26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg3_reg[29]_0 [27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg3_reg[29]_0 [28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg3_reg[29]_0 [29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg3_reg[29]_0 [2]),
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
        .Q(\slv_reg3_reg[29]_0 [3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg3_reg[29]_0 [4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg3_reg[29]_0 [5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg3_reg[29]_0 [6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg3_reg[29]_0 [7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg3_reg[29]_0 [8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg3_reg[29]_0 [9]),
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
        .O(S[3]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_2
       (.I0(Q[3]),
        .O(S[2]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_3
       (.I0(Q[2]),
        .O(S[1]));
  LUT1 #(
    .INIT(2'h1)) 
    write_pointer2_carry_i_4
       (.I0(Q[1]),
        .O(S[0]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS
   (\we_reg[3]_0 ,
    en,
    addr,
    dout,
    Q,
    S,
    write_pointer1_carry_i_6_0,
    write_pointer1_carry__0_i_8_0,
    write_pointer1_carry__0_i_6_0,
    write_pointer1_carry__1_i_8_0,
    write_pointer1_carry__1_i_6_0,
    write_pointer1_carry__2_i_8_0,
    write_pointer1_carry__2_i_6_0,
    s00_axis_aclk,
    s00_axis_aresetn,
    s00_axis_tvalid,
    s00_axis_tlast,
    \addr_to_bram_reg[29]_0 ,
    m00_axis_tready,
    done_cal,
    fifo_addr,
    s00_axis_tdata);
  output \we_reg[3]_0 ;
  output en;
  output [29:0]addr;
  output [31:0]dout;
  input [30:0]Q;
  input [3:0]S;
  input [3:0]write_pointer1_carry_i_6_0;
  input [3:0]write_pointer1_carry__0_i_8_0;
  input [3:0]write_pointer1_carry__0_i_6_0;
  input [3:0]write_pointer1_carry__1_i_8_0;
  input [3:0]write_pointer1_carry__1_i_6_0;
  input [3:0]write_pointer1_carry__2_i_8_0;
  input [2:0]write_pointer1_carry__2_i_6_0;
  input s00_axis_aclk;
  input s00_axis_aresetn;
  input s00_axis_tvalid;
  input s00_axis_tlast;
  input [29:0]\addr_to_bram_reg[29]_0 ;
  input m00_axis_tready;
  input done_cal;
  input [29:0]fifo_addr;
  input [31:0]s00_axis_tdata;

  wire [30:0]Q;
  wire [3:0]S;
  wire [29:0]addr;
  wire [29:0]addr_to_bram;
  wire addr_to_bram0_carry__0_i_1_n_0;
  wire addr_to_bram0_carry__0_i_2_n_0;
  wire addr_to_bram0_carry__0_i_3_n_0;
  wire addr_to_bram0_carry__0_i_4_n_0;
  wire addr_to_bram0_carry__0_n_0;
  wire addr_to_bram0_carry__0_n_1;
  wire addr_to_bram0_carry__0_n_2;
  wire addr_to_bram0_carry__0_n_3;
  wire addr_to_bram0_carry__1_i_1_n_0;
  wire addr_to_bram0_carry__1_i_2_n_0;
  wire addr_to_bram0_carry__1_i_3_n_0;
  wire addr_to_bram0_carry__1_i_4_n_0;
  wire addr_to_bram0_carry__1_n_0;
  wire addr_to_bram0_carry__1_n_1;
  wire addr_to_bram0_carry__1_n_2;
  wire addr_to_bram0_carry__1_n_3;
  wire addr_to_bram0_carry__2_i_1_n_0;
  wire addr_to_bram0_carry__2_i_2_n_0;
  wire addr_to_bram0_carry__2_i_3_n_0;
  wire addr_to_bram0_carry__2_i_4_n_0;
  wire addr_to_bram0_carry__2_n_0;
  wire addr_to_bram0_carry__2_n_1;
  wire addr_to_bram0_carry__2_n_2;
  wire addr_to_bram0_carry__2_n_3;
  wire addr_to_bram0_carry__3_i_1_n_0;
  wire addr_to_bram0_carry__3_i_2_n_0;
  wire addr_to_bram0_carry__3_i_3_n_0;
  wire addr_to_bram0_carry__3_i_4_n_0;
  wire addr_to_bram0_carry__3_n_0;
  wire addr_to_bram0_carry__3_n_1;
  wire addr_to_bram0_carry__3_n_2;
  wire addr_to_bram0_carry__3_n_3;
  wire addr_to_bram0_carry__4_i_1_n_0;
  wire addr_to_bram0_carry__4_i_2_n_0;
  wire addr_to_bram0_carry__4_i_3_n_0;
  wire addr_to_bram0_carry__4_i_4_n_0;
  wire addr_to_bram0_carry__4_n_0;
  wire addr_to_bram0_carry__4_n_1;
  wire addr_to_bram0_carry__4_n_2;
  wire addr_to_bram0_carry__4_n_3;
  wire addr_to_bram0_carry__5_i_1_n_0;
  wire addr_to_bram0_carry__5_i_2_n_0;
  wire addr_to_bram0_carry__5_i_3_n_0;
  wire addr_to_bram0_carry__5_i_4_n_0;
  wire addr_to_bram0_carry__5_n_0;
  wire addr_to_bram0_carry__5_n_1;
  wire addr_to_bram0_carry__5_n_2;
  wire addr_to_bram0_carry__5_n_3;
  wire addr_to_bram0_carry__6_i_1_n_0;
  wire addr_to_bram0_carry__6_i_2_n_0;
  wire addr_to_bram0_carry__6_n_3;
  wire addr_to_bram0_carry_i_1_n_0;
  wire addr_to_bram0_carry_i_2_n_0;
  wire addr_to_bram0_carry_i_3_n_0;
  wire addr_to_bram0_carry_i_4_n_0;
  wire addr_to_bram0_carry_n_0;
  wire addr_to_bram0_carry_n_1;
  wire addr_to_bram0_carry_n_2;
  wire addr_to_bram0_carry_n_3;
  wire [29:0]\addr_to_bram_reg[29]_0 ;
  wire \data_to_bram[31]_i_2_n_0 ;
  wire done_cal;
  wire [31:0]dout;
  wire en;
  wire [29:0]fifo_addr;
  wire m00_axis_tready;
  wire p_0_in;
  wire [29:0]p_1_in;
  wire s00_axis_aclk;
  wire s00_axis_aresetn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tvalid;
  wire we1_carry__0_i_1_n_0;
  wire we1_carry__0_i_2_n_0;
  wire we1_carry__0_i_3_n_0;
  wire we1_carry__0_i_4_n_0;
  wire we1_carry__0_n_0;
  wire we1_carry__0_n_1;
  wire we1_carry__0_n_2;
  wire we1_carry__0_n_3;
  wire we1_carry__1_i_1_n_0;
  wire we1_carry__1_i_2_n_0;
  wire we1_carry__1_i_3_n_0;
  wire we1_carry__1_n_1;
  wire we1_carry__1_n_2;
  wire we1_carry__1_n_3;
  wire we1_carry_i_1_n_0;
  wire we1_carry_i_2_n_0;
  wire we1_carry_i_3_n_0;
  wire we1_carry_i_4_n_0;
  wire we1_carry_n_0;
  wire we1_carry_n_1;
  wire we1_carry_n_2;
  wire we1_carry_n_3;
  wire \we[3]_i_1_n_0 ;
  wire \we_reg[3]_0 ;
  wire write_pointer1_carry__0_i_1_n_0;
  wire write_pointer1_carry__0_i_2_n_0;
  wire write_pointer1_carry__0_i_3_n_0;
  wire write_pointer1_carry__0_i_4_n_0;
  wire write_pointer1_carry__0_i_5_n_0;
  wire [3:0]write_pointer1_carry__0_i_6_0;
  wire write_pointer1_carry__0_i_6_n_0;
  wire write_pointer1_carry__0_i_7_n_0;
  wire [3:0]write_pointer1_carry__0_i_8_0;
  wire write_pointer1_carry__0_i_8_n_0;
  wire write_pointer1_carry__0_n_0;
  wire write_pointer1_carry__0_n_1;
  wire write_pointer1_carry__0_n_2;
  wire write_pointer1_carry__0_n_3;
  wire write_pointer1_carry__1_i_1_n_0;
  wire write_pointer1_carry__1_i_2_n_0;
  wire write_pointer1_carry__1_i_3_n_0;
  wire write_pointer1_carry__1_i_4_n_0;
  wire write_pointer1_carry__1_i_5_n_0;
  wire [3:0]write_pointer1_carry__1_i_6_0;
  wire write_pointer1_carry__1_i_6_n_0;
  wire write_pointer1_carry__1_i_7_n_0;
  wire [3:0]write_pointer1_carry__1_i_8_0;
  wire write_pointer1_carry__1_i_8_n_0;
  wire write_pointer1_carry__1_n_0;
  wire write_pointer1_carry__1_n_1;
  wire write_pointer1_carry__1_n_2;
  wire write_pointer1_carry__1_n_3;
  wire write_pointer1_carry__2_i_1_n_0;
  wire write_pointer1_carry__2_i_2_n_0;
  wire write_pointer1_carry__2_i_3_n_0;
  wire write_pointer1_carry__2_i_4_n_0;
  wire write_pointer1_carry__2_i_5_n_0;
  wire [2:0]write_pointer1_carry__2_i_6_0;
  wire write_pointer1_carry__2_i_6_n_0;
  wire write_pointer1_carry__2_i_7_n_0;
  wire [3:0]write_pointer1_carry__2_i_8_0;
  wire write_pointer1_carry__2_i_8_n_0;
  wire write_pointer1_carry__2_n_0;
  wire write_pointer1_carry__2_n_1;
  wire write_pointer1_carry__2_n_2;
  wire write_pointer1_carry__2_n_3;
  wire write_pointer1_carry_i_1_n_0;
  wire write_pointer1_carry_i_2_n_0;
  wire write_pointer1_carry_i_3_n_0;
  wire write_pointer1_carry_i_4_n_0;
  wire write_pointer1_carry_i_5_n_0;
  wire [3:0]write_pointer1_carry_i_6_0;
  wire write_pointer1_carry_i_6_n_0;
  wire write_pointer1_carry_i_7_n_0;
  wire write_pointer1_carry_i_8_n_0;
  wire write_pointer1_carry_n_0;
  wire write_pointer1_carry_n_1;
  wire write_pointer1_carry_n_2;
  wire write_pointer1_carry_n_3;
  wire [31:1]write_pointer2;
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
  wire \write_pointer[0]_i_1_n_0 ;
  wire \write_pointer[0]_i_3_n_0 ;
  wire [31:0]write_pointer_reg;
  wire \write_pointer_reg[0]_i_2_n_0 ;
  wire \write_pointer_reg[0]_i_2_n_1 ;
  wire \write_pointer_reg[0]_i_2_n_2 ;
  wire \write_pointer_reg[0]_i_2_n_3 ;
  wire \write_pointer_reg[0]_i_2_n_4 ;
  wire \write_pointer_reg[0]_i_2_n_5 ;
  wire \write_pointer_reg[0]_i_2_n_6 ;
  wire \write_pointer_reg[0]_i_2_n_7 ;
  wire \write_pointer_reg[12]_i_1_n_0 ;
  wire \write_pointer_reg[12]_i_1_n_1 ;
  wire \write_pointer_reg[12]_i_1_n_2 ;
  wire \write_pointer_reg[12]_i_1_n_3 ;
  wire \write_pointer_reg[12]_i_1_n_4 ;
  wire \write_pointer_reg[12]_i_1_n_5 ;
  wire \write_pointer_reg[12]_i_1_n_6 ;
  wire \write_pointer_reg[12]_i_1_n_7 ;
  wire \write_pointer_reg[16]_i_1_n_0 ;
  wire \write_pointer_reg[16]_i_1_n_1 ;
  wire \write_pointer_reg[16]_i_1_n_2 ;
  wire \write_pointer_reg[16]_i_1_n_3 ;
  wire \write_pointer_reg[16]_i_1_n_4 ;
  wire \write_pointer_reg[16]_i_1_n_5 ;
  wire \write_pointer_reg[16]_i_1_n_6 ;
  wire \write_pointer_reg[16]_i_1_n_7 ;
  wire \write_pointer_reg[20]_i_1_n_0 ;
  wire \write_pointer_reg[20]_i_1_n_1 ;
  wire \write_pointer_reg[20]_i_1_n_2 ;
  wire \write_pointer_reg[20]_i_1_n_3 ;
  wire \write_pointer_reg[20]_i_1_n_4 ;
  wire \write_pointer_reg[20]_i_1_n_5 ;
  wire \write_pointer_reg[20]_i_1_n_6 ;
  wire \write_pointer_reg[20]_i_1_n_7 ;
  wire \write_pointer_reg[24]_i_1_n_0 ;
  wire \write_pointer_reg[24]_i_1_n_1 ;
  wire \write_pointer_reg[24]_i_1_n_2 ;
  wire \write_pointer_reg[24]_i_1_n_3 ;
  wire \write_pointer_reg[24]_i_1_n_4 ;
  wire \write_pointer_reg[24]_i_1_n_5 ;
  wire \write_pointer_reg[24]_i_1_n_6 ;
  wire \write_pointer_reg[24]_i_1_n_7 ;
  wire \write_pointer_reg[28]_i_1_n_1 ;
  wire \write_pointer_reg[28]_i_1_n_2 ;
  wire \write_pointer_reg[28]_i_1_n_3 ;
  wire \write_pointer_reg[28]_i_1_n_4 ;
  wire \write_pointer_reg[28]_i_1_n_5 ;
  wire \write_pointer_reg[28]_i_1_n_6 ;
  wire \write_pointer_reg[28]_i_1_n_7 ;
  wire \write_pointer_reg[4]_i_1_n_0 ;
  wire \write_pointer_reg[4]_i_1_n_1 ;
  wire \write_pointer_reg[4]_i_1_n_2 ;
  wire \write_pointer_reg[4]_i_1_n_3 ;
  wire \write_pointer_reg[4]_i_1_n_4 ;
  wire \write_pointer_reg[4]_i_1_n_5 ;
  wire \write_pointer_reg[4]_i_1_n_6 ;
  wire \write_pointer_reg[4]_i_1_n_7 ;
  wire \write_pointer_reg[8]_i_1_n_0 ;
  wire \write_pointer_reg[8]_i_1_n_1 ;
  wire \write_pointer_reg[8]_i_1_n_2 ;
  wire \write_pointer_reg[8]_i_1_n_3 ;
  wire \write_pointer_reg[8]_i_1_n_4 ;
  wire \write_pointer_reg[8]_i_1_n_5 ;
  wire \write_pointer_reg[8]_i_1_n_6 ;
  wire \write_pointer_reg[8]_i_1_n_7 ;
  wire [3:1]NLW_addr_to_bram0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_addr_to_bram0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_we1_carry_O_UNCONNECTED;
  wire [3:0]NLW_we1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_we1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_we1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_write_pointer1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_write_pointer2_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_write_pointer2_carry__6_O_UNCONNECTED;
  wire [3:3]\NLW_write_pointer_reg[28]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[10]_INST_0 
       (.I0(addr_to_bram[8]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[8]),
        .O(addr[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[11]_INST_0 
       (.I0(addr_to_bram[9]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[9]),
        .O(addr[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[12]_INST_0 
       (.I0(addr_to_bram[10]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[10]),
        .O(addr[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[13]_INST_0 
       (.I0(addr_to_bram[11]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[11]),
        .O(addr[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[14]_INST_0 
       (.I0(addr_to_bram[12]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[12]),
        .O(addr[12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[15]_INST_0 
       (.I0(addr_to_bram[13]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[13]),
        .O(addr[13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[16]_INST_0 
       (.I0(addr_to_bram[14]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[14]),
        .O(addr[14]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[17]_INST_0 
       (.I0(addr_to_bram[15]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[15]),
        .O(addr[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[18]_INST_0 
       (.I0(addr_to_bram[16]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[16]),
        .O(addr[16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[19]_INST_0 
       (.I0(addr_to_bram[17]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[17]),
        .O(addr[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[20]_INST_0 
       (.I0(addr_to_bram[18]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[18]),
        .O(addr[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[21]_INST_0 
       (.I0(addr_to_bram[19]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[19]),
        .O(addr[19]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[22]_INST_0 
       (.I0(addr_to_bram[20]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[20]),
        .O(addr[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[23]_INST_0 
       (.I0(addr_to_bram[21]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[21]),
        .O(addr[21]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[24]_INST_0 
       (.I0(addr_to_bram[22]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[22]),
        .O(addr[22]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[25]_INST_0 
       (.I0(addr_to_bram[23]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[23]),
        .O(addr[23]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[26]_INST_0 
       (.I0(addr_to_bram[24]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[24]),
        .O(addr[24]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[27]_INST_0 
       (.I0(addr_to_bram[25]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[25]),
        .O(addr[25]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[28]_INST_0 
       (.I0(addr_to_bram[26]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[26]),
        .O(addr[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[29]_INST_0 
       (.I0(addr_to_bram[27]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[27]),
        .O(addr[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[2]_INST_0 
       (.I0(addr_to_bram[0]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[0]),
        .O(addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[30]_INST_0 
       (.I0(addr_to_bram[28]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[28]),
        .O(addr[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[31]_INST_0 
       (.I0(addr_to_bram[29]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[29]),
        .O(addr[29]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[3]_INST_0 
       (.I0(addr_to_bram[1]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[1]),
        .O(addr[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[4]_INST_0 
       (.I0(addr_to_bram[2]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[2]),
        .O(addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[5]_INST_0 
       (.I0(addr_to_bram[3]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[3]),
        .O(addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[6]_INST_0 
       (.I0(addr_to_bram[4]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[4]),
        .O(addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[7]_INST_0 
       (.I0(addr_to_bram[5]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[5]),
        .O(addr[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[8]_INST_0 
       (.I0(addr_to_bram[6]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[6]),
        .O(addr[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addr[9]_INST_0 
       (.I0(addr_to_bram[7]),
        .I1(\we_reg[3]_0 ),
        .I2(fifo_addr[7]),
        .O(addr[7]));
  CARRY4 addr_to_bram0_carry
       (.CI(1'b0),
        .CO({addr_to_bram0_carry_n_0,addr_to_bram0_carry_n_1,addr_to_bram0_carry_n_2,addr_to_bram0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[3:0]),
        .O(p_1_in[3:0]),
        .S({addr_to_bram0_carry_i_1_n_0,addr_to_bram0_carry_i_2_n_0,addr_to_bram0_carry_i_3_n_0,addr_to_bram0_carry_i_4_n_0}));
  CARRY4 addr_to_bram0_carry__0
       (.CI(addr_to_bram0_carry_n_0),
        .CO({addr_to_bram0_carry__0_n_0,addr_to_bram0_carry__0_n_1,addr_to_bram0_carry__0_n_2,addr_to_bram0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[7:4]),
        .O(p_1_in[7:4]),
        .S({addr_to_bram0_carry__0_i_1_n_0,addr_to_bram0_carry__0_i_2_n_0,addr_to_bram0_carry__0_i_3_n_0,addr_to_bram0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__0_i_1
       (.I0(write_pointer_reg[7]),
        .I1(\addr_to_bram_reg[29]_0 [7]),
        .O(addr_to_bram0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__0_i_2
       (.I0(write_pointer_reg[6]),
        .I1(\addr_to_bram_reg[29]_0 [6]),
        .O(addr_to_bram0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__0_i_3
       (.I0(write_pointer_reg[5]),
        .I1(\addr_to_bram_reg[29]_0 [5]),
        .O(addr_to_bram0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__0_i_4
       (.I0(write_pointer_reg[4]),
        .I1(\addr_to_bram_reg[29]_0 [4]),
        .O(addr_to_bram0_carry__0_i_4_n_0));
  CARRY4 addr_to_bram0_carry__1
       (.CI(addr_to_bram0_carry__0_n_0),
        .CO({addr_to_bram0_carry__1_n_0,addr_to_bram0_carry__1_n_1,addr_to_bram0_carry__1_n_2,addr_to_bram0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[11:8]),
        .O(p_1_in[11:8]),
        .S({addr_to_bram0_carry__1_i_1_n_0,addr_to_bram0_carry__1_i_2_n_0,addr_to_bram0_carry__1_i_3_n_0,addr_to_bram0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__1_i_1
       (.I0(write_pointer_reg[11]),
        .I1(\addr_to_bram_reg[29]_0 [11]),
        .O(addr_to_bram0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__1_i_2
       (.I0(write_pointer_reg[10]),
        .I1(\addr_to_bram_reg[29]_0 [10]),
        .O(addr_to_bram0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__1_i_3
       (.I0(write_pointer_reg[9]),
        .I1(\addr_to_bram_reg[29]_0 [9]),
        .O(addr_to_bram0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__1_i_4
       (.I0(write_pointer_reg[8]),
        .I1(\addr_to_bram_reg[29]_0 [8]),
        .O(addr_to_bram0_carry__1_i_4_n_0));
  CARRY4 addr_to_bram0_carry__2
       (.CI(addr_to_bram0_carry__1_n_0),
        .CO({addr_to_bram0_carry__2_n_0,addr_to_bram0_carry__2_n_1,addr_to_bram0_carry__2_n_2,addr_to_bram0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[15:12]),
        .O(p_1_in[15:12]),
        .S({addr_to_bram0_carry__2_i_1_n_0,addr_to_bram0_carry__2_i_2_n_0,addr_to_bram0_carry__2_i_3_n_0,addr_to_bram0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__2_i_1
       (.I0(write_pointer_reg[15]),
        .I1(\addr_to_bram_reg[29]_0 [15]),
        .O(addr_to_bram0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__2_i_2
       (.I0(write_pointer_reg[14]),
        .I1(\addr_to_bram_reg[29]_0 [14]),
        .O(addr_to_bram0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__2_i_3
       (.I0(write_pointer_reg[13]),
        .I1(\addr_to_bram_reg[29]_0 [13]),
        .O(addr_to_bram0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__2_i_4
       (.I0(write_pointer_reg[12]),
        .I1(\addr_to_bram_reg[29]_0 [12]),
        .O(addr_to_bram0_carry__2_i_4_n_0));
  CARRY4 addr_to_bram0_carry__3
       (.CI(addr_to_bram0_carry__2_n_0),
        .CO({addr_to_bram0_carry__3_n_0,addr_to_bram0_carry__3_n_1,addr_to_bram0_carry__3_n_2,addr_to_bram0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[19:16]),
        .O(p_1_in[19:16]),
        .S({addr_to_bram0_carry__3_i_1_n_0,addr_to_bram0_carry__3_i_2_n_0,addr_to_bram0_carry__3_i_3_n_0,addr_to_bram0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__3_i_1
       (.I0(write_pointer_reg[19]),
        .I1(\addr_to_bram_reg[29]_0 [19]),
        .O(addr_to_bram0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__3_i_2
       (.I0(write_pointer_reg[18]),
        .I1(\addr_to_bram_reg[29]_0 [18]),
        .O(addr_to_bram0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__3_i_3
       (.I0(write_pointer_reg[17]),
        .I1(\addr_to_bram_reg[29]_0 [17]),
        .O(addr_to_bram0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__3_i_4
       (.I0(write_pointer_reg[16]),
        .I1(\addr_to_bram_reg[29]_0 [16]),
        .O(addr_to_bram0_carry__3_i_4_n_0));
  CARRY4 addr_to_bram0_carry__4
       (.CI(addr_to_bram0_carry__3_n_0),
        .CO({addr_to_bram0_carry__4_n_0,addr_to_bram0_carry__4_n_1,addr_to_bram0_carry__4_n_2,addr_to_bram0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[23:20]),
        .O(p_1_in[23:20]),
        .S({addr_to_bram0_carry__4_i_1_n_0,addr_to_bram0_carry__4_i_2_n_0,addr_to_bram0_carry__4_i_3_n_0,addr_to_bram0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__4_i_1
       (.I0(write_pointer_reg[23]),
        .I1(\addr_to_bram_reg[29]_0 [23]),
        .O(addr_to_bram0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__4_i_2
       (.I0(write_pointer_reg[22]),
        .I1(\addr_to_bram_reg[29]_0 [22]),
        .O(addr_to_bram0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__4_i_3
       (.I0(write_pointer_reg[21]),
        .I1(\addr_to_bram_reg[29]_0 [21]),
        .O(addr_to_bram0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__4_i_4
       (.I0(write_pointer_reg[20]),
        .I1(\addr_to_bram_reg[29]_0 [20]),
        .O(addr_to_bram0_carry__4_i_4_n_0));
  CARRY4 addr_to_bram0_carry__5
       (.CI(addr_to_bram0_carry__4_n_0),
        .CO({addr_to_bram0_carry__5_n_0,addr_to_bram0_carry__5_n_1,addr_to_bram0_carry__5_n_2,addr_to_bram0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(write_pointer_reg[27:24]),
        .O(p_1_in[27:24]),
        .S({addr_to_bram0_carry__5_i_1_n_0,addr_to_bram0_carry__5_i_2_n_0,addr_to_bram0_carry__5_i_3_n_0,addr_to_bram0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__5_i_1
       (.I0(write_pointer_reg[27]),
        .I1(\addr_to_bram_reg[29]_0 [27]),
        .O(addr_to_bram0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__5_i_2
       (.I0(write_pointer_reg[26]),
        .I1(\addr_to_bram_reg[29]_0 [26]),
        .O(addr_to_bram0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__5_i_3
       (.I0(write_pointer_reg[25]),
        .I1(\addr_to_bram_reg[29]_0 [25]),
        .O(addr_to_bram0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__5_i_4
       (.I0(write_pointer_reg[24]),
        .I1(\addr_to_bram_reg[29]_0 [24]),
        .O(addr_to_bram0_carry__5_i_4_n_0));
  CARRY4 addr_to_bram0_carry__6
       (.CI(addr_to_bram0_carry__5_n_0),
        .CO({NLW_addr_to_bram0_carry__6_CO_UNCONNECTED[3:1],addr_to_bram0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,write_pointer_reg[28]}),
        .O({NLW_addr_to_bram0_carry__6_O_UNCONNECTED[3:2],p_1_in[29:28]}),
        .S({1'b0,1'b0,addr_to_bram0_carry__6_i_1_n_0,addr_to_bram0_carry__6_i_2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__6_i_1
       (.I0(write_pointer_reg[29]),
        .I1(\addr_to_bram_reg[29]_0 [29]),
        .O(addr_to_bram0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry__6_i_2
       (.I0(write_pointer_reg[28]),
        .I1(\addr_to_bram_reg[29]_0 [28]),
        .O(addr_to_bram0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry_i_1
       (.I0(write_pointer_reg[3]),
        .I1(\addr_to_bram_reg[29]_0 [3]),
        .O(addr_to_bram0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry_i_2
       (.I0(write_pointer_reg[2]),
        .I1(\addr_to_bram_reg[29]_0 [2]),
        .O(addr_to_bram0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry_i_3
       (.I0(write_pointer_reg[1]),
        .I1(\addr_to_bram_reg[29]_0 [1]),
        .O(addr_to_bram0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    addr_to_bram0_carry_i_4
       (.I0(write_pointer_reg[0]),
        .I1(\addr_to_bram_reg[29]_0 [0]),
        .O(addr_to_bram0_carry_i_4_n_0));
  FDRE \addr_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[0]),
        .Q(addr_to_bram[0]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[10]),
        .Q(addr_to_bram[10]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[11]),
        .Q(addr_to_bram[11]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[12]),
        .Q(addr_to_bram[12]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[13]),
        .Q(addr_to_bram[13]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[14]),
        .Q(addr_to_bram[14]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[15]),
        .Q(addr_to_bram[15]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[16]),
        .Q(addr_to_bram[16]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[17]),
        .Q(addr_to_bram[17]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[18]),
        .Q(addr_to_bram[18]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[19]),
        .Q(addr_to_bram[19]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[1]),
        .Q(addr_to_bram[1]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[20]),
        .Q(addr_to_bram[20]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[21]),
        .Q(addr_to_bram[21]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[22]),
        .Q(addr_to_bram[22]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[23]),
        .Q(addr_to_bram[23]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[24]),
        .Q(addr_to_bram[24]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[25]),
        .Q(addr_to_bram[25]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[26]),
        .Q(addr_to_bram[26]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[27]),
        .Q(addr_to_bram[27]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[28]),
        .Q(addr_to_bram[28]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[29]),
        .Q(addr_to_bram[29]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[2]),
        .Q(addr_to_bram[2]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[3]),
        .Q(addr_to_bram[3]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[4]),
        .Q(addr_to_bram[4]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[5]),
        .Q(addr_to_bram[5]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[6]),
        .Q(addr_to_bram[6]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[7]),
        .Q(addr_to_bram[7]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[8]),
        .Q(addr_to_bram[8]),
        .R(p_0_in));
  FDRE \addr_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(p_1_in[9]),
        .Q(addr_to_bram[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \data_to_bram[31]_i_1 
       (.I0(s00_axis_aresetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \data_to_bram[31]_i_2 
       (.I0(write_pointer1_carry__2_n_0),
        .I1(s00_axis_tvalid),
        .O(\data_to_bram[31]_i_2_n_0 ));
  FDRE \data_to_bram_reg[0] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[0]),
        .Q(dout[0]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[10] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[10]),
        .Q(dout[10]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[11] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[11]),
        .Q(dout[11]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[12] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[12]),
        .Q(dout[12]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[13] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[13]),
        .Q(dout[13]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[14] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[14]),
        .Q(dout[14]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[15] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[15]),
        .Q(dout[15]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[16] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[16]),
        .Q(dout[16]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[17] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[17]),
        .Q(dout[17]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[18] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[18]),
        .Q(dout[18]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[19] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[19]),
        .Q(dout[19]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[1] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[1]),
        .Q(dout[1]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[20] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[20]),
        .Q(dout[20]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[21] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[21]),
        .Q(dout[21]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[22] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[22]),
        .Q(dout[22]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[23] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[23]),
        .Q(dout[23]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[24] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[24]),
        .Q(dout[24]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[25] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[25]),
        .Q(dout[25]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[26] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[26]),
        .Q(dout[26]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[27] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[27]),
        .Q(dout[27]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[28] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[28]),
        .Q(dout[28]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[29] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[29]),
        .Q(dout[29]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[2] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[2]),
        .Q(dout[2]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[30] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[30]),
        .Q(dout[30]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[31] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[31]),
        .Q(dout[31]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[3] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[3]),
        .Q(dout[3]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[4] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[4]),
        .Q(dout[4]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[5] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[5]),
        .Q(dout[5]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[6] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[6]),
        .Q(dout[6]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[7] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[7]),
        .Q(dout[7]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[8] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[8]),
        .Q(dout[8]),
        .R(p_0_in));
  FDRE \data_to_bram_reg[9] 
       (.C(s00_axis_aclk),
        .CE(\data_to_bram[31]_i_2_n_0 ),
        .D(s00_axis_tdata[9]),
        .Q(dout[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    en_INST_0
       (.I0(\we_reg[3]_0 ),
        .I1(m00_axis_tready),
        .I2(done_cal),
        .O(en));
  CARRY4 we1_carry
       (.CI(1'b0),
        .CO({we1_carry_n_0,we1_carry_n_1,we1_carry_n_2,we1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_we1_carry_O_UNCONNECTED[3:0]),
        .S({we1_carry_i_1_n_0,we1_carry_i_2_n_0,we1_carry_i_3_n_0,we1_carry_i_4_n_0}));
  CARRY4 we1_carry__0
       (.CI(we1_carry_n_0),
        .CO({we1_carry__0_n_0,we1_carry__0_n_1,we1_carry__0_n_2,we1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_we1_carry__0_O_UNCONNECTED[3:0]),
        .S({we1_carry__0_i_1_n_0,we1_carry__0_i_2_n_0,we1_carry__0_i_3_n_0,we1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__0_i_1
       (.I0(write_pointer_reg[21]),
        .I1(write_pointer2[21]),
        .I2(write_pointer2[23]),
        .I3(write_pointer_reg[23]),
        .I4(write_pointer2[22]),
        .I5(write_pointer_reg[22]),
        .O(we1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__0_i_2
       (.I0(write_pointer_reg[18]),
        .I1(write_pointer2[18]),
        .I2(write_pointer2[20]),
        .I3(write_pointer_reg[20]),
        .I4(write_pointer2[19]),
        .I5(write_pointer_reg[19]),
        .O(we1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__0_i_3
       (.I0(write_pointer_reg[15]),
        .I1(write_pointer2[15]),
        .I2(write_pointer2[17]),
        .I3(write_pointer_reg[17]),
        .I4(write_pointer2[16]),
        .I5(write_pointer_reg[16]),
        .O(we1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__0_i_4
       (.I0(write_pointer_reg[12]),
        .I1(write_pointer2[12]),
        .I2(write_pointer2[14]),
        .I3(write_pointer_reg[14]),
        .I4(write_pointer2[13]),
        .I5(write_pointer_reg[13]),
        .O(we1_carry__0_i_4_n_0));
  CARRY4 we1_carry__1
       (.CI(we1_carry__0_n_0),
        .CO({NLW_we1_carry__1_CO_UNCONNECTED[3],we1_carry__1_n_1,we1_carry__1_n_2,we1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_we1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,we1_carry__1_i_1_n_0,we1_carry__1_i_2_n_0,we1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    we1_carry__1_i_1
       (.I0(write_pointer_reg[30]),
        .I1(write_pointer2[30]),
        .I2(write_pointer_reg[31]),
        .I3(write_pointer2[31]),
        .O(we1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__1_i_2
       (.I0(write_pointer_reg[27]),
        .I1(write_pointer2[27]),
        .I2(write_pointer2[29]),
        .I3(write_pointer_reg[29]),
        .I4(write_pointer2[28]),
        .I5(write_pointer_reg[28]),
        .O(we1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry__1_i_3
       (.I0(write_pointer_reg[24]),
        .I1(write_pointer2[24]),
        .I2(write_pointer2[26]),
        .I3(write_pointer_reg[26]),
        .I4(write_pointer2[25]),
        .I5(write_pointer_reg[25]),
        .O(we1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry_i_1
       (.I0(write_pointer_reg[9]),
        .I1(write_pointer2[9]),
        .I2(write_pointer2[11]),
        .I3(write_pointer_reg[11]),
        .I4(write_pointer2[10]),
        .I5(write_pointer_reg[10]),
        .O(we1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry_i_2
       (.I0(write_pointer_reg[6]),
        .I1(write_pointer2[6]),
        .I2(write_pointer2[8]),
        .I3(write_pointer_reg[8]),
        .I4(write_pointer2[7]),
        .I5(write_pointer_reg[7]),
        .O(we1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    we1_carry_i_3
       (.I0(write_pointer_reg[3]),
        .I1(write_pointer2[3]),
        .I2(write_pointer2[5]),
        .I3(write_pointer_reg[5]),
        .I4(write_pointer2[4]),
        .I5(write_pointer_reg[4]),
        .O(we1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    we1_carry_i_4
       (.I0(write_pointer_reg[0]),
        .I1(Q[0]),
        .I2(write_pointer2[2]),
        .I3(write_pointer_reg[2]),
        .I4(write_pointer2[1]),
        .I5(write_pointer_reg[1]),
        .O(we1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFC808)) 
    \we[3]_i_1 
       (.I0(\we_reg[3]_0 ),
        .I1(s00_axis_aresetn),
        .I2(write_pointer1_carry__2_n_0),
        .I3(s00_axis_tvalid),
        .I4(s00_axis_tlast),
        .I5(we1_carry__1_n_1),
        .O(\we[3]_i_1_n_0 ));
  FDRE \we_reg[3] 
       (.C(s00_axis_aclk),
        .CE(1'b1),
        .D(\we[3]_i_1_n_0 ),
        .Q(\we_reg[3]_0 ),
        .R(1'b0));
  CARRY4 write_pointer1_carry
       (.CI(1'b0),
        .CO({write_pointer1_carry_n_0,write_pointer1_carry_n_1,write_pointer1_carry_n_2,write_pointer1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({write_pointer1_carry_i_1_n_0,write_pointer1_carry_i_2_n_0,write_pointer1_carry_i_3_n_0,write_pointer1_carry_i_4_n_0}),
        .O(NLW_write_pointer1_carry_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry_i_5_n_0,write_pointer1_carry_i_6_n_0,write_pointer1_carry_i_7_n_0,write_pointer1_carry_i_8_n_0}));
  CARRY4 write_pointer1_carry__0
       (.CI(write_pointer1_carry_n_0),
        .CO({write_pointer1_carry__0_n_0,write_pointer1_carry__0_n_1,write_pointer1_carry__0_n_2,write_pointer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__0_i_1_n_0,write_pointer1_carry__0_i_2_n_0,write_pointer1_carry__0_i_3_n_0,write_pointer1_carry__0_i_4_n_0}),
        .O(NLW_write_pointer1_carry__0_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__0_i_5_n_0,write_pointer1_carry__0_i_6_n_0,write_pointer1_carry__0_i_7_n_0,write_pointer1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__0_i_1
       (.I0(write_pointer2[14]),
        .I1(write_pointer_reg[14]),
        .I2(write_pointer_reg[15]),
        .I3(write_pointer2[15]),
        .O(write_pointer1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__0_i_2
       (.I0(write_pointer2[12]),
        .I1(write_pointer_reg[12]),
        .I2(write_pointer_reg[13]),
        .I3(write_pointer2[13]),
        .O(write_pointer1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__0_i_3
       (.I0(write_pointer2[10]),
        .I1(write_pointer_reg[10]),
        .I2(write_pointer_reg[11]),
        .I3(write_pointer2[11]),
        .O(write_pointer1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__0_i_4
       (.I0(write_pointer2[8]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer_reg[9]),
        .I3(write_pointer2[9]),
        .O(write_pointer1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__0_i_5
       (.I0(write_pointer2[14]),
        .I1(write_pointer_reg[14]),
        .I2(write_pointer2[15]),
        .I3(write_pointer_reg[15]),
        .O(write_pointer1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__0_i_6
       (.I0(write_pointer2[12]),
        .I1(write_pointer_reg[12]),
        .I2(write_pointer2[13]),
        .I3(write_pointer_reg[13]),
        .O(write_pointer1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__0_i_7
       (.I0(write_pointer2[10]),
        .I1(write_pointer_reg[10]),
        .I2(write_pointer2[11]),
        .I3(write_pointer_reg[11]),
        .O(write_pointer1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__0_i_8
       (.I0(write_pointer2[8]),
        .I1(write_pointer_reg[8]),
        .I2(write_pointer2[9]),
        .I3(write_pointer_reg[9]),
        .O(write_pointer1_carry__0_i_8_n_0));
  CARRY4 write_pointer1_carry__1
       (.CI(write_pointer1_carry__0_n_0),
        .CO({write_pointer1_carry__1_n_0,write_pointer1_carry__1_n_1,write_pointer1_carry__1_n_2,write_pointer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__1_i_1_n_0,write_pointer1_carry__1_i_2_n_0,write_pointer1_carry__1_i_3_n_0,write_pointer1_carry__1_i_4_n_0}),
        .O(NLW_write_pointer1_carry__1_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__1_i_5_n_0,write_pointer1_carry__1_i_6_n_0,write_pointer1_carry__1_i_7_n_0,write_pointer1_carry__1_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__1_i_1
       (.I0(write_pointer2[22]),
        .I1(write_pointer_reg[22]),
        .I2(write_pointer_reg[23]),
        .I3(write_pointer2[23]),
        .O(write_pointer1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__1_i_2
       (.I0(write_pointer2[20]),
        .I1(write_pointer_reg[20]),
        .I2(write_pointer_reg[21]),
        .I3(write_pointer2[21]),
        .O(write_pointer1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__1_i_3
       (.I0(write_pointer2[18]),
        .I1(write_pointer_reg[18]),
        .I2(write_pointer_reg[19]),
        .I3(write_pointer2[19]),
        .O(write_pointer1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__1_i_4
       (.I0(write_pointer2[16]),
        .I1(write_pointer_reg[16]),
        .I2(write_pointer_reg[17]),
        .I3(write_pointer2[17]),
        .O(write_pointer1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__1_i_5
       (.I0(write_pointer2[22]),
        .I1(write_pointer_reg[22]),
        .I2(write_pointer2[23]),
        .I3(write_pointer_reg[23]),
        .O(write_pointer1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__1_i_6
       (.I0(write_pointer2[20]),
        .I1(write_pointer_reg[20]),
        .I2(write_pointer2[21]),
        .I3(write_pointer_reg[21]),
        .O(write_pointer1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__1_i_7
       (.I0(write_pointer2[18]),
        .I1(write_pointer_reg[18]),
        .I2(write_pointer2[19]),
        .I3(write_pointer_reg[19]),
        .O(write_pointer1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__1_i_8
       (.I0(write_pointer2[16]),
        .I1(write_pointer_reg[16]),
        .I2(write_pointer2[17]),
        .I3(write_pointer_reg[17]),
        .O(write_pointer1_carry__1_i_8_n_0));
  CARRY4 write_pointer1_carry__2
       (.CI(write_pointer1_carry__1_n_0),
        .CO({write_pointer1_carry__2_n_0,write_pointer1_carry__2_n_1,write_pointer1_carry__2_n_2,write_pointer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({write_pointer1_carry__2_i_1_n_0,write_pointer1_carry__2_i_2_n_0,write_pointer1_carry__2_i_3_n_0,write_pointer1_carry__2_i_4_n_0}),
        .O(NLW_write_pointer1_carry__2_O_UNCONNECTED[3:0]),
        .S({write_pointer1_carry__2_i_5_n_0,write_pointer1_carry__2_i_6_n_0,write_pointer1_carry__2_i_7_n_0,write_pointer1_carry__2_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__2_i_1
       (.I0(write_pointer2[30]),
        .I1(write_pointer_reg[30]),
        .I2(write_pointer_reg[31]),
        .I3(write_pointer2[31]),
        .O(write_pointer1_carry__2_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__2_i_2
       (.I0(write_pointer2[28]),
        .I1(write_pointer_reg[28]),
        .I2(write_pointer_reg[29]),
        .I3(write_pointer2[29]),
        .O(write_pointer1_carry__2_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__2_i_3
       (.I0(write_pointer2[26]),
        .I1(write_pointer_reg[26]),
        .I2(write_pointer_reg[27]),
        .I3(write_pointer2[27]),
        .O(write_pointer1_carry__2_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry__2_i_4
       (.I0(write_pointer2[24]),
        .I1(write_pointer_reg[24]),
        .I2(write_pointer_reg[25]),
        .I3(write_pointer2[25]),
        .O(write_pointer1_carry__2_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__2_i_5
       (.I0(write_pointer2[30]),
        .I1(write_pointer_reg[30]),
        .I2(write_pointer2[31]),
        .I3(write_pointer_reg[31]),
        .O(write_pointer1_carry__2_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__2_i_6
       (.I0(write_pointer2[28]),
        .I1(write_pointer_reg[28]),
        .I2(write_pointer2[29]),
        .I3(write_pointer_reg[29]),
        .O(write_pointer1_carry__2_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__2_i_7
       (.I0(write_pointer2[26]),
        .I1(write_pointer_reg[26]),
        .I2(write_pointer2[27]),
        .I3(write_pointer_reg[27]),
        .O(write_pointer1_carry__2_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry__2_i_8
       (.I0(write_pointer2[24]),
        .I1(write_pointer_reg[24]),
        .I2(write_pointer2[25]),
        .I3(write_pointer_reg[25]),
        .O(write_pointer1_carry__2_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry_i_1
       (.I0(write_pointer2[6]),
        .I1(write_pointer_reg[6]),
        .I2(write_pointer_reg[7]),
        .I3(write_pointer2[7]),
        .O(write_pointer1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry_i_2
       (.I0(write_pointer2[4]),
        .I1(write_pointer_reg[4]),
        .I2(write_pointer_reg[5]),
        .I3(write_pointer2[5]),
        .O(write_pointer1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    write_pointer1_carry_i_3
       (.I0(write_pointer2[2]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer_reg[3]),
        .I3(write_pointer2[3]),
        .O(write_pointer1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h1F01)) 
    write_pointer1_carry_i_4
       (.I0(write_pointer_reg[0]),
        .I1(Q[0]),
        .I2(write_pointer_reg[1]),
        .I3(write_pointer2[1]),
        .O(write_pointer1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry_i_5
       (.I0(write_pointer2[6]),
        .I1(write_pointer_reg[6]),
        .I2(write_pointer2[7]),
        .I3(write_pointer_reg[7]),
        .O(write_pointer1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry_i_6
       (.I0(write_pointer2[4]),
        .I1(write_pointer_reg[4]),
        .I2(write_pointer2[5]),
        .I3(write_pointer_reg[5]),
        .O(write_pointer1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    write_pointer1_carry_i_7
       (.I0(write_pointer2[2]),
        .I1(write_pointer_reg[2]),
        .I2(write_pointer2[3]),
        .I3(write_pointer_reg[3]),
        .O(write_pointer1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    write_pointer1_carry_i_8
       (.I0(Q[0]),
        .I1(write_pointer_reg[0]),
        .I2(write_pointer2[1]),
        .I3(write_pointer_reg[1]),
        .O(write_pointer1_carry_i_8_n_0));
  CARRY4 write_pointer2_carry
       (.CI(1'b0),
        .CO({write_pointer2_carry_n_0,write_pointer2_carry_n_1,write_pointer2_carry_n_2,write_pointer2_carry_n_3}),
        .CYINIT(Q[0]),
        .DI(Q[4:1]),
        .O(write_pointer2[4:1]),
        .S(S));
  CARRY4 write_pointer2_carry__0
       (.CI(write_pointer2_carry_n_0),
        .CO({write_pointer2_carry__0_n_0,write_pointer2_carry__0_n_1,write_pointer2_carry__0_n_2,write_pointer2_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(Q[8:5]),
        .O(write_pointer2[8:5]),
        .S(write_pointer1_carry_i_6_0));
  CARRY4 write_pointer2_carry__1
       (.CI(write_pointer2_carry__0_n_0),
        .CO({write_pointer2_carry__1_n_0,write_pointer2_carry__1_n_1,write_pointer2_carry__1_n_2,write_pointer2_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(Q[12:9]),
        .O(write_pointer2[12:9]),
        .S(write_pointer1_carry__0_i_8_0));
  CARRY4 write_pointer2_carry__2
       (.CI(write_pointer2_carry__1_n_0),
        .CO({write_pointer2_carry__2_n_0,write_pointer2_carry__2_n_1,write_pointer2_carry__2_n_2,write_pointer2_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(Q[16:13]),
        .O(write_pointer2[16:13]),
        .S(write_pointer1_carry__0_i_6_0));
  CARRY4 write_pointer2_carry__3
       (.CI(write_pointer2_carry__2_n_0),
        .CO({write_pointer2_carry__3_n_0,write_pointer2_carry__3_n_1,write_pointer2_carry__3_n_2,write_pointer2_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(Q[20:17]),
        .O(write_pointer2[20:17]),
        .S(write_pointer1_carry__1_i_8_0));
  CARRY4 write_pointer2_carry__4
       (.CI(write_pointer2_carry__3_n_0),
        .CO({write_pointer2_carry__4_n_0,write_pointer2_carry__4_n_1,write_pointer2_carry__4_n_2,write_pointer2_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(Q[24:21]),
        .O(write_pointer2[24:21]),
        .S(write_pointer1_carry__1_i_6_0));
  CARRY4 write_pointer2_carry__5
       (.CI(write_pointer2_carry__4_n_0),
        .CO({write_pointer2_carry__5_n_0,write_pointer2_carry__5_n_1,write_pointer2_carry__5_n_2,write_pointer2_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(Q[28:25]),
        .O(write_pointer2[28:25]),
        .S(write_pointer1_carry__2_i_8_0));
  CARRY4 write_pointer2_carry__6
       (.CI(write_pointer2_carry__5_n_0),
        .CO({NLW_write_pointer2_carry__6_CO_UNCONNECTED[3:2],write_pointer2_carry__6_n_2,write_pointer2_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[30:29]}),
        .O({NLW_write_pointer2_carry__6_O_UNCONNECTED[3],write_pointer2[31:29]}),
        .S({1'b0,write_pointer1_carry__2_i_6_0}));
  LUT2 #(
    .INIT(4'h7)) 
    \write_pointer[0]_i_1 
       (.I0(s00_axis_aresetn),
        .I1(write_pointer1_carry__2_n_0),
        .O(\write_pointer[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_3 
       (.I0(write_pointer_reg[0]),
        .O(\write_pointer[0]_i_3_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[0]_i_2_n_7 ),
        .Q(write_pointer_reg[0]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\write_pointer_reg[0]_i_2_n_0 ,\write_pointer_reg[0]_i_2_n_1 ,\write_pointer_reg[0]_i_2_n_2 ,\write_pointer_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\write_pointer_reg[0]_i_2_n_4 ,\write_pointer_reg[0]_i_2_n_5 ,\write_pointer_reg[0]_i_2_n_6 ,\write_pointer_reg[0]_i_2_n_7 }),
        .S({write_pointer_reg[3:1],\write_pointer[0]_i_3_n_0 }));
  FDRE \write_pointer_reg[10] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[8]_i_1_n_5 ),
        .Q(write_pointer_reg[10]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[11] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[8]_i_1_n_4 ),
        .Q(write_pointer_reg[11]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[12] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[12]_i_1_n_7 ),
        .Q(write_pointer_reg[12]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[12]_i_1 
       (.CI(\write_pointer_reg[8]_i_1_n_0 ),
        .CO({\write_pointer_reg[12]_i_1_n_0 ,\write_pointer_reg[12]_i_1_n_1 ,\write_pointer_reg[12]_i_1_n_2 ,\write_pointer_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[12]_i_1_n_4 ,\write_pointer_reg[12]_i_1_n_5 ,\write_pointer_reg[12]_i_1_n_6 ,\write_pointer_reg[12]_i_1_n_7 }),
        .S(write_pointer_reg[15:12]));
  FDRE \write_pointer_reg[13] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[12]_i_1_n_6 ),
        .Q(write_pointer_reg[13]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[14] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[12]_i_1_n_5 ),
        .Q(write_pointer_reg[14]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[15] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[12]_i_1_n_4 ),
        .Q(write_pointer_reg[15]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[16] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[16]_i_1_n_7 ),
        .Q(write_pointer_reg[16]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[16]_i_1 
       (.CI(\write_pointer_reg[12]_i_1_n_0 ),
        .CO({\write_pointer_reg[16]_i_1_n_0 ,\write_pointer_reg[16]_i_1_n_1 ,\write_pointer_reg[16]_i_1_n_2 ,\write_pointer_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[16]_i_1_n_4 ,\write_pointer_reg[16]_i_1_n_5 ,\write_pointer_reg[16]_i_1_n_6 ,\write_pointer_reg[16]_i_1_n_7 }),
        .S(write_pointer_reg[19:16]));
  FDRE \write_pointer_reg[17] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[16]_i_1_n_6 ),
        .Q(write_pointer_reg[17]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[18] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[16]_i_1_n_5 ),
        .Q(write_pointer_reg[18]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[19] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[16]_i_1_n_4 ),
        .Q(write_pointer_reg[19]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[1] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[0]_i_2_n_6 ),
        .Q(write_pointer_reg[1]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[20] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[20]_i_1_n_7 ),
        .Q(write_pointer_reg[20]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[20]_i_1 
       (.CI(\write_pointer_reg[16]_i_1_n_0 ),
        .CO({\write_pointer_reg[20]_i_1_n_0 ,\write_pointer_reg[20]_i_1_n_1 ,\write_pointer_reg[20]_i_1_n_2 ,\write_pointer_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[20]_i_1_n_4 ,\write_pointer_reg[20]_i_1_n_5 ,\write_pointer_reg[20]_i_1_n_6 ,\write_pointer_reg[20]_i_1_n_7 }),
        .S(write_pointer_reg[23:20]));
  FDRE \write_pointer_reg[21] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[20]_i_1_n_6 ),
        .Q(write_pointer_reg[21]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[22] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[20]_i_1_n_5 ),
        .Q(write_pointer_reg[22]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[23] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[20]_i_1_n_4 ),
        .Q(write_pointer_reg[23]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[24] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[24]_i_1_n_7 ),
        .Q(write_pointer_reg[24]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[24]_i_1 
       (.CI(\write_pointer_reg[20]_i_1_n_0 ),
        .CO({\write_pointer_reg[24]_i_1_n_0 ,\write_pointer_reg[24]_i_1_n_1 ,\write_pointer_reg[24]_i_1_n_2 ,\write_pointer_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[24]_i_1_n_4 ,\write_pointer_reg[24]_i_1_n_5 ,\write_pointer_reg[24]_i_1_n_6 ,\write_pointer_reg[24]_i_1_n_7 }),
        .S(write_pointer_reg[27:24]));
  FDRE \write_pointer_reg[25] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[24]_i_1_n_6 ),
        .Q(write_pointer_reg[25]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[26] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[24]_i_1_n_5 ),
        .Q(write_pointer_reg[26]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[27] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[24]_i_1_n_4 ),
        .Q(write_pointer_reg[27]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[28] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[28]_i_1_n_7 ),
        .Q(write_pointer_reg[28]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[28]_i_1 
       (.CI(\write_pointer_reg[24]_i_1_n_0 ),
        .CO({\NLW_write_pointer_reg[28]_i_1_CO_UNCONNECTED [3],\write_pointer_reg[28]_i_1_n_1 ,\write_pointer_reg[28]_i_1_n_2 ,\write_pointer_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[28]_i_1_n_4 ,\write_pointer_reg[28]_i_1_n_5 ,\write_pointer_reg[28]_i_1_n_6 ,\write_pointer_reg[28]_i_1_n_7 }),
        .S(write_pointer_reg[31:28]));
  FDRE \write_pointer_reg[29] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[28]_i_1_n_6 ),
        .Q(write_pointer_reg[29]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[2] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[0]_i_2_n_5 ),
        .Q(write_pointer_reg[2]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[30] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[28]_i_1_n_5 ),
        .Q(write_pointer_reg[30]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[31] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[28]_i_1_n_4 ),
        .Q(write_pointer_reg[31]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[3] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[0]_i_2_n_4 ),
        .Q(write_pointer_reg[3]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[4] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[4]_i_1_n_7 ),
        .Q(write_pointer_reg[4]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[4]_i_1 
       (.CI(\write_pointer_reg[0]_i_2_n_0 ),
        .CO({\write_pointer_reg[4]_i_1_n_0 ,\write_pointer_reg[4]_i_1_n_1 ,\write_pointer_reg[4]_i_1_n_2 ,\write_pointer_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[4]_i_1_n_4 ,\write_pointer_reg[4]_i_1_n_5 ,\write_pointer_reg[4]_i_1_n_6 ,\write_pointer_reg[4]_i_1_n_7 }),
        .S(write_pointer_reg[7:4]));
  FDRE \write_pointer_reg[5] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[4]_i_1_n_6 ),
        .Q(write_pointer_reg[5]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[6] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[4]_i_1_n_5 ),
        .Q(write_pointer_reg[6]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[7] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[4]_i_1_n_4 ),
        .Q(write_pointer_reg[7]),
        .R(\write_pointer[0]_i_1_n_0 ));
  FDRE \write_pointer_reg[8] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[8]_i_1_n_7 ),
        .Q(write_pointer_reg[8]),
        .R(\write_pointer[0]_i_1_n_0 ));
  CARRY4 \write_pointer_reg[8]_i_1 
       (.CI(\write_pointer_reg[4]_i_1_n_0 ),
        .CO({\write_pointer_reg[8]_i_1_n_0 ,\write_pointer_reg[8]_i_1_n_1 ,\write_pointer_reg[8]_i_1_n_2 ,\write_pointer_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\write_pointer_reg[8]_i_1_n_4 ,\write_pointer_reg[8]_i_1_n_5 ,\write_pointer_reg[8]_i_1_n_6 ,\write_pointer_reg[8]_i_1_n_7 }),
        .S(write_pointer_reg[11:8]));
  FDRE \write_pointer_reg[9] 
       (.C(s00_axis_aclk),
        .CE(s00_axis_tvalid),
        .D(\write_pointer_reg[8]_i_1_n_6 ),
        .Q(write_pointer_reg[9]),
        .R(\write_pointer[0]_i_1_n_0 ));
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input m00_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input m00_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB" *) input [3:0]s00_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S00_AXIS TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axis_aclk;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 10000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:2]\^addr ;
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
        .\we_reg[3] (\^we_1 ));
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
