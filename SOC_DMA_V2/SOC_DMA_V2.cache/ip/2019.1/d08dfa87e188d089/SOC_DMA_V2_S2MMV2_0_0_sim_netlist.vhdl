-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Dec  9 19:37:25 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_S2MMV2_0_0_sim_netlist.vhdl
-- Design      : SOC_DMA_V2_S2MMV2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    fifo_addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    DMA_S2MM_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    DMA_S2MM_START_ADDR : in STD_LOGIC_VECTOR ( 29 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \addr[13]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \addr[17]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \addr[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[21]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[21]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[21]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[25]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[25]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[25]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[29]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[29]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[29]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[31]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \addr[5]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_1_n_1\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_1_n_2\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_1_n_3\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \addr[9]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal axis_tlast : STD_LOGIC;
  signal axis_tlast0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \axis_tlast0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__1_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__2_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__3_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__4_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_n_1\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__5_n_3\ : STD_LOGIC;
  signal \axis_tlast0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast0_carry__6_n_2\ : STD_LOGIC;
  signal \axis_tlast0_carry__6_n_3\ : STD_LOGIC;
  signal axis_tlast0_carry_i_1_n_0 : STD_LOGIC;
  signal axis_tlast0_carry_i_2_n_0 : STD_LOGIC;
  signal axis_tlast0_carry_i_3_n_0 : STD_LOGIC;
  signal axis_tlast0_carry_i_4_n_0 : STD_LOGIC;
  signal axis_tlast0_carry_n_0 : STD_LOGIC;
  signal axis_tlast0_carry_n_1 : STD_LOGIC;
  signal axis_tlast0_carry_n_2 : STD_LOGIC;
  signal axis_tlast0_carry_n_3 : STD_LOGIC;
  signal \axis_tlast_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tlast_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tlast_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tlast_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axis_tlast_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tlast_carry__1_n_3\ : STD_LOGIC;
  signal axis_tlast_carry_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_carry_i_2_n_0 : STD_LOGIC;
  signal axis_tlast_carry_i_3_n_0 : STD_LOGIC;
  signal axis_tlast_carry_i_4_n_0 : STD_LOGIC;
  signal axis_tlast_carry_n_0 : STD_LOGIC;
  signal axis_tlast_carry_n_1 : STD_LOGIC;
  signal axis_tlast_carry_n_2 : STD_LOGIC;
  signal axis_tlast_carry_n_3 : STD_LOGIC;
  signal axis_tlast_delay : STD_LOGIC;
  signal axis_tlast_delay_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid0 : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_3\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_3\ : STD_LOGIC;
  signal axis_tvalid0_carry_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_2_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_3_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_4_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_5_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_6_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_7_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_i_8_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_n_1 : STD_LOGIC;
  signal axis_tvalid0_carry_n_2 : STD_LOGIC;
  signal axis_tvalid0_carry_n_3 : STD_LOGIC;
  signal axis_tvalid_delay : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_pointer : STD_LOGIC;
  signal read_pointer1 : STD_LOGIC;
  signal \read_pointer1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_3\ : STD_LOGIC;
  signal read_pointer1_carry_i_1_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_2_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_3_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_4_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_5_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_6_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_7_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_8_n_0 : STD_LOGIC;
  signal read_pointer1_carry_n_0 : STD_LOGIC;
  signal read_pointer1_carry_n_1 : STD_LOGIC;
  signal read_pointer1_carry_n_2 : STD_LOGIC;
  signal read_pointer1_carry_n_3 : STD_LOGIC;
  signal \read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[0]_i_4_n_0\ : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \read_pointer_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \read_pointer_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \read_pointer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \read_pointer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \read_pointer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \stream_data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal \NLW_addr[31]_INST_0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr[31]_INST_0_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axis_tlast0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axis_tlast0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_axis_tlast_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tlast_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tlast_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_axis_tlast_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axis_tvalid0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tvalid0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tvalid0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tvalid0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_read_pointer1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_pointer1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_pointer1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_pointer1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_read_pointer_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
begin
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C7"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F3A0"
    )
        port map (
      I0 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I1 => tx_done_reg_n_0,
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => count_reg(3),
      I1 => count_reg(1),
      I2 => count_reg(0),
      I3 => count_reg(4),
      I4 => count_reg(2),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\addr[13]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[9]_INST_0_i_1_n_0\,
      CO(3) => \addr[13]_INST_0_i_1_n_0\,
      CO(2) => \addr[13]_INST_0_i_1_n_1\,
      CO(1) => \addr[13]_INST_0_i_1_n_2\,
      CO(0) => \addr[13]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => read_pointer_reg(11 downto 8),
      O(3 downto 0) => fifo_addr(11 downto 8),
      S(3) => \addr[13]_INST_0_i_2_n_0\,
      S(2) => \addr[13]_INST_0_i_3_n_0\,
      S(1) => \addr[13]_INST_0_i_4_n_0\,
      S(0) => \addr[13]_INST_0_i_5_n_0\
    );
\addr[13]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(11),
      I1 => DMA_S2MM_START_ADDR(11),
      O => \addr[13]_INST_0_i_2_n_0\
    );
\addr[13]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(10),
      I1 => DMA_S2MM_START_ADDR(10),
      O => \addr[13]_INST_0_i_3_n_0\
    );
\addr[13]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(9),
      I1 => DMA_S2MM_START_ADDR(9),
      O => \addr[13]_INST_0_i_4_n_0\
    );
\addr[13]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(8),
      I1 => DMA_S2MM_START_ADDR(8),
      O => \addr[13]_INST_0_i_5_n_0\
    );
\addr[17]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[13]_INST_0_i_1_n_0\,
      CO(3) => \addr[17]_INST_0_i_1_n_0\,
      CO(2) => \addr[17]_INST_0_i_1_n_1\,
      CO(1) => \addr[17]_INST_0_i_1_n_2\,
      CO(0) => \addr[17]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => read_pointer_reg(15 downto 12),
      O(3 downto 0) => fifo_addr(15 downto 12),
      S(3) => \addr[17]_INST_0_i_2_n_0\,
      S(2) => \addr[17]_INST_0_i_3_n_0\,
      S(1) => \addr[17]_INST_0_i_4_n_0\,
      S(0) => \addr[17]_INST_0_i_5_n_0\
    );
\addr[17]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(15),
      I1 => DMA_S2MM_START_ADDR(15),
      O => \addr[17]_INST_0_i_2_n_0\
    );
\addr[17]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(14),
      I1 => DMA_S2MM_START_ADDR(14),
      O => \addr[17]_INST_0_i_3_n_0\
    );
\addr[17]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(13),
      I1 => DMA_S2MM_START_ADDR(13),
      O => \addr[17]_INST_0_i_4_n_0\
    );
\addr[17]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(12),
      I1 => DMA_S2MM_START_ADDR(12),
      O => \addr[17]_INST_0_i_5_n_0\
    );
\addr[21]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[17]_INST_0_i_1_n_0\,
      CO(3) => \addr[21]_INST_0_i_1_n_0\,
      CO(2) => \addr[21]_INST_0_i_1_n_1\,
      CO(1) => \addr[21]_INST_0_i_1_n_2\,
      CO(0) => \addr[21]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fifo_addr(19 downto 16),
      S(3 downto 0) => DMA_S2MM_START_ADDR(19 downto 16)
    );
\addr[25]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[21]_INST_0_i_1_n_0\,
      CO(3) => \addr[25]_INST_0_i_1_n_0\,
      CO(2) => \addr[25]_INST_0_i_1_n_1\,
      CO(1) => \addr[25]_INST_0_i_1_n_2\,
      CO(0) => \addr[25]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fifo_addr(23 downto 20),
      S(3 downto 0) => DMA_S2MM_START_ADDR(23 downto 20)
    );
\addr[29]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[25]_INST_0_i_1_n_0\,
      CO(3) => \addr[29]_INST_0_i_1_n_0\,
      CO(2) => \addr[29]_INST_0_i_1_n_1\,
      CO(1) => \addr[29]_INST_0_i_1_n_2\,
      CO(0) => \addr[29]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => fifo_addr(27 downto 24),
      S(3 downto 0) => DMA_S2MM_START_ADDR(27 downto 24)
    );
\addr[31]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[29]_INST_0_i_1_n_0\,
      CO(3 downto 1) => \NLW_addr[31]_INST_0_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addr[31]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_addr[31]_INST_0_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => fifo_addr(29 downto 28),
      S(3 downto 2) => B"00",
      S(1 downto 0) => DMA_S2MM_START_ADDR(29 downto 28)
    );
\addr[5]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr[5]_INST_0_i_1_n_0\,
      CO(2) => \addr[5]_INST_0_i_1_n_1\,
      CO(1) => \addr[5]_INST_0_i_1_n_2\,
      CO(0) => \addr[5]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => read_pointer_reg(3 downto 0),
      O(3 downto 0) => fifo_addr(3 downto 0),
      S(3) => \addr[5]_INST_0_i_2_n_0\,
      S(2) => \addr[5]_INST_0_i_3_n_0\,
      S(1) => \addr[5]_INST_0_i_4_n_0\,
      S(0) => \addr[5]_INST_0_i_5_n_0\
    );
\addr[5]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => DMA_S2MM_START_ADDR(3),
      O => \addr[5]_INST_0_i_2_n_0\
    );
\addr[5]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => DMA_S2MM_START_ADDR(2),
      O => \addr[5]_INST_0_i_3_n_0\
    );
\addr[5]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(1),
      I1 => DMA_S2MM_START_ADDR(1),
      O => \addr[5]_INST_0_i_4_n_0\
    );
\addr[5]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => DMA_S2MM_START_ADDR(0),
      O => \addr[5]_INST_0_i_5_n_0\
    );
\addr[9]_INST_0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr[5]_INST_0_i_1_n_0\,
      CO(3) => \addr[9]_INST_0_i_1_n_0\,
      CO(2) => \addr[9]_INST_0_i_1_n_1\,
      CO(1) => \addr[9]_INST_0_i_1_n_2\,
      CO(0) => \addr[9]_INST_0_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => read_pointer_reg(7 downto 4),
      O(3 downto 0) => fifo_addr(7 downto 4),
      S(3) => \addr[9]_INST_0_i_2_n_0\,
      S(2) => \addr[9]_INST_0_i_3_n_0\,
      S(1) => \addr[9]_INST_0_i_4_n_0\,
      S(0) => \addr[9]_INST_0_i_5_n_0\
    );
\addr[9]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(7),
      I1 => DMA_S2MM_START_ADDR(7),
      O => \addr[9]_INST_0_i_2_n_0\
    );
\addr[9]_INST_0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(6),
      I1 => DMA_S2MM_START_ADDR(6),
      O => \addr[9]_INST_0_i_3_n_0\
    );
\addr[9]_INST_0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(5),
      I1 => DMA_S2MM_START_ADDR(5),
      O => \addr[9]_INST_0_i_4_n_0\
    );
\addr[9]_INST_0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => DMA_S2MM_START_ADDR(4),
      O => \addr[9]_INST_0_i_5_n_0\
    );
axis_tlast0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axis_tlast0_carry_n_0,
      CO(2) => axis_tlast0_carry_n_1,
      CO(1) => axis_tlast0_carry_n_2,
      CO(0) => axis_tlast0_carry_n_3,
      CYINIT => DMA_S2MM_BUFF_LEN(0),
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(4 downto 1),
      O(3 downto 0) => axis_tlast0(4 downto 1),
      S(3) => axis_tlast0_carry_i_1_n_0,
      S(2) => axis_tlast0_carry_i_2_n_0,
      S(1) => axis_tlast0_carry_i_3_n_0,
      S(0) => axis_tlast0_carry_i_4_n_0
    );
\axis_tlast0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tlast0_carry_n_0,
      CO(3) => \axis_tlast0_carry__0_n_0\,
      CO(2) => \axis_tlast0_carry__0_n_1\,
      CO(1) => \axis_tlast0_carry__0_n_2\,
      CO(0) => \axis_tlast0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(8 downto 5),
      O(3 downto 0) => axis_tlast0(8 downto 5),
      S(3) => \axis_tlast0_carry__0_i_1_n_0\,
      S(2) => \axis_tlast0_carry__0_i_2_n_0\,
      S(1) => \axis_tlast0_carry__0_i_3_n_0\,
      S(0) => \axis_tlast0_carry__0_i_4_n_0\
    );
\axis_tlast0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      O => \axis_tlast0_carry__0_i_1_n_0\
    );
\axis_tlast0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(7),
      O => \axis_tlast0_carry__0_i_2_n_0\
    );
\axis_tlast0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      O => \axis_tlast0_carry__0_i_3_n_0\
    );
\axis_tlast0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(5),
      O => \axis_tlast0_carry__0_i_4_n_0\
    );
\axis_tlast0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__0_n_0\,
      CO(3) => \axis_tlast0_carry__1_n_0\,
      CO(2) => \axis_tlast0_carry__1_n_1\,
      CO(1) => \axis_tlast0_carry__1_n_2\,
      CO(0) => \axis_tlast0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(12 downto 9),
      O(3 downto 0) => axis_tlast0(12 downto 9),
      S(3) => \axis_tlast0_carry__1_i_1_n_0\,
      S(2) => \axis_tlast0_carry__1_i_2_n_0\,
      S(1) => \axis_tlast0_carry__1_i_3_n_0\,
      S(0) => \axis_tlast0_carry__1_i_4_n_0\
    );
\axis_tlast0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      O => \axis_tlast0_carry__1_i_1_n_0\
    );
\axis_tlast0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(11),
      O => \axis_tlast0_carry__1_i_2_n_0\
    );
\axis_tlast0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      O => \axis_tlast0_carry__1_i_3_n_0\
    );
\axis_tlast0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(9),
      O => \axis_tlast0_carry__1_i_4_n_0\
    );
\axis_tlast0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__1_n_0\,
      CO(3) => \axis_tlast0_carry__2_n_0\,
      CO(2) => \axis_tlast0_carry__2_n_1\,
      CO(1) => \axis_tlast0_carry__2_n_2\,
      CO(0) => \axis_tlast0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(16 downto 13),
      O(3 downto 0) => axis_tlast0(16 downto 13),
      S(3) => \axis_tlast0_carry__2_i_1_n_0\,
      S(2) => \axis_tlast0_carry__2_i_2_n_0\,
      S(1) => \axis_tlast0_carry__2_i_3_n_0\,
      S(0) => \axis_tlast0_carry__2_i_4_n_0\
    );
\axis_tlast0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      O => \axis_tlast0_carry__2_i_1_n_0\
    );
\axis_tlast0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(15),
      O => \axis_tlast0_carry__2_i_2_n_0\
    );
\axis_tlast0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      O => \axis_tlast0_carry__2_i_3_n_0\
    );
\axis_tlast0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(13),
      O => \axis_tlast0_carry__2_i_4_n_0\
    );
\axis_tlast0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__2_n_0\,
      CO(3) => \axis_tlast0_carry__3_n_0\,
      CO(2) => \axis_tlast0_carry__3_n_1\,
      CO(1) => \axis_tlast0_carry__3_n_2\,
      CO(0) => \axis_tlast0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(20 downto 17),
      O(3 downto 0) => axis_tlast0(20 downto 17),
      S(3) => \axis_tlast0_carry__3_i_1_n_0\,
      S(2) => \axis_tlast0_carry__3_i_2_n_0\,
      S(1) => \axis_tlast0_carry__3_i_3_n_0\,
      S(0) => \axis_tlast0_carry__3_i_4_n_0\
    );
\axis_tlast0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      O => \axis_tlast0_carry__3_i_1_n_0\
    );
\axis_tlast0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(19),
      O => \axis_tlast0_carry__3_i_2_n_0\
    );
\axis_tlast0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      O => \axis_tlast0_carry__3_i_3_n_0\
    );
\axis_tlast0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(17),
      O => \axis_tlast0_carry__3_i_4_n_0\
    );
\axis_tlast0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__3_n_0\,
      CO(3) => \axis_tlast0_carry__4_n_0\,
      CO(2) => \axis_tlast0_carry__4_n_1\,
      CO(1) => \axis_tlast0_carry__4_n_2\,
      CO(0) => \axis_tlast0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(24 downto 21),
      O(3 downto 0) => axis_tlast0(24 downto 21),
      S(3) => \axis_tlast0_carry__4_i_1_n_0\,
      S(2) => \axis_tlast0_carry__4_i_2_n_0\,
      S(1) => \axis_tlast0_carry__4_i_3_n_0\,
      S(0) => \axis_tlast0_carry__4_i_4_n_0\
    );
\axis_tlast0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      O => \axis_tlast0_carry__4_i_1_n_0\
    );
\axis_tlast0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(23),
      O => \axis_tlast0_carry__4_i_2_n_0\
    );
\axis_tlast0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      O => \axis_tlast0_carry__4_i_3_n_0\
    );
\axis_tlast0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(21),
      O => \axis_tlast0_carry__4_i_4_n_0\
    );
\axis_tlast0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__4_n_0\,
      CO(3) => \axis_tlast0_carry__5_n_0\,
      CO(2) => \axis_tlast0_carry__5_n_1\,
      CO(1) => \axis_tlast0_carry__5_n_2\,
      CO(0) => \axis_tlast0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(28 downto 25),
      O(3 downto 0) => axis_tlast0(28 downto 25),
      S(3) => \axis_tlast0_carry__5_i_1_n_0\,
      S(2) => \axis_tlast0_carry__5_i_2_n_0\,
      S(1) => \axis_tlast0_carry__5_i_3_n_0\,
      S(0) => \axis_tlast0_carry__5_i_4_n_0\
    );
\axis_tlast0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      O => \axis_tlast0_carry__5_i_1_n_0\
    );
\axis_tlast0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(27),
      O => \axis_tlast0_carry__5_i_2_n_0\
    );
\axis_tlast0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      O => \axis_tlast0_carry__5_i_3_n_0\
    );
\axis_tlast0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(25),
      O => \axis_tlast0_carry__5_i_4_n_0\
    );
\axis_tlast0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_axis_tlast0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axis_tlast0_carry__6_n_2\,
      CO(0) => \axis_tlast0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => DMA_S2MM_BUFF_LEN(30 downto 29),
      O(3) => \NLW_axis_tlast0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => axis_tlast0(31 downto 29),
      S(3) => '0',
      S(2) => \axis_tlast0_carry__6_i_1_n_0\,
      S(1) => \axis_tlast0_carry__6_i_2_n_0\,
      S(0) => \axis_tlast0_carry__6_i_3_n_0\
    );
\axis_tlast0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(31),
      O => \axis_tlast0_carry__6_i_1_n_0\
    );
\axis_tlast0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      O => \axis_tlast0_carry__6_i_2_n_0\
    );
\axis_tlast0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(29),
      O => \axis_tlast0_carry__6_i_3_n_0\
    );
axis_tlast0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      O => axis_tlast0_carry_i_1_n_0
    );
axis_tlast0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(3),
      O => axis_tlast0_carry_i_2_n_0
    );
axis_tlast0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      O => axis_tlast0_carry_i_3_n_0
    );
axis_tlast0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(1),
      O => axis_tlast0_carry_i_4_n_0
    );
axis_tlast_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axis_tlast_carry_n_0,
      CO(2) => axis_tlast_carry_n_1,
      CO(1) => axis_tlast_carry_n_2,
      CO(0) => axis_tlast_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_axis_tlast_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axis_tlast_carry_i_1_n_0,
      S(2) => axis_tlast_carry_i_2_n_0,
      S(1) => axis_tlast_carry_i_3_n_0,
      S(0) => axis_tlast_carry_i_4_n_0
    );
\axis_tlast_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tlast_carry_n_0,
      CO(3) => \axis_tlast_carry__0_n_0\,
      CO(2) => \axis_tlast_carry__0_n_1\,
      CO(1) => \axis_tlast_carry__0_n_2\,
      CO(0) => \axis_tlast_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_axis_tlast_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tlast_carry__0_i_1_n_0\,
      S(2) => \axis_tlast_carry__0_i_2_n_0\,
      S(1) => \axis_tlast_carry__0_i_3_n_0\,
      S(0) => \axis_tlast_carry__0_i_4_n_0\
    );
\axis_tlast_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(23),
      I1 => axis_tlast0(22),
      I2 => axis_tlast0(21),
      O => \axis_tlast_carry__0_i_1_n_0\
    );
\axis_tlast_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(20),
      I1 => axis_tlast0(19),
      I2 => axis_tlast0(18),
      O => \axis_tlast_carry__0_i_2_n_0\
    );
\axis_tlast_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => read_pointer_reg(15),
      I1 => axis_tlast0(15),
      I2 => axis_tlast0(17),
      I3 => axis_tlast0(16),
      O => \axis_tlast_carry__0_i_3_n_0\
    );
\axis_tlast_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_pointer_reg(12),
      I1 => axis_tlast0(12),
      I2 => axis_tlast0(14),
      I3 => read_pointer_reg(14),
      I4 => axis_tlast0(13),
      I5 => read_pointer_reg(13),
      O => \axis_tlast_carry__0_i_4_n_0\
    );
\axis_tlast_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tlast_carry__0_n_0\,
      CO(3) => \NLW_axis_tlast_carry__1_CO_UNCONNECTED\(3),
      CO(2) => axis_tlast,
      CO(1) => \axis_tlast_carry__1_n_2\,
      CO(0) => \axis_tlast_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_axis_tlast_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \axis_tlast_carry__1_i_1_n_0\,
      S(1) => \axis_tlast_carry__1_i_2_n_0\,
      S(0) => \axis_tlast_carry__1_i_3_n_0\
    );
\axis_tlast_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(30),
      I1 => axis_tlast0(31),
      O => \axis_tlast_carry__1_i_1_n_0\
    );
\axis_tlast_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(29),
      I1 => axis_tlast0(28),
      I2 => axis_tlast0(27),
      O => \axis_tlast_carry__1_i_2_n_0\
    );
\axis_tlast_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(26),
      I1 => axis_tlast0(25),
      I2 => axis_tlast0(24),
      O => \axis_tlast_carry__1_i_3_n_0\
    );
axis_tlast_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_pointer_reg(9),
      I1 => axis_tlast0(9),
      I2 => axis_tlast0(11),
      I3 => read_pointer_reg(11),
      I4 => axis_tlast0(10),
      I5 => read_pointer_reg(10),
      O => axis_tlast_carry_i_1_n_0
    );
axis_tlast_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_pointer_reg(6),
      I1 => axis_tlast0(6),
      I2 => axis_tlast0(8),
      I3 => read_pointer_reg(8),
      I4 => axis_tlast0(7),
      I5 => read_pointer_reg(7),
      O => axis_tlast_carry_i_2_n_0
    );
axis_tlast_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => axis_tlast0(3),
      I2 => axis_tlast0(5),
      I3 => read_pointer_reg(5),
      I4 => axis_tlast0(4),
      I5 => read_pointer_reg(4),
      O => axis_tlast_carry_i_3_n_0
    );
axis_tlast_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000900990090000"
    )
        port map (
      I0 => axis_tlast0(2),
      I1 => read_pointer_reg(2),
      I2 => axis_tlast0(1),
      I3 => read_pointer_reg(1),
      I4 => DMA_S2MM_BUFF_LEN(0),
      I5 => read_pointer_reg(0),
      O => axis_tlast_carry_i_4_n_0
    );
axis_tlast_delay_delay_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => axis_tlast_delay_delay_i_1_n_0
    );
axis_tlast_delay_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast_delay,
      Q => m00_axis_tlast,
      R => axis_tlast_delay_delay_i_1_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast,
      Q => axis_tlast_delay,
      R => axis_tlast_delay_delay_i_1_n_0
    );
axis_tvalid0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axis_tvalid0_carry_n_0,
      CO(2) => axis_tvalid0_carry_n_1,
      CO(1) => axis_tvalid0_carry_n_2,
      CO(0) => axis_tvalid0_carry_n_3,
      CYINIT => '0',
      DI(3) => axis_tvalid0_carry_i_1_n_0,
      DI(2) => axis_tvalid0_carry_i_2_n_0,
      DI(1) => axis_tvalid0_carry_i_3_n_0,
      DI(0) => axis_tvalid0_carry_i_4_n_0,
      O(3 downto 0) => NLW_axis_tvalid0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axis_tvalid0_carry_i_5_n_0,
      S(2) => axis_tvalid0_carry_i_6_n_0,
      S(1) => axis_tvalid0_carry_i_7_n_0,
      S(0) => axis_tvalid0_carry_i_8_n_0
    );
\axis_tvalid0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tvalid0_carry_n_0,
      CO(3) => \axis_tvalid0_carry__0_n_0\,
      CO(2) => \axis_tvalid0_carry__0_n_1\,
      CO(1) => \axis_tvalid0_carry__0_n_2\,
      CO(0) => \axis_tvalid0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tvalid0_carry__0_i_1_n_0\,
      DI(2) => \axis_tvalid0_carry__0_i_2_n_0\,
      DI(1) => \axis_tvalid0_carry__0_i_3_n_0\,
      DI(0) => \axis_tvalid0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tvalid0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tvalid0_carry__0_i_5_n_0\,
      S(2) => \axis_tvalid0_carry__0_i_6_n_0\,
      S(1) => \axis_tvalid0_carry__0_i_7_n_0\,
      S(0) => \axis_tvalid0_carry__0_i_8_n_0\
    );
\axis_tvalid0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      I1 => read_pointer_reg(14),
      I2 => read_pointer_reg(15),
      I3 => DMA_S2MM_BUFF_LEN(15),
      O => \axis_tvalid0_carry__0_i_1_n_0\
    );
\axis_tvalid0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      I1 => read_pointer_reg(12),
      I2 => read_pointer_reg(13),
      I3 => DMA_S2MM_BUFF_LEN(13),
      O => \axis_tvalid0_carry__0_i_2_n_0\
    );
\axis_tvalid0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      I1 => read_pointer_reg(10),
      I2 => read_pointer_reg(11),
      I3 => DMA_S2MM_BUFF_LEN(11),
      O => \axis_tvalid0_carry__0_i_3_n_0\
    );
\axis_tvalid0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      I1 => read_pointer_reg(8),
      I2 => read_pointer_reg(9),
      I3 => DMA_S2MM_BUFF_LEN(9),
      O => \axis_tvalid0_carry__0_i_4_n_0\
    );
\axis_tvalid0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      I1 => read_pointer_reg(14),
      I2 => DMA_S2MM_BUFF_LEN(15),
      I3 => read_pointer_reg(15),
      O => \axis_tvalid0_carry__0_i_5_n_0\
    );
\axis_tvalid0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      I1 => read_pointer_reg(12),
      I2 => DMA_S2MM_BUFF_LEN(13),
      I3 => read_pointer_reg(13),
      O => \axis_tvalid0_carry__0_i_6_n_0\
    );
\axis_tvalid0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      I1 => read_pointer_reg(10),
      I2 => DMA_S2MM_BUFF_LEN(11),
      I3 => read_pointer_reg(11),
      O => \axis_tvalid0_carry__0_i_7_n_0\
    );
\axis_tvalid0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      I1 => read_pointer_reg(8),
      I2 => DMA_S2MM_BUFF_LEN(9),
      I3 => read_pointer_reg(9),
      O => \axis_tvalid0_carry__0_i_8_n_0\
    );
\axis_tvalid0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tvalid0_carry__0_n_0\,
      CO(3) => \axis_tvalid0_carry__1_n_0\,
      CO(2) => \axis_tvalid0_carry__1_n_1\,
      CO(1) => \axis_tvalid0_carry__1_n_2\,
      CO(0) => \axis_tvalid0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tvalid0_carry__1_i_1_n_0\,
      DI(2) => \axis_tvalid0_carry__1_i_2_n_0\,
      DI(1) => \axis_tvalid0_carry__1_i_3_n_0\,
      DI(0) => \axis_tvalid0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tvalid0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tvalid0_carry__1_i_5_n_0\,
      S(2) => \axis_tvalid0_carry__1_i_6_n_0\,
      S(1) => \axis_tvalid0_carry__1_i_7_n_0\,
      S(0) => \axis_tvalid0_carry__1_i_8_n_0\
    );
\axis_tvalid0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      I1 => DMA_S2MM_BUFF_LEN(23),
      O => \axis_tvalid0_carry__1_i_1_n_0\
    );
\axis_tvalid0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      I1 => DMA_S2MM_BUFF_LEN(21),
      O => \axis_tvalid0_carry__1_i_2_n_0\
    );
\axis_tvalid0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      I1 => DMA_S2MM_BUFF_LEN(19),
      O => \axis_tvalid0_carry__1_i_3_n_0\
    );
\axis_tvalid0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      I1 => DMA_S2MM_BUFF_LEN(17),
      O => \axis_tvalid0_carry__1_i_4_n_0\
    );
\axis_tvalid0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      I1 => DMA_S2MM_BUFF_LEN(23),
      O => \axis_tvalid0_carry__1_i_5_n_0\
    );
\axis_tvalid0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      I1 => DMA_S2MM_BUFF_LEN(21),
      O => \axis_tvalid0_carry__1_i_6_n_0\
    );
\axis_tvalid0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      I1 => DMA_S2MM_BUFF_LEN(19),
      O => \axis_tvalid0_carry__1_i_7_n_0\
    );
\axis_tvalid0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      I1 => DMA_S2MM_BUFF_LEN(17),
      O => \axis_tvalid0_carry__1_i_8_n_0\
    );
\axis_tvalid0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tvalid0_carry__1_n_0\,
      CO(3) => axis_tvalid0,
      CO(2) => \axis_tvalid0_carry__2_n_1\,
      CO(1) => \axis_tvalid0_carry__2_n_2\,
      CO(0) => \axis_tvalid0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tvalid0_carry__2_i_1_n_0\,
      DI(2) => \axis_tvalid0_carry__2_i_2_n_0\,
      DI(1) => \axis_tvalid0_carry__2_i_3_n_0\,
      DI(0) => \axis_tvalid0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tvalid0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tvalid0_carry__2_i_5_n_0\,
      S(2) => \axis_tvalid0_carry__2_i_6_n_0\,
      S(1) => \axis_tvalid0_carry__2_i_7_n_0\,
      S(0) => \axis_tvalid0_carry__2_i_8_n_0\
    );
\axis_tvalid0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      I1 => DMA_S2MM_BUFF_LEN(31),
      O => \axis_tvalid0_carry__2_i_1_n_0\
    );
\axis_tvalid0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      I1 => DMA_S2MM_BUFF_LEN(29),
      O => \axis_tvalid0_carry__2_i_2_n_0\
    );
\axis_tvalid0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      I1 => DMA_S2MM_BUFF_LEN(27),
      O => \axis_tvalid0_carry__2_i_3_n_0\
    );
\axis_tvalid0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      I1 => DMA_S2MM_BUFF_LEN(25),
      O => \axis_tvalid0_carry__2_i_4_n_0\
    );
\axis_tvalid0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      I1 => DMA_S2MM_BUFF_LEN(31),
      O => \axis_tvalid0_carry__2_i_5_n_0\
    );
\axis_tvalid0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      I1 => DMA_S2MM_BUFF_LEN(29),
      O => \axis_tvalid0_carry__2_i_6_n_0\
    );
\axis_tvalid0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      I1 => DMA_S2MM_BUFF_LEN(27),
      O => \axis_tvalid0_carry__2_i_7_n_0\
    );
\axis_tvalid0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      I1 => DMA_S2MM_BUFF_LEN(25),
      O => \axis_tvalid0_carry__2_i_8_n_0\
    );
axis_tvalid0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      I1 => read_pointer_reg(6),
      I2 => read_pointer_reg(7),
      I3 => DMA_S2MM_BUFF_LEN(7),
      O => axis_tvalid0_carry_i_1_n_0
    );
axis_tvalid0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      I1 => read_pointer_reg(4),
      I2 => read_pointer_reg(5),
      I3 => DMA_S2MM_BUFF_LEN(5),
      O => axis_tvalid0_carry_i_2_n_0
    );
axis_tvalid0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      I1 => read_pointer_reg(2),
      I2 => read_pointer_reg(3),
      I3 => DMA_S2MM_BUFF_LEN(3),
      O => axis_tvalid0_carry_i_3_n_0
    );
axis_tvalid0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => DMA_S2MM_BUFF_LEN(1),
      O => axis_tvalid0_carry_i_4_n_0
    );
axis_tvalid0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      I1 => read_pointer_reg(6),
      I2 => DMA_S2MM_BUFF_LEN(7),
      I3 => read_pointer_reg(7),
      O => axis_tvalid0_carry_i_5_n_0
    );
axis_tvalid0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      I1 => read_pointer_reg(4),
      I2 => DMA_S2MM_BUFF_LEN(5),
      I3 => read_pointer_reg(5),
      O => axis_tvalid0_carry_i_6_n_0
    );
axis_tvalid0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      I1 => read_pointer_reg(2),
      I2 => DMA_S2MM_BUFF_LEN(3),
      I3 => read_pointer_reg(3),
      O => axis_tvalid0_carry_i_7_n_0
    );
axis_tvalid0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => read_pointer_reg(0),
      I2 => DMA_S2MM_BUFF_LEN(1),
      I3 => read_pointer_reg(1),
      O => axis_tvalid0_carry_i_8_n_0
    );
axis_tvalid_delay_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid_delay,
      Q => m00_axis_tvalid,
      R => axis_tlast_delay_delay_i_1_n_0
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => axis_tvalid0,
      O => axis_tvalid
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => axis_tvalid_delay,
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_reg(0),
      O => \p_0_in__0\(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => \p_0_in__0\(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      I2 => count_reg(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      I2 => count_reg(2),
      I3 => count_reg(3),
      O => \p_0_in__0\(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      O => count
    );
\count[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(0),
      I2 => count_reg(1),
      I3 => count_reg(3),
      I4 => count_reg(4),
      O => \p_0_in__0\(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(0),
      Q => count_reg(0),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(1),
      Q => count_reg(1),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(3),
      Q => count_reg(3),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(4),
      Q => count_reg(4),
      R => axis_tlast_delay_delay_i_1_n_0
    );
read_pointer1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => read_pointer1_carry_n_0,
      CO(2) => read_pointer1_carry_n_1,
      CO(1) => read_pointer1_carry_n_2,
      CO(0) => read_pointer1_carry_n_3,
      CYINIT => '1',
      DI(3) => read_pointer1_carry_i_1_n_0,
      DI(2) => read_pointer1_carry_i_2_n_0,
      DI(1) => read_pointer1_carry_i_3_n_0,
      DI(0) => read_pointer1_carry_i_4_n_0,
      O(3 downto 0) => NLW_read_pointer1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => read_pointer1_carry_i_5_n_0,
      S(2) => read_pointer1_carry_i_6_n_0,
      S(1) => read_pointer1_carry_i_7_n_0,
      S(0) => read_pointer1_carry_i_8_n_0
    );
\read_pointer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => read_pointer1_carry_n_0,
      CO(3) => \read_pointer1_carry__0_n_0\,
      CO(2) => \read_pointer1_carry__0_n_1\,
      CO(1) => \read_pointer1_carry__0_n_2\,
      CO(0) => \read_pointer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \read_pointer1_carry__0_i_1_n_0\,
      DI(2) => \read_pointer1_carry__0_i_2_n_0\,
      DI(1) => \read_pointer1_carry__0_i_3_n_0\,
      DI(0) => \read_pointer1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_read_pointer1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__0_i_5_n_0\,
      S(2) => \read_pointer1_carry__0_i_6_n_0\,
      S(1) => \read_pointer1_carry__0_i_7_n_0\,
      S(0) => \read_pointer1_carry__0_i_8_n_0\
    );
\read_pointer1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(14),
      I1 => read_pointer_reg(14),
      I2 => read_pointer_reg(15),
      I3 => axis_tlast0(15),
      O => \read_pointer1_carry__0_i_1_n_0\
    );
\read_pointer1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(12),
      I1 => read_pointer_reg(12),
      I2 => read_pointer_reg(13),
      I3 => axis_tlast0(13),
      O => \read_pointer1_carry__0_i_2_n_0\
    );
\read_pointer1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(10),
      I1 => read_pointer_reg(10),
      I2 => read_pointer_reg(11),
      I3 => axis_tlast0(11),
      O => \read_pointer1_carry__0_i_3_n_0\
    );
\read_pointer1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(8),
      I1 => read_pointer_reg(8),
      I2 => read_pointer_reg(9),
      I3 => axis_tlast0(9),
      O => \read_pointer1_carry__0_i_4_n_0\
    );
\read_pointer1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(14),
      I1 => read_pointer_reg(14),
      I2 => axis_tlast0(15),
      I3 => read_pointer_reg(15),
      O => \read_pointer1_carry__0_i_5_n_0\
    );
\read_pointer1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(12),
      I1 => read_pointer_reg(12),
      I2 => axis_tlast0(13),
      I3 => read_pointer_reg(13),
      O => \read_pointer1_carry__0_i_6_n_0\
    );
\read_pointer1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(10),
      I1 => read_pointer_reg(10),
      I2 => axis_tlast0(11),
      I3 => read_pointer_reg(11),
      O => \read_pointer1_carry__0_i_7_n_0\
    );
\read_pointer1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(8),
      I1 => read_pointer_reg(8),
      I2 => axis_tlast0(9),
      I3 => read_pointer_reg(9),
      O => \read_pointer1_carry__0_i_8_n_0\
    );
\read_pointer1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__0_n_0\,
      CO(3) => \read_pointer1_carry__1_n_0\,
      CO(2) => \read_pointer1_carry__1_n_1\,
      CO(1) => \read_pointer1_carry__1_n_2\,
      CO(0) => \read_pointer1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \read_pointer1_carry__1_i_1_n_0\,
      DI(2) => \read_pointer1_carry__1_i_2_n_0\,
      DI(1) => \read_pointer1_carry__1_i_3_n_0\,
      DI(0) => \read_pointer1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_read_pointer1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__1_i_5_n_0\,
      S(2) => \read_pointer1_carry__1_i_6_n_0\,
      S(1) => \read_pointer1_carry__1_i_7_n_0\,
      S(0) => \read_pointer1_carry__1_i_8_n_0\
    );
\read_pointer1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(22),
      I1 => axis_tlast0(23),
      O => \read_pointer1_carry__1_i_1_n_0\
    );
\read_pointer1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(20),
      I1 => axis_tlast0(21),
      O => \read_pointer1_carry__1_i_2_n_0\
    );
\read_pointer1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(18),
      I1 => axis_tlast0(19),
      O => \read_pointer1_carry__1_i_3_n_0\
    );
\read_pointer1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(16),
      I1 => axis_tlast0(17),
      O => \read_pointer1_carry__1_i_4_n_0\
    );
\read_pointer1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(22),
      I1 => axis_tlast0(23),
      O => \read_pointer1_carry__1_i_5_n_0\
    );
\read_pointer1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(20),
      I1 => axis_tlast0(21),
      O => \read_pointer1_carry__1_i_6_n_0\
    );
\read_pointer1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(18),
      I1 => axis_tlast0(19),
      O => \read_pointer1_carry__1_i_7_n_0\
    );
\read_pointer1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(16),
      I1 => axis_tlast0(17),
      O => \read_pointer1_carry__1_i_8_n_0\
    );
\read_pointer1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__1_n_0\,
      CO(3) => read_pointer1,
      CO(2) => \read_pointer1_carry__2_n_1\,
      CO(1) => \read_pointer1_carry__2_n_2\,
      CO(0) => \read_pointer1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \read_pointer1_carry__2_i_1_n_0\,
      DI(2) => \read_pointer1_carry__2_i_2_n_0\,
      DI(1) => \read_pointer1_carry__2_i_3_n_0\,
      DI(0) => \read_pointer1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_read_pointer1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__2_i_5_n_0\,
      S(2) => \read_pointer1_carry__2_i_6_n_0\,
      S(1) => \read_pointer1_carry__2_i_7_n_0\,
      S(0) => \read_pointer1_carry__2_i_8_n_0\
    );
\read_pointer1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(30),
      I1 => axis_tlast0(31),
      O => \read_pointer1_carry__2_i_1_n_0\
    );
\read_pointer1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(28),
      I1 => axis_tlast0(29),
      O => \read_pointer1_carry__2_i_2_n_0\
    );
\read_pointer1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(26),
      I1 => axis_tlast0(27),
      O => \read_pointer1_carry__2_i_3_n_0\
    );
\read_pointer1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tlast0(24),
      I1 => axis_tlast0(25),
      O => \read_pointer1_carry__2_i_4_n_0\
    );
\read_pointer1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(30),
      I1 => axis_tlast0(31),
      O => \read_pointer1_carry__2_i_5_n_0\
    );
\read_pointer1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(28),
      I1 => axis_tlast0(29),
      O => \read_pointer1_carry__2_i_6_n_0\
    );
\read_pointer1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(26),
      I1 => axis_tlast0(27),
      O => \read_pointer1_carry__2_i_7_n_0\
    );
\read_pointer1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(24),
      I1 => axis_tlast0(25),
      O => \read_pointer1_carry__2_i_8_n_0\
    );
read_pointer1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(6),
      I1 => read_pointer_reg(6),
      I2 => read_pointer_reg(7),
      I3 => axis_tlast0(7),
      O => read_pointer1_carry_i_1_n_0
    );
read_pointer1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(4),
      I1 => read_pointer_reg(4),
      I2 => read_pointer_reg(5),
      I3 => axis_tlast0(5),
      O => read_pointer1_carry_i_2_n_0
    );
read_pointer1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tlast0(2),
      I1 => read_pointer_reg(2),
      I2 => read_pointer_reg(3),
      I3 => axis_tlast0(3),
      O => read_pointer1_carry_i_3_n_0
    );
read_pointer1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => DMA_S2MM_BUFF_LEN(0),
      I2 => read_pointer_reg(1),
      I3 => axis_tlast0(1),
      O => read_pointer1_carry_i_4_n_0
    );
read_pointer1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(6),
      I1 => read_pointer_reg(6),
      I2 => axis_tlast0(7),
      I3 => read_pointer_reg(7),
      O => read_pointer1_carry_i_5_n_0
    );
read_pointer1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(4),
      I1 => read_pointer_reg(4),
      I2 => axis_tlast0(5),
      I3 => read_pointer_reg(5),
      O => read_pointer1_carry_i_6_n_0
    );
read_pointer1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tlast0(2),
      I1 => read_pointer_reg(2),
      I2 => axis_tlast0(3),
      I3 => read_pointer_reg(3),
      O => read_pointer1_carry_i_7_n_0
    );
read_pointer1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => DMA_S2MM_BUFF_LEN(0),
      I2 => axis_tlast0(1),
      I3 => read_pointer_reg(1),
      O => read_pointer1_carry_i_8_n_0
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => axis_tlast,
      I1 => read_pointer1,
      I2 => m00_axis_aresetn,
      O => \read_pointer[0]_i_1_n_0\
    );
\read_pointer[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => read_pointer1,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => axis_tvalid0,
      I4 => m00_axis_tready,
      O => read_pointer
    );
\read_pointer[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => read_pointer_reg(0),
      O => \read_pointer[0]_i_4_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[0]_i_3_n_7\,
      Q => read_pointer_reg(0),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \read_pointer_reg[0]_i_3_n_0\,
      CO(2) => \read_pointer_reg[0]_i_3_n_1\,
      CO(1) => \read_pointer_reg[0]_i_3_n_2\,
      CO(0) => \read_pointer_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \read_pointer_reg[0]_i_3_n_4\,
      O(2) => \read_pointer_reg[0]_i_3_n_5\,
      O(1) => \read_pointer_reg[0]_i_3_n_6\,
      O(0) => \read_pointer_reg[0]_i_3_n_7\,
      S(3 downto 1) => read_pointer_reg(3 downto 1),
      S(0) => \read_pointer[0]_i_4_n_0\
    );
\read_pointer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[8]_i_1_n_5\,
      Q => read_pointer_reg(10),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[8]_i_1_n_4\,
      Q => read_pointer_reg(11),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[12]_i_1_n_7\,
      Q => read_pointer_reg(12),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer_reg[8]_i_1_n_0\,
      CO(3) => \NLW_read_pointer_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \read_pointer_reg[12]_i_1_n_1\,
      CO(1) => \read_pointer_reg[12]_i_1_n_2\,
      CO(0) => \read_pointer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_pointer_reg[12]_i_1_n_4\,
      O(2) => \read_pointer_reg[12]_i_1_n_5\,
      O(1) => \read_pointer_reg[12]_i_1_n_6\,
      O(0) => \read_pointer_reg[12]_i_1_n_7\,
      S(3 downto 0) => read_pointer_reg(15 downto 12)
    );
\read_pointer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[12]_i_1_n_6\,
      Q => read_pointer_reg(13),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[12]_i_1_n_5\,
      Q => read_pointer_reg(14),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[12]_i_1_n_4\,
      Q => read_pointer_reg(15),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[0]_i_3_n_6\,
      Q => read_pointer_reg(1),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[0]_i_3_n_5\,
      Q => read_pointer_reg(2),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[0]_i_3_n_4\,
      Q => read_pointer_reg(3),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[4]_i_1_n_7\,
      Q => read_pointer_reg(4),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer_reg[0]_i_3_n_0\,
      CO(3) => \read_pointer_reg[4]_i_1_n_0\,
      CO(2) => \read_pointer_reg[4]_i_1_n_1\,
      CO(1) => \read_pointer_reg[4]_i_1_n_2\,
      CO(0) => \read_pointer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_pointer_reg[4]_i_1_n_4\,
      O(2) => \read_pointer_reg[4]_i_1_n_5\,
      O(1) => \read_pointer_reg[4]_i_1_n_6\,
      O(0) => \read_pointer_reg[4]_i_1_n_7\,
      S(3 downto 0) => read_pointer_reg(7 downto 4)
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[4]_i_1_n_6\,
      Q => read_pointer_reg(5),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[4]_i_1_n_5\,
      Q => read_pointer_reg(6),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[4]_i_1_n_4\,
      Q => read_pointer_reg(7),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[8]_i_1_n_7\,
      Q => read_pointer_reg(8),
      R => \read_pointer[0]_i_1_n_0\
    );
\read_pointer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer_reg[4]_i_1_n_0\,
      CO(3) => \read_pointer_reg[8]_i_1_n_0\,
      CO(2) => \read_pointer_reg[8]_i_1_n_1\,
      CO(1) => \read_pointer_reg[8]_i_1_n_2\,
      CO(0) => \read_pointer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \read_pointer_reg[8]_i_1_n_4\,
      O(2) => \read_pointer_reg[8]_i_1_n_5\,
      O(1) => \read_pointer_reg[8]_i_1_n_6\,
      O(0) => \read_pointer_reg[8]_i_1_n_7\,
      S(3 downto 0) => read_pointer_reg(11 downto 8)
    );
\read_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => read_pointer,
      D => \read_pointer_reg[8]_i_1_n_6\,
      Q => read_pointer_reg(9),
      R => \read_pointer[0]_i_1_n_0\
    );
\stream_data_out[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000FFFF"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => axis_tvalid0,
      I3 => m00_axis_tready,
      I4 => m00_axis_aresetn,
      O => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(0),
      Q => m00_axis_tdata(0),
      R => '0'
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(10),
      Q => m00_axis_tdata(10),
      R => '0'
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(11),
      Q => m00_axis_tdata(11),
      R => '0'
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(12),
      Q => m00_axis_tdata(12),
      R => '0'
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(13),
      Q => m00_axis_tdata(13),
      R => '0'
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(14),
      Q => m00_axis_tdata(14),
      R => '0'
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(15),
      Q => m00_axis_tdata(15),
      R => '0'
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(16),
      Q => m00_axis_tdata(16),
      R => '0'
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(17),
      Q => m00_axis_tdata(17),
      R => '0'
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(18),
      Q => m00_axis_tdata(18),
      R => '0'
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(19),
      Q => m00_axis_tdata(19),
      R => '0'
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(1),
      Q => m00_axis_tdata(1),
      R => '0'
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(20),
      Q => m00_axis_tdata(20),
      R => '0'
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(21),
      Q => m00_axis_tdata(21),
      R => '0'
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(22),
      Q => m00_axis_tdata(22),
      R => '0'
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(23),
      Q => m00_axis_tdata(23),
      R => '0'
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(24),
      Q => m00_axis_tdata(24),
      R => '0'
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(25),
      Q => m00_axis_tdata(25),
      R => '0'
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(26),
      Q => m00_axis_tdata(26),
      R => '0'
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(27),
      Q => m00_axis_tdata(27),
      R => '0'
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(28),
      Q => m00_axis_tdata(28),
      R => '0'
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(29),
      Q => m00_axis_tdata(29),
      R => '0'
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(2),
      Q => m00_axis_tdata(2),
      R => '0'
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(30),
      Q => m00_axis_tdata(30),
      R => '0'
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(31),
      Q => m00_axis_tdata(31),
      R => '0'
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(3),
      Q => m00_axis_tdata(3),
      R => '0'
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(4),
      Q => m00_axis_tdata(4),
      R => '0'
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(5),
      Q => m00_axis_tdata(5),
      R => '0'
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(6),
      Q => m00_axis_tdata(6),
      R => '0'
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(7),
      Q => m00_axis_tdata(7),
      R => '0'
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(8),
      Q => m00_axis_tdata(8),
      R => '0'
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \stream_data_out[31]_i_1_n_0\,
      D => din(9),
      Q => m00_axis_tdata(9),
      R => '0'
    );
tx_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => axis_tlast,
      I2 => read_pointer1,
      I3 => m00_axis_aresetn,
      I4 => read_pointer,
      O => tx_done_i_1_n_0
    );
tx_done_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => tx_done_i_1_n_0,
      Q => tx_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI is
  port (
    axi_wready_reg_0 : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair21";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => s00_axi_arvalid,
      I2 => \^axi_arready_reg_0\,
      I3 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(2),
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => p_0_in(2),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg2(0),
      I2 => sel0(1),
      I3 => slv_reg1(0),
      I4 => sel0(0),
      I5 => slv_reg0(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(0),
      I1 => slv_reg6(0),
      I2 => sel0(1),
      I3 => slv_reg5(0),
      I4 => sel0(0),
      I5 => slv_reg4(0),
      O => \axi_rdata[0]_i_3_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg2(10),
      I2 => sel0(1),
      I3 => slv_reg1(10),
      I4 => sel0(0),
      I5 => slv_reg0(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(10),
      I1 => slv_reg6(10),
      I2 => sel0(1),
      I3 => slv_reg5(10),
      I4 => sel0(0),
      I5 => slv_reg4(10),
      O => \axi_rdata[10]_i_3_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg2(11),
      I2 => sel0(1),
      I3 => slv_reg1(11),
      I4 => sel0(0),
      I5 => slv_reg0(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(11),
      I1 => slv_reg6(11),
      I2 => sel0(1),
      I3 => slv_reg5(11),
      I4 => sel0(0),
      I5 => slv_reg4(11),
      O => \axi_rdata[11]_i_3_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg2(12),
      I2 => sel0(1),
      I3 => slv_reg1(12),
      I4 => sel0(0),
      I5 => slv_reg0(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(12),
      I1 => slv_reg6(12),
      I2 => sel0(1),
      I3 => slv_reg5(12),
      I4 => sel0(0),
      I5 => slv_reg4(12),
      O => \axi_rdata[12]_i_3_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg2(13),
      I2 => sel0(1),
      I3 => slv_reg1(13),
      I4 => sel0(0),
      I5 => slv_reg0(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(13),
      I1 => slv_reg6(13),
      I2 => sel0(1),
      I3 => slv_reg5(13),
      I4 => sel0(0),
      I5 => slv_reg4(13),
      O => \axi_rdata[13]_i_3_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg2(14),
      I2 => sel0(1),
      I3 => slv_reg1(14),
      I4 => sel0(0),
      I5 => slv_reg0(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => slv_reg5(14),
      I4 => sel0(0),
      I5 => slv_reg4(14),
      O => \axi_rdata[14]_i_3_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg2(15),
      I2 => sel0(1),
      I3 => slv_reg1(15),
      I4 => sel0(0),
      I5 => slv_reg0(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => slv_reg5(15),
      I4 => sel0(0),
      I5 => slv_reg4(15),
      O => \axi_rdata[15]_i_3_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg2(16),
      I2 => sel0(1),
      I3 => slv_reg1(16),
      I4 => sel0(0),
      I5 => slv_reg0(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(16),
      I1 => slv_reg6(16),
      I2 => sel0(1),
      I3 => slv_reg5(16),
      I4 => sel0(0),
      I5 => slv_reg4(16),
      O => \axi_rdata[16]_i_3_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg2(17),
      I2 => sel0(1),
      I3 => slv_reg1(17),
      I4 => sel0(0),
      I5 => slv_reg0(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(17),
      I1 => slv_reg6(17),
      I2 => sel0(1),
      I3 => slv_reg5(17),
      I4 => sel0(0),
      I5 => slv_reg4(17),
      O => \axi_rdata[17]_i_3_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg2(18),
      I2 => sel0(1),
      I3 => slv_reg1(18),
      I4 => sel0(0),
      I5 => slv_reg0(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(18),
      I1 => slv_reg6(18),
      I2 => sel0(1),
      I3 => slv_reg5(18),
      I4 => sel0(0),
      I5 => slv_reg4(18),
      O => \axi_rdata[18]_i_3_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg2(19),
      I2 => sel0(1),
      I3 => slv_reg1(19),
      I4 => sel0(0),
      I5 => slv_reg0(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(19),
      I1 => slv_reg6(19),
      I2 => sel0(1),
      I3 => slv_reg5(19),
      I4 => sel0(0),
      I5 => slv_reg4(19),
      O => \axi_rdata[19]_i_3_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg2(1),
      I2 => sel0(1),
      I3 => slv_reg1(1),
      I4 => sel0(0),
      I5 => slv_reg0(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(1),
      I1 => slv_reg6(1),
      I2 => sel0(1),
      I3 => slv_reg5(1),
      I4 => sel0(0),
      I5 => slv_reg4(1),
      O => \axi_rdata[1]_i_3_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg2(20),
      I2 => sel0(1),
      I3 => slv_reg1(20),
      I4 => sel0(0),
      I5 => slv_reg0(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => slv_reg5(20),
      I4 => sel0(0),
      I5 => slv_reg4(20),
      O => \axi_rdata[20]_i_3_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg2(21),
      I2 => sel0(1),
      I3 => slv_reg1(21),
      I4 => sel0(0),
      I5 => slv_reg0(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => slv_reg5(21),
      I4 => sel0(0),
      I5 => slv_reg4(21),
      O => \axi_rdata[21]_i_3_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg2(22),
      I2 => sel0(1),
      I3 => slv_reg1(22),
      I4 => sel0(0),
      I5 => slv_reg0(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => slv_reg5(22),
      I4 => sel0(0),
      I5 => slv_reg4(22),
      O => \axi_rdata[22]_i_3_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg2(23),
      I2 => sel0(1),
      I3 => slv_reg1(23),
      I4 => sel0(0),
      I5 => slv_reg0(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => slv_reg5(23),
      I4 => sel0(0),
      I5 => slv_reg4(23),
      O => \axi_rdata[23]_i_3_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg2(24),
      I2 => sel0(1),
      I3 => slv_reg1(24),
      I4 => sel0(0),
      I5 => slv_reg0(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[24]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => slv_reg5(24),
      I4 => sel0(0),
      I5 => slv_reg4(24),
      O => \axi_rdata[24]_i_3_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg2(25),
      I2 => sel0(1),
      I3 => slv_reg1(25),
      I4 => sel0(0),
      I5 => slv_reg0(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[25]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => slv_reg5(25),
      I4 => sel0(0),
      I5 => slv_reg4(25),
      O => \axi_rdata[25]_i_3_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg2(26),
      I2 => sel0(1),
      I3 => slv_reg1(26),
      I4 => sel0(0),
      I5 => slv_reg0(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[26]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => slv_reg5(26),
      I4 => sel0(0),
      I5 => slv_reg4(26),
      O => \axi_rdata[26]_i_3_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg2(27),
      I2 => sel0(1),
      I3 => slv_reg1(27),
      I4 => sel0(0),
      I5 => slv_reg0(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[27]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => slv_reg5(27),
      I4 => sel0(0),
      I5 => slv_reg4(27),
      O => \axi_rdata[27]_i_3_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg2(28),
      I2 => sel0(1),
      I3 => slv_reg1(28),
      I4 => sel0(0),
      I5 => slv_reg0(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[28]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => slv_reg5(28),
      I4 => sel0(0),
      I5 => slv_reg4(28),
      O => \axi_rdata[28]_i_3_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg2(29),
      I2 => sel0(1),
      I3 => slv_reg1(29),
      I4 => sel0(0),
      I5 => slv_reg0(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[29]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => slv_reg5(29),
      I4 => sel0(0),
      I5 => slv_reg4(29),
      O => \axi_rdata[29]_i_3_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg2(2),
      I2 => sel0(1),
      I3 => slv_reg1(2),
      I4 => sel0(0),
      I5 => slv_reg0(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(2),
      I1 => slv_reg6(2),
      I2 => sel0(1),
      I3 => slv_reg5(2),
      I4 => sel0(0),
      I5 => slv_reg4(2),
      O => \axi_rdata[2]_i_3_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg2(30),
      I2 => sel0(1),
      I3 => slv_reg1(30),
      I4 => sel0(0),
      I5 => slv_reg0(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => slv_reg5(30),
      I4 => sel0(0),
      I5 => slv_reg4(30),
      O => \axi_rdata[30]_i_3_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg2(31),
      I2 => sel0(1),
      I3 => slv_reg1(31),
      I4 => sel0(0),
      I5 => slv_reg0(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => slv_reg5(31),
      I4 => sel0(0),
      I5 => slv_reg4(31),
      O => \axi_rdata[31]_i_3_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg2(3),
      I2 => sel0(1),
      I3 => slv_reg1(3),
      I4 => sel0(0),
      I5 => slv_reg0(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(3),
      I1 => slv_reg6(3),
      I2 => sel0(1),
      I3 => slv_reg5(3),
      I4 => sel0(0),
      I5 => slv_reg4(3),
      O => \axi_rdata[3]_i_3_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg2(4),
      I2 => sel0(1),
      I3 => slv_reg1(4),
      I4 => sel0(0),
      I5 => slv_reg0(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(4),
      I1 => slv_reg6(4),
      I2 => sel0(1),
      I3 => slv_reg5(4),
      I4 => sel0(0),
      I5 => slv_reg4(4),
      O => \axi_rdata[4]_i_3_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg2(5),
      I2 => sel0(1),
      I3 => slv_reg1(5),
      I4 => sel0(0),
      I5 => slv_reg0(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(5),
      I1 => slv_reg6(5),
      I2 => sel0(1),
      I3 => slv_reg5(5),
      I4 => sel0(0),
      I5 => slv_reg4(5),
      O => \axi_rdata[5]_i_3_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg2(6),
      I2 => sel0(1),
      I3 => slv_reg1(6),
      I4 => sel0(0),
      I5 => slv_reg0(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(6),
      I1 => slv_reg6(6),
      I2 => sel0(1),
      I3 => slv_reg5(6),
      I4 => sel0(0),
      I5 => slv_reg4(6),
      O => \axi_rdata[6]_i_3_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg2(7),
      I2 => sel0(1),
      I3 => slv_reg1(7),
      I4 => sel0(0),
      I5 => slv_reg0(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(7),
      I1 => slv_reg6(7),
      I2 => sel0(1),
      I3 => slv_reg5(7),
      I4 => sel0(0),
      I5 => slv_reg4(7),
      O => \axi_rdata[7]_i_3_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg2(8),
      I2 => sel0(1),
      I3 => slv_reg1(8),
      I4 => sel0(0),
      I5 => slv_reg0(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(8),
      I1 => slv_reg6(8),
      I2 => sel0(1),
      I3 => slv_reg5(8),
      I4 => sel0(0),
      I5 => slv_reg4(8),
      O => \axi_rdata[8]_i_3_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg2(9),
      I2 => sel0(1),
      I3 => slv_reg1(9),
      I4 => sel0(0),
      I5 => slv_reg0(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg7(9),
      I1 => slv_reg6(9),
      I2 => sel0(1),
      I3 => slv_reg5(9),
      I4 => sel0(0),
      I5 => slv_reg4(9),
      O => \axi_rdata[9]_i_3_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[0]_i_2_n_0\,
      I1 => \axi_rdata[0]_i_3_n_0\,
      O => reg_data_out(0),
      S => sel0(2)
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[10]_i_2_n_0\,
      I1 => \axi_rdata[10]_i_3_n_0\,
      O => reg_data_out(10),
      S => sel0(2)
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[11]_i_2_n_0\,
      I1 => \axi_rdata[11]_i_3_n_0\,
      O => reg_data_out(11),
      S => sel0(2)
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[12]_i_2_n_0\,
      I1 => \axi_rdata[12]_i_3_n_0\,
      O => reg_data_out(12),
      S => sel0(2)
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[13]_i_2_n_0\,
      I1 => \axi_rdata[13]_i_3_n_0\,
      O => reg_data_out(13),
      S => sel0(2)
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[14]_i_2_n_0\,
      I1 => \axi_rdata[14]_i_3_n_0\,
      O => reg_data_out(14),
      S => sel0(2)
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[15]_i_2_n_0\,
      I1 => \axi_rdata[15]_i_3_n_0\,
      O => reg_data_out(15),
      S => sel0(2)
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[16]_i_2_n_0\,
      I1 => \axi_rdata[16]_i_3_n_0\,
      O => reg_data_out(16),
      S => sel0(2)
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[17]_i_2_n_0\,
      I1 => \axi_rdata[17]_i_3_n_0\,
      O => reg_data_out(17),
      S => sel0(2)
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[18]_i_2_n_0\,
      I1 => \axi_rdata[18]_i_3_n_0\,
      O => reg_data_out(18),
      S => sel0(2)
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[19]_i_2_n_0\,
      I1 => \axi_rdata[19]_i_3_n_0\,
      O => reg_data_out(19),
      S => sel0(2)
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[1]_i_2_n_0\,
      I1 => \axi_rdata[1]_i_3_n_0\,
      O => reg_data_out(1),
      S => sel0(2)
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[20]_i_2_n_0\,
      I1 => \axi_rdata[20]_i_3_n_0\,
      O => reg_data_out(20),
      S => sel0(2)
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[21]_i_2_n_0\,
      I1 => \axi_rdata[21]_i_3_n_0\,
      O => reg_data_out(21),
      S => sel0(2)
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[22]_i_2_n_0\,
      I1 => \axi_rdata[22]_i_3_n_0\,
      O => reg_data_out(22),
      S => sel0(2)
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[23]_i_2_n_0\,
      I1 => \axi_rdata[23]_i_3_n_0\,
      O => reg_data_out(23),
      S => sel0(2)
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[24]_i_2_n_0\,
      I1 => \axi_rdata[24]_i_3_n_0\,
      O => reg_data_out(24),
      S => sel0(2)
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[25]_i_2_n_0\,
      I1 => \axi_rdata[25]_i_3_n_0\,
      O => reg_data_out(25),
      S => sel0(2)
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[26]_i_2_n_0\,
      I1 => \axi_rdata[26]_i_3_n_0\,
      O => reg_data_out(26),
      S => sel0(2)
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[27]_i_2_n_0\,
      I1 => \axi_rdata[27]_i_3_n_0\,
      O => reg_data_out(27),
      S => sel0(2)
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[28]_i_2_n_0\,
      I1 => \axi_rdata[28]_i_3_n_0\,
      O => reg_data_out(28),
      S => sel0(2)
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[29]_i_2_n_0\,
      I1 => \axi_rdata[29]_i_3_n_0\,
      O => reg_data_out(29),
      S => sel0(2)
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[2]_i_2_n_0\,
      I1 => \axi_rdata[2]_i_3_n_0\,
      O => reg_data_out(2),
      S => sel0(2)
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[30]_i_2_n_0\,
      I1 => \axi_rdata[30]_i_3_n_0\,
      O => reg_data_out(30),
      S => sel0(2)
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[31]_i_2_n_0\,
      I1 => \axi_rdata[31]_i_3_n_0\,
      O => reg_data_out(31),
      S => sel0(2)
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[3]_i_2_n_0\,
      I1 => \axi_rdata[3]_i_3_n_0\,
      O => reg_data_out(3),
      S => sel0(2)
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[4]_i_2_n_0\,
      I1 => \axi_rdata[4]_i_3_n_0\,
      O => reg_data_out(4),
      S => sel0(2)
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[5]_i_2_n_0\,
      I1 => \axi_rdata[5]_i_3_n_0\,
      O => reg_data_out(5),
      S => sel0(2)
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[6]_i_2_n_0\,
      I1 => \axi_rdata[6]_i_3_n_0\,
      O => reg_data_out(6),
      S => sel0(2)
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[7]_i_2_n_0\,
      I1 => \axi_rdata[7]_i_3_n_0\,
      O => reg_data_out(7),
      S => sel0(2)
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[8]_i_2_n_0\,
      I1 => \axi_rdata[8]_i_3_n_0\,
      O => reg_data_out(8),
      S => sel0(2)
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \axi_rdata[9]_i_2_n_0\,
      I1 => \axi_rdata[9]_i_3_n_0\,
      O => reg_data_out(9),
      S => sel0(2)
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(1),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(1),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(1),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(1),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(1),
      I4 => p_0_in(2),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(2),
      I4 => p_0_in(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => s00_axi_wstrb(0),
      I4 => p_0_in(2),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => p_0_in(2),
      I4 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS is
  port (
    en : out STD_LOGIC;
    we_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    fifo_addr : in STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DMA_MM2S_START_ADDR : in STD_LOGIC_VECTOR ( 29 downto 0 );
    DMA_MM2S_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS is
  signal addr_to_bram : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \addr_to_bram[11]_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram[11]_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram[11]_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram[11]_i_5_n_0\ : STD_LOGIC;
  signal \addr_to_bram[15]_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram[15]_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram[15]_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram[15]_i_5_n_0\ : STD_LOGIC;
  signal \addr_to_bram[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram[3]_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram[3]_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram[3]_i_5_n_0\ : STD_LOGIC;
  signal \addr_to_bram[7]_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram[7]_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram[7]_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram[7]_i_5_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[29]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \addr_to_bram_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal axis_tready0 : STD_LOGIC;
  signal \axis_tready0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tready0_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tready0_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__1_n_1\ : STD_LOGIC;
  signal \axis_tready0_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tready0_carry__1_n_3\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \axis_tready0_carry__2_n_1\ : STD_LOGIC;
  signal \axis_tready0_carry__2_n_2\ : STD_LOGIC;
  signal \axis_tready0_carry__2_n_3\ : STD_LOGIC;
  signal axis_tready0_carry_i_1_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_2_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_3_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_4_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_5_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_6_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_7_n_0 : STD_LOGIC;
  signal axis_tready0_carry_i_8_n_0 : STD_LOGIC;
  signal axis_tready0_carry_n_0 : STD_LOGIC;
  signal axis_tready0_carry_n_1 : STD_LOGIC;
  signal axis_tready0_carry_n_2 : STD_LOGIC;
  signal axis_tready0_carry_n_3 : STD_LOGIC;
  signal axis_tready1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \axis_tready1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__1_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__1_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__2_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__2_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__2_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__3_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__3_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__3_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__4_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__4_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__4_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__5_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__5_n_1\ : STD_LOGIC;
  signal \axis_tready1_carry__5_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__5_n_3\ : STD_LOGIC;
  signal \axis_tready1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \axis_tready1_carry__6_n_2\ : STD_LOGIC;
  signal \axis_tready1_carry__6_n_3\ : STD_LOGIC;
  signal axis_tready1_carry_i_1_n_0 : STD_LOGIC;
  signal axis_tready1_carry_i_2_n_0 : STD_LOGIC;
  signal axis_tready1_carry_i_3_n_0 : STD_LOGIC;
  signal axis_tready1_carry_i_4_n_0 : STD_LOGIC;
  signal axis_tready1_carry_n_0 : STD_LOGIC;
  signal axis_tready1_carry_n_1 : STD_LOGIC;
  signal axis_tready1_carry_n_2 : STD_LOGIC;
  signal axis_tready1_carry_n_3 : STD_LOGIC;
  signal \data_to_bram[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_to_bram[31]_i_2_n_0\ : STD_LOGIC;
  signal fifo_wren : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC;
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \we[3]_i_1_n_0\ : STD_LOGIC;
  signal \^we_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[0]_i_4_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \write_pointer_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal \writes_done1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__0_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__0_n_1\ : STD_LOGIC;
  signal \writes_done1_carry__0_n_2\ : STD_LOGIC;
  signal \writes_done1_carry__0_n_3\ : STD_LOGIC;
  signal \writes_done1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \writes_done1_carry__1_n_1\ : STD_LOGIC;
  signal \writes_done1_carry__1_n_2\ : STD_LOGIC;
  signal \writes_done1_carry__1_n_3\ : STD_LOGIC;
  signal writes_done1_carry_i_1_n_0 : STD_LOGIC;
  signal writes_done1_carry_i_2_n_0 : STD_LOGIC;
  signal writes_done1_carry_i_3_n_0 : STD_LOGIC;
  signal writes_done1_carry_i_4_n_0 : STD_LOGIC;
  signal writes_done1_carry_n_0 : STD_LOGIC;
  signal writes_done1_carry_n_1 : STD_LOGIC;
  signal writes_done1_carry_n_2 : STD_LOGIC;
  signal writes_done1_carry_n_3 : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal \NLW_addr_to_bram_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_to_bram_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_axis_tready0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tready0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tready0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tready0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_axis_tready1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_axis_tready1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_pointer_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_writes_done1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_writes_done1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_writes_done1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_writes_done1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[10]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[13]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[17]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr[18]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr[21]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[22]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[23]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr[24]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr[25]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr[26]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr[27]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr[28]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr[29]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr[30]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr[3]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addr[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addr[6]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr[7]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr[8]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr[9]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of en_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s00_axis_tready_INST_0 : label is "soft_lutpair4";
begin
  we_1(0) <= \^we_1\(0);
\addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(8),
      I1 => done_cal,
      I2 => addr_to_bram(8),
      O => addr(8)
    );
\addr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(9),
      I1 => done_cal,
      I2 => addr_to_bram(9),
      O => addr(9)
    );
\addr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(10),
      I1 => done_cal,
      I2 => addr_to_bram(10),
      O => addr(10)
    );
\addr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(11),
      I1 => done_cal,
      I2 => addr_to_bram(11),
      O => addr(11)
    );
\addr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(12),
      I1 => done_cal,
      I2 => addr_to_bram(12),
      O => addr(12)
    );
\addr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(13),
      I1 => done_cal,
      I2 => addr_to_bram(13),
      O => addr(13)
    );
\addr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(14),
      I1 => done_cal,
      I2 => addr_to_bram(14),
      O => addr(14)
    );
\addr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(15),
      I1 => done_cal,
      I2 => addr_to_bram(15),
      O => addr(15)
    );
\addr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(16),
      I1 => done_cal,
      I2 => addr_to_bram(16),
      O => addr(16)
    );
\addr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(17),
      I1 => done_cal,
      I2 => addr_to_bram(17),
      O => addr(17)
    );
\addr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(18),
      I1 => done_cal,
      I2 => addr_to_bram(18),
      O => addr(18)
    );
\addr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(19),
      I1 => done_cal,
      I2 => addr_to_bram(19),
      O => addr(19)
    );
\addr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(20),
      I1 => done_cal,
      I2 => addr_to_bram(20),
      O => addr(20)
    );
\addr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(21),
      I1 => done_cal,
      I2 => addr_to_bram(21),
      O => addr(21)
    );
\addr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(22),
      I1 => done_cal,
      I2 => addr_to_bram(22),
      O => addr(22)
    );
\addr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(23),
      I1 => done_cal,
      I2 => addr_to_bram(23),
      O => addr(23)
    );
\addr[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(24),
      I1 => done_cal,
      I2 => addr_to_bram(24),
      O => addr(24)
    );
\addr[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(25),
      I1 => done_cal,
      I2 => addr_to_bram(25),
      O => addr(25)
    );
\addr[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(26),
      I1 => done_cal,
      I2 => addr_to_bram(26),
      O => addr(26)
    );
\addr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(27),
      I1 => done_cal,
      I2 => addr_to_bram(27),
      O => addr(27)
    );
\addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(0),
      I1 => done_cal,
      I2 => addr_to_bram(0),
      O => addr(0)
    );
\addr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(28),
      I1 => done_cal,
      I2 => addr_to_bram(28),
      O => addr(28)
    );
\addr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(29),
      I1 => done_cal,
      I2 => addr_to_bram(29),
      O => addr(29)
    );
\addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(1),
      I1 => done_cal,
      I2 => addr_to_bram(1),
      O => addr(1)
    );
\addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(2),
      I1 => done_cal,
      I2 => addr_to_bram(2),
      O => addr(2)
    );
\addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(3),
      I1 => done_cal,
      I2 => addr_to_bram(3),
      O => addr(3)
    );
\addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(4),
      I1 => done_cal,
      I2 => addr_to_bram(4),
      O => addr(4)
    );
\addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(5),
      I1 => done_cal,
      I2 => addr_to_bram(5),
      O => addr(5)
    );
\addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(6),
      I1 => done_cal,
      I2 => addr_to_bram(6),
      O => addr(6)
    );
\addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_addr(7),
      I1 => done_cal,
      I2 => addr_to_bram(7),
      O => addr(7)
    );
\addr_to_bram[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(11),
      I1 => DMA_MM2S_START_ADDR(11),
      O => \addr_to_bram[11]_i_2_n_0\
    );
\addr_to_bram[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(10),
      I1 => DMA_MM2S_START_ADDR(10),
      O => \addr_to_bram[11]_i_3_n_0\
    );
\addr_to_bram[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => DMA_MM2S_START_ADDR(9),
      O => \addr_to_bram[11]_i_4_n_0\
    );
\addr_to_bram[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => DMA_MM2S_START_ADDR(8),
      O => \addr_to_bram[11]_i_5_n_0\
    );
\addr_to_bram[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(15),
      I1 => DMA_MM2S_START_ADDR(15),
      O => \addr_to_bram[15]_i_2_n_0\
    );
\addr_to_bram[15]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(14),
      I1 => DMA_MM2S_START_ADDR(14),
      O => \addr_to_bram[15]_i_3_n_0\
    );
\addr_to_bram[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(13),
      I1 => DMA_MM2S_START_ADDR(13),
      O => \addr_to_bram[15]_i_4_n_0\
    );
\addr_to_bram[15]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(12),
      I1 => DMA_MM2S_START_ADDR(12),
      O => \addr_to_bram[15]_i_5_n_0\
    );
\addr_to_bram[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => DMA_MM2S_START_ADDR(3),
      O => \addr_to_bram[3]_i_2_n_0\
    );
\addr_to_bram[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => DMA_MM2S_START_ADDR(2),
      O => \addr_to_bram[3]_i_3_n_0\
    );
\addr_to_bram[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => DMA_MM2S_START_ADDR(1),
      O => \addr_to_bram[3]_i_4_n_0\
    );
\addr_to_bram[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => DMA_MM2S_START_ADDR(0),
      O => \addr_to_bram[3]_i_5_n_0\
    );
\addr_to_bram[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => DMA_MM2S_START_ADDR(7),
      O => \addr_to_bram[7]_i_2_n_0\
    );
\addr_to_bram[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => DMA_MM2S_START_ADDR(6),
      O => \addr_to_bram[7]_i_3_n_0\
    );
\addr_to_bram[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(5),
      I1 => DMA_MM2S_START_ADDR(5),
      O => \addr_to_bram[7]_i_4_n_0\
    );
\addr_to_bram[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => DMA_MM2S_START_ADDR(4),
      O => \addr_to_bram[7]_i_5_n_0\
    );
\addr_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[3]_i_1_n_7\,
      Q => addr_to_bram(0),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[11]_i_1_n_5\,
      Q => addr_to_bram(10),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[11]_i_1_n_4\,
      Q => addr_to_bram(11),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[7]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[11]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[11]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[11]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(11 downto 8),
      O(3) => \addr_to_bram_reg[11]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[11]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[11]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[11]_i_1_n_7\,
      S(3) => \addr_to_bram[11]_i_2_n_0\,
      S(2) => \addr_to_bram[11]_i_3_n_0\,
      S(1) => \addr_to_bram[11]_i_4_n_0\,
      S(0) => \addr_to_bram[11]_i_5_n_0\
    );
\addr_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[15]_i_1_n_7\,
      Q => addr_to_bram(12),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[15]_i_1_n_6\,
      Q => addr_to_bram(13),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[15]_i_1_n_5\,
      Q => addr_to_bram(14),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[15]_i_1_n_4\,
      Q => addr_to_bram(15),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[11]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[15]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[15]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[15]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(15 downto 12),
      O(3) => \addr_to_bram_reg[15]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[15]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[15]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[15]_i_1_n_7\,
      S(3) => \addr_to_bram[15]_i_2_n_0\,
      S(2) => \addr_to_bram[15]_i_3_n_0\,
      S(1) => \addr_to_bram[15]_i_4_n_0\,
      S(0) => \addr_to_bram[15]_i_5_n_0\
    );
\addr_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[19]_i_1_n_7\,
      Q => addr_to_bram(16),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[19]_i_1_n_6\,
      Q => addr_to_bram(17),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[19]_i_1_n_5\,
      Q => addr_to_bram(18),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[19]_i_1_n_4\,
      Q => addr_to_bram(19),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[15]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[19]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[19]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[19]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_to_bram_reg[19]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[19]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[19]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[19]_i_1_n_7\,
      S(3 downto 0) => DMA_MM2S_START_ADDR(19 downto 16)
    );
\addr_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[3]_i_1_n_6\,
      Q => addr_to_bram(1),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[23]_i_1_n_7\,
      Q => addr_to_bram(20),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[23]_i_1_n_6\,
      Q => addr_to_bram(21),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[23]_i_1_n_5\,
      Q => addr_to_bram(22),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[23]_i_1_n_4\,
      Q => addr_to_bram(23),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[19]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[23]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[23]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[23]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_to_bram_reg[23]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[23]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[23]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[23]_i_1_n_7\,
      S(3 downto 0) => DMA_MM2S_START_ADDR(23 downto 20)
    );
\addr_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[27]_i_1_n_7\,
      Q => addr_to_bram(24),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[27]_i_1_n_6\,
      Q => addr_to_bram(25),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[27]_i_1_n_5\,
      Q => addr_to_bram(26),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[27]_i_1_n_4\,
      Q => addr_to_bram(27),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[23]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[27]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[27]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[27]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_to_bram_reg[27]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[27]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[27]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[27]_i_1_n_7\,
      S(3 downto 0) => DMA_MM2S_START_ADDR(27 downto 24)
    );
\addr_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[29]_i_1_n_7\,
      Q => addr_to_bram(28),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[29]_i_1_n_6\,
      Q => addr_to_bram(29),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[29]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[27]_i_1_n_0\,
      CO(3 downto 1) => \NLW_addr_to_bram_reg[29]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addr_to_bram_reg[29]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_addr_to_bram_reg[29]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \addr_to_bram_reg[29]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[29]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => DMA_MM2S_START_ADDR(29 downto 28)
    );
\addr_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[3]_i_1_n_5\,
      Q => addr_to_bram(2),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[3]_i_1_n_4\,
      Q => addr_to_bram(3),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_to_bram_reg[3]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[3]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[3]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(3 downto 0),
      O(3) => \addr_to_bram_reg[3]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[3]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[3]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[3]_i_1_n_7\,
      S(3) => \addr_to_bram[3]_i_2_n_0\,
      S(2) => \addr_to_bram[3]_i_3_n_0\,
      S(1) => \addr_to_bram[3]_i_4_n_0\,
      S(0) => \addr_to_bram[3]_i_5_n_0\
    );
\addr_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[7]_i_1_n_7\,
      Q => addr_to_bram(4),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[7]_i_1_n_6\,
      Q => addr_to_bram(5),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[7]_i_1_n_5\,
      Q => addr_to_bram(6),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[7]_i_1_n_4\,
      Q => addr_to_bram(7),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram_reg[3]_i_1_n_0\,
      CO(3) => \addr_to_bram_reg[7]_i_1_n_0\,
      CO(2) => \addr_to_bram_reg[7]_i_1_n_1\,
      CO(1) => \addr_to_bram_reg[7]_i_1_n_2\,
      CO(0) => \addr_to_bram_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(7 downto 4),
      O(3) => \addr_to_bram_reg[7]_i_1_n_4\,
      O(2) => \addr_to_bram_reg[7]_i_1_n_5\,
      O(1) => \addr_to_bram_reg[7]_i_1_n_6\,
      O(0) => \addr_to_bram_reg[7]_i_1_n_7\,
      S(3) => \addr_to_bram[7]_i_2_n_0\,
      S(2) => \addr_to_bram[7]_i_3_n_0\,
      S(1) => \addr_to_bram[7]_i_4_n_0\,
      S(0) => \addr_to_bram[7]_i_5_n_0\
    );
\addr_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[11]_i_1_n_7\,
      Q => addr_to_bram(8),
      R => \data_to_bram[31]_i_1_n_0\
    );
\addr_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => \addr_to_bram_reg[11]_i_1_n_6\,
      Q => addr_to_bram(9),
      R => \data_to_bram[31]_i_1_n_0\
    );
axis_tready0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axis_tready0_carry_n_0,
      CO(2) => axis_tready0_carry_n_1,
      CO(1) => axis_tready0_carry_n_2,
      CO(0) => axis_tready0_carry_n_3,
      CYINIT => '1',
      DI(3) => axis_tready0_carry_i_1_n_0,
      DI(2) => axis_tready0_carry_i_2_n_0,
      DI(1) => axis_tready0_carry_i_3_n_0,
      DI(0) => axis_tready0_carry_i_4_n_0,
      O(3 downto 0) => NLW_axis_tready0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => axis_tready0_carry_i_5_n_0,
      S(2) => axis_tready0_carry_i_6_n_0,
      S(1) => axis_tready0_carry_i_7_n_0,
      S(0) => axis_tready0_carry_i_8_n_0
    );
\axis_tready0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tready0_carry_n_0,
      CO(3) => \axis_tready0_carry__0_n_0\,
      CO(2) => \axis_tready0_carry__0_n_1\,
      CO(1) => \axis_tready0_carry__0_n_2\,
      CO(0) => \axis_tready0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tready0_carry__0_i_1_n_0\,
      DI(2) => \axis_tready0_carry__0_i_2_n_0\,
      DI(1) => \axis_tready0_carry__0_i_3_n_0\,
      DI(0) => \axis_tready0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tready0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tready0_carry__0_i_5_n_0\,
      S(2) => \axis_tready0_carry__0_i_6_n_0\,
      S(1) => \axis_tready0_carry__0_i_7_n_0\,
      S(0) => \axis_tready0_carry__0_i_8_n_0\
    );
\axis_tready0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(14),
      I1 => write_pointer_reg(14),
      I2 => write_pointer_reg(15),
      I3 => axis_tready1(15),
      O => \axis_tready0_carry__0_i_1_n_0\
    );
\axis_tready0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(12),
      I1 => write_pointer_reg(12),
      I2 => write_pointer_reg(13),
      I3 => axis_tready1(13),
      O => \axis_tready0_carry__0_i_2_n_0\
    );
\axis_tready0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(10),
      I1 => write_pointer_reg(10),
      I2 => write_pointer_reg(11),
      I3 => axis_tready1(11),
      O => \axis_tready0_carry__0_i_3_n_0\
    );
\axis_tready0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(8),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(9),
      I3 => axis_tready1(9),
      O => \axis_tready0_carry__0_i_4_n_0\
    );
\axis_tready0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(14),
      I1 => write_pointer_reg(14),
      I2 => axis_tready1(15),
      I3 => write_pointer_reg(15),
      O => \axis_tready0_carry__0_i_5_n_0\
    );
\axis_tready0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(12),
      I1 => write_pointer_reg(12),
      I2 => axis_tready1(13),
      I3 => write_pointer_reg(13),
      O => \axis_tready0_carry__0_i_6_n_0\
    );
\axis_tready0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(10),
      I1 => write_pointer_reg(10),
      I2 => axis_tready1(11),
      I3 => write_pointer_reg(11),
      O => \axis_tready0_carry__0_i_7_n_0\
    );
\axis_tready0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(8),
      I1 => write_pointer_reg(8),
      I2 => axis_tready1(9),
      I3 => write_pointer_reg(9),
      O => \axis_tready0_carry__0_i_8_n_0\
    );
\axis_tready0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready0_carry__0_n_0\,
      CO(3) => \axis_tready0_carry__1_n_0\,
      CO(2) => \axis_tready0_carry__1_n_1\,
      CO(1) => \axis_tready0_carry__1_n_2\,
      CO(0) => \axis_tready0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tready0_carry__1_i_1_n_0\,
      DI(2) => \axis_tready0_carry__1_i_2_n_0\,
      DI(1) => \axis_tready0_carry__1_i_3_n_0\,
      DI(0) => \axis_tready0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tready0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tready0_carry__1_i_5_n_0\,
      S(2) => \axis_tready0_carry__1_i_6_n_0\,
      S(1) => \axis_tready0_carry__1_i_7_n_0\,
      S(0) => \axis_tready0_carry__1_i_8_n_0\
    );
\axis_tready0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(22),
      I1 => axis_tready1(23),
      O => \axis_tready0_carry__1_i_1_n_0\
    );
\axis_tready0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(20),
      I1 => axis_tready1(21),
      O => \axis_tready0_carry__1_i_2_n_0\
    );
\axis_tready0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(18),
      I1 => axis_tready1(19),
      O => \axis_tready0_carry__1_i_3_n_0\
    );
\axis_tready0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(16),
      I1 => axis_tready1(17),
      O => \axis_tready0_carry__1_i_4_n_0\
    );
\axis_tready0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(22),
      I1 => axis_tready1(23),
      O => \axis_tready0_carry__1_i_5_n_0\
    );
\axis_tready0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(20),
      I1 => axis_tready1(21),
      O => \axis_tready0_carry__1_i_6_n_0\
    );
\axis_tready0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(18),
      I1 => axis_tready1(19),
      O => \axis_tready0_carry__1_i_7_n_0\
    );
\axis_tready0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(16),
      I1 => axis_tready1(17),
      O => \axis_tready0_carry__1_i_8_n_0\
    );
\axis_tready0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready0_carry__1_n_0\,
      CO(3) => axis_tready0,
      CO(2) => \axis_tready0_carry__2_n_1\,
      CO(1) => \axis_tready0_carry__2_n_2\,
      CO(0) => \axis_tready0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \axis_tready0_carry__2_i_1_n_0\,
      DI(2) => \axis_tready0_carry__2_i_2_n_0\,
      DI(1) => \axis_tready0_carry__2_i_3_n_0\,
      DI(0) => \axis_tready0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_axis_tready0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \axis_tready0_carry__2_i_5_n_0\,
      S(2) => \axis_tready0_carry__2_i_6_n_0\,
      S(1) => \axis_tready0_carry__2_i_7_n_0\,
      S(0) => \axis_tready0_carry__2_i_8_n_0\
    );
\axis_tready0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(30),
      I1 => axis_tready1(31),
      O => \axis_tready0_carry__2_i_1_n_0\
    );
\axis_tready0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(28),
      I1 => axis_tready1(29),
      O => \axis_tready0_carry__2_i_2_n_0\
    );
\axis_tready0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(26),
      I1 => axis_tready1(27),
      O => \axis_tready0_carry__2_i_3_n_0\
    );
\axis_tready0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => axis_tready1(24),
      I1 => axis_tready1(25),
      O => \axis_tready0_carry__2_i_4_n_0\
    );
\axis_tready0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(30),
      I1 => axis_tready1(31),
      O => \axis_tready0_carry__2_i_5_n_0\
    );
\axis_tready0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(28),
      I1 => axis_tready1(29),
      O => \axis_tready0_carry__2_i_6_n_0\
    );
\axis_tready0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(26),
      I1 => axis_tready1(27),
      O => \axis_tready0_carry__2_i_7_n_0\
    );
\axis_tready0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(24),
      I1 => axis_tready1(25),
      O => \axis_tready0_carry__2_i_8_n_0\
    );
axis_tready0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(6),
      I1 => write_pointer_reg(6),
      I2 => write_pointer_reg(7),
      I3 => axis_tready1(7),
      O => axis_tready0_carry_i_1_n_0
    );
axis_tready0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(4),
      I1 => write_pointer_reg(4),
      I2 => write_pointer_reg(5),
      I3 => axis_tready1(5),
      O => axis_tready0_carry_i_2_n_0
    );
axis_tready0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => axis_tready1(2),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(3),
      I3 => axis_tready1(3),
      O => axis_tready0_carry_i_3_n_0
    );
axis_tready0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => DMA_MM2S_BUFF_LEN(0),
      I2 => write_pointer_reg(1),
      I3 => axis_tready1(1),
      O => axis_tready0_carry_i_4_n_0
    );
axis_tready0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(6),
      I1 => write_pointer_reg(6),
      I2 => axis_tready1(7),
      I3 => write_pointer_reg(7),
      O => axis_tready0_carry_i_5_n_0
    );
axis_tready0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(4),
      I1 => write_pointer_reg(4),
      I2 => axis_tready1(5),
      I3 => write_pointer_reg(5),
      O => axis_tready0_carry_i_6_n_0
    );
axis_tready0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => axis_tready1(2),
      I1 => write_pointer_reg(2),
      I2 => axis_tready1(3),
      I3 => write_pointer_reg(3),
      O => axis_tready0_carry_i_7_n_0
    );
axis_tready0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(0),
      I1 => write_pointer_reg(0),
      I2 => axis_tready1(1),
      I3 => write_pointer_reg(1),
      O => axis_tready0_carry_i_8_n_0
    );
axis_tready1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => axis_tready1_carry_n_0,
      CO(2) => axis_tready1_carry_n_1,
      CO(1) => axis_tready1_carry_n_2,
      CO(0) => axis_tready1_carry_n_3,
      CYINIT => DMA_MM2S_BUFF_LEN(0),
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(4 downto 1),
      O(3 downto 0) => axis_tready1(4 downto 1),
      S(3) => axis_tready1_carry_i_1_n_0,
      S(2) => axis_tready1_carry_i_2_n_0,
      S(1) => axis_tready1_carry_i_3_n_0,
      S(0) => axis_tready1_carry_i_4_n_0
    );
\axis_tready1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tready1_carry_n_0,
      CO(3) => \axis_tready1_carry__0_n_0\,
      CO(2) => \axis_tready1_carry__0_n_1\,
      CO(1) => \axis_tready1_carry__0_n_2\,
      CO(0) => \axis_tready1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(8 downto 5),
      O(3 downto 0) => axis_tready1(8 downto 5),
      S(3) => \axis_tready1_carry__0_i_1_n_0\,
      S(2) => \axis_tready1_carry__0_i_2_n_0\,
      S(1) => \axis_tready1_carry__0_i_3_n_0\,
      S(0) => \axis_tready1_carry__0_i_4_n_0\
    );
\axis_tready1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(8),
      O => \axis_tready1_carry__0_i_1_n_0\
    );
\axis_tready1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(7),
      O => \axis_tready1_carry__0_i_2_n_0\
    );
\axis_tready1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(6),
      O => \axis_tready1_carry__0_i_3_n_0\
    );
\axis_tready1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(5),
      O => \axis_tready1_carry__0_i_4_n_0\
    );
\axis_tready1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__0_n_0\,
      CO(3) => \axis_tready1_carry__1_n_0\,
      CO(2) => \axis_tready1_carry__1_n_1\,
      CO(1) => \axis_tready1_carry__1_n_2\,
      CO(0) => \axis_tready1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(12 downto 9),
      O(3 downto 0) => axis_tready1(12 downto 9),
      S(3) => \axis_tready1_carry__1_i_1_n_0\,
      S(2) => \axis_tready1_carry__1_i_2_n_0\,
      S(1) => \axis_tready1_carry__1_i_3_n_0\,
      S(0) => \axis_tready1_carry__1_i_4_n_0\
    );
\axis_tready1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(12),
      O => \axis_tready1_carry__1_i_1_n_0\
    );
\axis_tready1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(11),
      O => \axis_tready1_carry__1_i_2_n_0\
    );
\axis_tready1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(10),
      O => \axis_tready1_carry__1_i_3_n_0\
    );
\axis_tready1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(9),
      O => \axis_tready1_carry__1_i_4_n_0\
    );
\axis_tready1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__1_n_0\,
      CO(3) => \axis_tready1_carry__2_n_0\,
      CO(2) => \axis_tready1_carry__2_n_1\,
      CO(1) => \axis_tready1_carry__2_n_2\,
      CO(0) => \axis_tready1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(16 downto 13),
      O(3 downto 0) => axis_tready1(16 downto 13),
      S(3) => \axis_tready1_carry__2_i_1_n_0\,
      S(2) => \axis_tready1_carry__2_i_2_n_0\,
      S(1) => \axis_tready1_carry__2_i_3_n_0\,
      S(0) => \axis_tready1_carry__2_i_4_n_0\
    );
\axis_tready1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(16),
      O => \axis_tready1_carry__2_i_1_n_0\
    );
\axis_tready1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(15),
      O => \axis_tready1_carry__2_i_2_n_0\
    );
\axis_tready1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(14),
      O => \axis_tready1_carry__2_i_3_n_0\
    );
\axis_tready1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(13),
      O => \axis_tready1_carry__2_i_4_n_0\
    );
\axis_tready1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__2_n_0\,
      CO(3) => \axis_tready1_carry__3_n_0\,
      CO(2) => \axis_tready1_carry__3_n_1\,
      CO(1) => \axis_tready1_carry__3_n_2\,
      CO(0) => \axis_tready1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(20 downto 17),
      O(3 downto 0) => axis_tready1(20 downto 17),
      S(3) => \axis_tready1_carry__3_i_1_n_0\,
      S(2) => \axis_tready1_carry__3_i_2_n_0\,
      S(1) => \axis_tready1_carry__3_i_3_n_0\,
      S(0) => \axis_tready1_carry__3_i_4_n_0\
    );
\axis_tready1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(20),
      O => \axis_tready1_carry__3_i_1_n_0\
    );
\axis_tready1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(19),
      O => \axis_tready1_carry__3_i_2_n_0\
    );
\axis_tready1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(18),
      O => \axis_tready1_carry__3_i_3_n_0\
    );
\axis_tready1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(17),
      O => \axis_tready1_carry__3_i_4_n_0\
    );
\axis_tready1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__3_n_0\,
      CO(3) => \axis_tready1_carry__4_n_0\,
      CO(2) => \axis_tready1_carry__4_n_1\,
      CO(1) => \axis_tready1_carry__4_n_2\,
      CO(0) => \axis_tready1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(24 downto 21),
      O(3 downto 0) => axis_tready1(24 downto 21),
      S(3) => \axis_tready1_carry__4_i_1_n_0\,
      S(2) => \axis_tready1_carry__4_i_2_n_0\,
      S(1) => \axis_tready1_carry__4_i_3_n_0\,
      S(0) => \axis_tready1_carry__4_i_4_n_0\
    );
\axis_tready1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(24),
      O => \axis_tready1_carry__4_i_1_n_0\
    );
\axis_tready1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(23),
      O => \axis_tready1_carry__4_i_2_n_0\
    );
\axis_tready1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(22),
      O => \axis_tready1_carry__4_i_3_n_0\
    );
\axis_tready1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(21),
      O => \axis_tready1_carry__4_i_4_n_0\
    );
\axis_tready1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__4_n_0\,
      CO(3) => \axis_tready1_carry__5_n_0\,
      CO(2) => \axis_tready1_carry__5_n_1\,
      CO(1) => \axis_tready1_carry__5_n_2\,
      CO(0) => \axis_tready1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_MM2S_BUFF_LEN(28 downto 25),
      O(3 downto 0) => axis_tready1(28 downto 25),
      S(3) => \axis_tready1_carry__5_i_1_n_0\,
      S(2) => \axis_tready1_carry__5_i_2_n_0\,
      S(1) => \axis_tready1_carry__5_i_3_n_0\,
      S(0) => \axis_tready1_carry__5_i_4_n_0\
    );
\axis_tready1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(28),
      O => \axis_tready1_carry__5_i_1_n_0\
    );
\axis_tready1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(27),
      O => \axis_tready1_carry__5_i_2_n_0\
    );
\axis_tready1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(26),
      O => \axis_tready1_carry__5_i_3_n_0\
    );
\axis_tready1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(25),
      O => \axis_tready1_carry__5_i_4_n_0\
    );
\axis_tready1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tready1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_axis_tready1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \axis_tready1_carry__6_n_2\,
      CO(0) => \axis_tready1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => DMA_MM2S_BUFF_LEN(30 downto 29),
      O(3) => \NLW_axis_tready1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => axis_tready1(31 downto 29),
      S(3) => '0',
      S(2) => \axis_tready1_carry__6_i_1_n_0\,
      S(1) => \axis_tready1_carry__6_i_2_n_0\,
      S(0) => \axis_tready1_carry__6_i_3_n_0\
    );
\axis_tready1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(31),
      O => \axis_tready1_carry__6_i_1_n_0\
    );
\axis_tready1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(30),
      O => \axis_tready1_carry__6_i_2_n_0\
    );
\axis_tready1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(29),
      O => \axis_tready1_carry__6_i_3_n_0\
    );
axis_tready1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(4),
      O => axis_tready1_carry_i_1_n_0
    );
axis_tready1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(3),
      O => axis_tready1_carry_i_2_n_0
    );
axis_tready1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(2),
      O => axis_tready1_carry_i_3_n_0
    );
axis_tready1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(1),
      O => axis_tready1_carry_i_4_n_0
    );
\data_to_bram[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => mst_exec_state,
      I1 => axis_tready0,
      I2 => s00_axis_tvalid,
      O => \data_to_bram[31]_i_2_n_0\
    );
\data_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(0),
      Q => dout(0),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(10),
      Q => dout(10),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(11),
      Q => dout(11),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(12),
      Q => dout(12),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(13),
      Q => dout(13),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(14),
      Q => dout(14),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(15),
      Q => dout(15),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(16),
      Q => dout(16),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(17),
      Q => dout(17),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(18),
      Q => dout(18),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(19),
      Q => dout(19),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(1),
      Q => dout(1),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(20),
      Q => dout(20),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(21),
      Q => dout(21),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(22),
      Q => dout(22),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(23),
      Q => dout(23),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(24),
      Q => dout(24),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(25),
      Q => dout(25),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(26),
      Q => dout(26),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(27),
      Q => dout(27),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(28),
      Q => dout(28),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(29),
      Q => dout(29),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(2),
      Q => dout(2),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(30),
      Q => dout(30),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(31),
      Q => dout(31),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(3),
      Q => dout(3),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(4),
      Q => dout(4),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(5),
      Q => dout(5),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(6),
      Q => dout(6),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(7),
      Q => dout(7),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(8),
      Q => dout(8),
      R => \data_to_bram[31]_i_1_n_0\
    );
\data_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(9),
      Q => dout(9),
      R => \data_to_bram[31]_i_1_n_0\
    );
en_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \^we_1\(0),
      I1 => m00_axis_tready,
      I2 => done_cal,
      O => en
    );
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => mst_exec_state,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => mst_exec_state,
      R => '0'
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mst_exec_state,
      I1 => axis_tready0,
      O => s00_axis_tready
    );
\we[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEE200000000"
    )
        port map (
      I0 => \^we_1\(0),
      I1 => axis_tready0,
      I2 => s00_axis_tlast,
      I3 => \writes_done1_carry__1_n_1\,
      I4 => fifo_wren,
      I5 => s00_axis_aresetn,
      O => \we[3]_i_1_n_0\
    );
\we_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \we[3]_i_1_n_0\,
      Q => \^we_1\(0),
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => axis_tready0,
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => axis_tready0,
      I2 => mst_exec_state,
      O => fifo_wren
    );
\write_pointer[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \write_pointer[0]_i_4_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[0]_i_3_n_7\,
      Q => write_pointer_reg(0),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_pointer_reg[0]_i_3_n_0\,
      CO(2) => \write_pointer_reg[0]_i_3_n_1\,
      CO(1) => \write_pointer_reg[0]_i_3_n_2\,
      CO(0) => \write_pointer_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \write_pointer_reg[0]_i_3_n_4\,
      O(2) => \write_pointer_reg[0]_i_3_n_5\,
      O(1) => \write_pointer_reg[0]_i_3_n_6\,
      O(0) => \write_pointer_reg[0]_i_3_n_7\,
      S(3 downto 1) => write_pointer_reg(3 downto 1),
      S(0) => \write_pointer[0]_i_4_n_0\
    );
\write_pointer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[8]_i_1_n_5\,
      Q => write_pointer_reg(10),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[8]_i_1_n_4\,
      Q => write_pointer_reg(11),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[12]_i_1_n_7\,
      Q => write_pointer_reg(12),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[8]_i_1_n_0\,
      CO(3) => \NLW_write_pointer_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \write_pointer_reg[12]_i_1_n_1\,
      CO(1) => \write_pointer_reg[12]_i_1_n_2\,
      CO(0) => \write_pointer_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[12]_i_1_n_4\,
      O(2) => \write_pointer_reg[12]_i_1_n_5\,
      O(1) => \write_pointer_reg[12]_i_1_n_6\,
      O(0) => \write_pointer_reg[12]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(15 downto 12)
    );
\write_pointer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[12]_i_1_n_6\,
      Q => write_pointer_reg(13),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[12]_i_1_n_5\,
      Q => write_pointer_reg(14),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[12]_i_1_n_4\,
      Q => write_pointer_reg(15),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[0]_i_3_n_6\,
      Q => write_pointer_reg(1),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[0]_i_3_n_5\,
      Q => write_pointer_reg(2),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[0]_i_3_n_4\,
      Q => write_pointer_reg(3),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[4]_i_1_n_7\,
      Q => write_pointer_reg(4),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[0]_i_3_n_0\,
      CO(3) => \write_pointer_reg[4]_i_1_n_0\,
      CO(2) => \write_pointer_reg[4]_i_1_n_1\,
      CO(1) => \write_pointer_reg[4]_i_1_n_2\,
      CO(0) => \write_pointer_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[4]_i_1_n_4\,
      O(2) => \write_pointer_reg[4]_i_1_n_5\,
      O(1) => \write_pointer_reg[4]_i_1_n_6\,
      O(0) => \write_pointer_reg[4]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(7 downto 4)
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[4]_i_1_n_6\,
      Q => write_pointer_reg(5),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[4]_i_1_n_5\,
      Q => write_pointer_reg(6),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[4]_i_1_n_4\,
      Q => write_pointer_reg(7),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[8]_i_1_n_7\,
      Q => write_pointer_reg(8),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[4]_i_1_n_0\,
      CO(3) => \write_pointer_reg[8]_i_1_n_0\,
      CO(2) => \write_pointer_reg[8]_i_1_n_1\,
      CO(1) => \write_pointer_reg[8]_i_1_n_2\,
      CO(0) => \write_pointer_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[8]_i_1_n_4\,
      O(2) => \write_pointer_reg[8]_i_1_n_5\,
      O(1) => \write_pointer_reg[8]_i_1_n_6\,
      O(0) => \write_pointer_reg[8]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(11 downto 8)
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \write_pointer_reg[8]_i_1_n_6\,
      Q => write_pointer_reg(9),
      R => \write_pointer[0]_i_1_n_0\
    );
writes_done1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => writes_done1_carry_n_0,
      CO(2) => writes_done1_carry_n_1,
      CO(1) => writes_done1_carry_n_2,
      CO(0) => writes_done1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_writes_done1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => writes_done1_carry_i_1_n_0,
      S(2) => writes_done1_carry_i_2_n_0,
      S(1) => writes_done1_carry_i_3_n_0,
      S(0) => writes_done1_carry_i_4_n_0
    );
\writes_done1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => writes_done1_carry_n_0,
      CO(3) => \writes_done1_carry__0_n_0\,
      CO(2) => \writes_done1_carry__0_n_1\,
      CO(1) => \writes_done1_carry__0_n_2\,
      CO(0) => \writes_done1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_writes_done1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \writes_done1_carry__0_i_1_n_0\,
      S(2) => \writes_done1_carry__0_i_2_n_0\,
      S(1) => \writes_done1_carry__0_i_3_n_0\,
      S(0) => \writes_done1_carry__0_i_4_n_0\
    );
\writes_done1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tready1(23),
      I1 => axis_tready1(22),
      I2 => axis_tready1(21),
      O => \writes_done1_carry__0_i_1_n_0\
    );
\writes_done1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tready1(20),
      I1 => axis_tready1(19),
      I2 => axis_tready1(18),
      O => \writes_done1_carry__0_i_2_n_0\
    );
\writes_done1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0009"
    )
        port map (
      I0 => write_pointer_reg(15),
      I1 => axis_tready1(15),
      I2 => axis_tready1(17),
      I3 => axis_tready1(16),
      O => \writes_done1_carry__0_i_3_n_0\
    );
\writes_done1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(12),
      I1 => axis_tready1(12),
      I2 => axis_tready1(14),
      I3 => write_pointer_reg(14),
      I4 => axis_tready1(13),
      I5 => write_pointer_reg(13),
      O => \writes_done1_carry__0_i_4_n_0\
    );
\writes_done1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writes_done1_carry__0_n_0\,
      CO(3) => \NLW_writes_done1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \writes_done1_carry__1_n_1\,
      CO(1) => \writes_done1_carry__1_n_2\,
      CO(0) => \writes_done1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_writes_done1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \writes_done1_carry__1_i_1_n_0\,
      S(1) => \writes_done1_carry__1_i_2_n_0\,
      S(0) => \writes_done1_carry__1_i_3_n_0\
    );
\writes_done1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tready1(30),
      I1 => axis_tready1(31),
      O => \writes_done1_carry__1_i_1_n_0\
    );
\writes_done1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tready1(29),
      I1 => axis_tready1(28),
      I2 => axis_tready1(27),
      O => \writes_done1_carry__1_i_2_n_0\
    );
\writes_done1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tready1(26),
      I1 => axis_tready1(25),
      I2 => axis_tready1(24),
      O => \writes_done1_carry__1_i_3_n_0\
    );
writes_done1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => axis_tready1(9),
      I2 => axis_tready1(11),
      I3 => write_pointer_reg(11),
      I4 => axis_tready1(10),
      I5 => write_pointer_reg(10),
      O => writes_done1_carry_i_1_n_0
    );
writes_done1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => axis_tready1(6),
      I2 => axis_tready1(8),
      I3 => write_pointer_reg(8),
      I4 => axis_tready1(7),
      I5 => write_pointer_reg(7),
      O => writes_done1_carry_i_2_n_0
    );
writes_done1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => axis_tready1(3),
      I2 => axis_tready1(5),
      I3 => write_pointer_reg(5),
      I4 => axis_tready1(4),
      I5 => write_pointer_reg(4),
      O => writes_done1_carry_i_3_n_0
    );
writes_done1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => DMA_MM2S_BUFF_LEN(0),
      I2 => axis_tready1(2),
      I3 => write_pointer_reg(2),
      I4 => axis_tready1(1),
      I5 => write_pointer_reg(1),
      O => writes_done1_carry_i_4_n_0
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFEAAAA00000000"
    )
        port map (
      I0 => writes_done,
      I1 => s00_axis_tlast,
      I2 => \writes_done1_carry__1_n_1\,
      I3 => fifo_wren,
      I4 => axis_tready0,
      I5 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0 is
  port (
    s00_axi_wready : out STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    we_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    en : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    DMA_S2MM_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DMA_MM2S_START_ADDR : in STD_LOGIC_VECTOR ( 29 downto 0 );
    DMA_MM2S_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    DMA_S2MM_START_ADDR : in STD_LOGIC_VECTOR ( 29 downto 0 );
    done_cal : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0 is
  signal fifo_addr : STD_LOGIC_VECTOR ( 29 downto 0 );
begin
S2MMV2_v1_0_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS
     port map (
      DMA_S2MM_BUFF_LEN(31 downto 0) => DMA_S2MM_BUFF_LEN(31 downto 0),
      DMA_S2MM_START_ADDR(29 downto 0) => DMA_S2MM_START_ADDR(29 downto 0),
      din(31 downto 0) => din(31 downto 0),
      fifo_addr(29 downto 0) => fifo_addr(29 downto 0),
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
S2MMV2_v1_0_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS
     port map (
      DMA_MM2S_BUFF_LEN(31 downto 0) => DMA_MM2S_BUFF_LEN(31 downto 0),
      DMA_MM2S_START_ADDR(29 downto 0) => DMA_MM2S_START_ADDR(29 downto 0),
      addr(29 downto 0) => addr(29 downto 0),
      done_cal => done_cal,
      dout(31 downto 0) => dout(31 downto 0),
      en => en,
      fifo_addr(29 downto 0) => fifo_addr(29 downto 0),
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      we_1(0) => we_1(0)
    );
S2MMV2_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en : out STD_LOGIC;
    DMA_MM2S_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DMA_MM2S_START_ADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DMA_S2MM_BUFF_LEN : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DMA_S2MM_START_ADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_cal : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SOC_DMA_V2_S2MMV2_0_0,S2MMV2_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "S2MMV2_v1_0,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^addr\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \^we_1\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 10000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  addr(31 downto 2) <= \^addr\(31 downto 2);
  addr(1) <= \<const0>\;
  addr(0) <= \<const0>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  we_1(3) <= \^we_1\(3);
  we_1(2) <= \^we_1\(3);
  we_1(1) <= \^we_1\(3);
  we_1(0) <= \^we_1\(3);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0
     port map (
      DMA_MM2S_BUFF_LEN(31 downto 0) => DMA_MM2S_BUFF_LEN(31 downto 0),
      DMA_MM2S_START_ADDR(29 downto 0) => DMA_MM2S_START_ADDR(29 downto 0),
      DMA_S2MM_BUFF_LEN(31 downto 0) => DMA_S2MM_BUFF_LEN(31 downto 0),
      DMA_S2MM_START_ADDR(29 downto 0) => DMA_S2MM_START_ADDR(29 downto 0),
      addr(29 downto 0) => \^addr\(31 downto 2),
      din(31 downto 0) => din(31 downto 0),
      done_cal => done_cal,
      dout(31 downto 0) => dout(31 downto 0),
      en => en,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      s00_axis_tvalid => s00_axis_tvalid,
      we_1(0) => \^we_1\(3)
    );
end STRUCTURE;
