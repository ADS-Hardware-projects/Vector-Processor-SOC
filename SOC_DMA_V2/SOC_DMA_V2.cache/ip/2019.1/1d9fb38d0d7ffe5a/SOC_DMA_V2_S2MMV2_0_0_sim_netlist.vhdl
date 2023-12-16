-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Dec 14 15:45:54 2023
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
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axis_tvalid0_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axis_tvalid0_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axis_tvalid0_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axis_tvalid0_carry__2_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_tvalid_delay_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_tvalid_delay_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_pointer1_carry__0_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_pointer1_carry__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \read_pointer1_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \read_pointer1_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    tx_done_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \axis_tlast_carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    axis_tlast0 : in STD_LOGIC_VECTOR ( 29 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal axis_tlast : STD_LOGIC;
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
  signal axis_tlast_carry_n_0 : STD_LOGIC;
  signal axis_tlast_carry_n_1 : STD_LOGIC;
  signal axis_tlast_carry_n_2 : STD_LOGIC;
  signal axis_tlast_carry_n_3 : STD_LOGIC;
  signal axis_tlast_delay : STD_LOGIC;
  signal axis_tlast_delay_delay_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid0 : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__0_n_3\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_0\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__1_n_3\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_1\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_2\ : STD_LOGIC;
  signal \axis_tvalid0_carry__2_n_3\ : STD_LOGIC;
  signal axis_tvalid0_carry_n_0 : STD_LOGIC;
  signal axis_tvalid0_carry_n_1 : STD_LOGIC;
  signal axis_tvalid0_carry_n_2 : STD_LOGIC;
  signal axis_tvalid0_carry_n_3 : STD_LOGIC;
  signal axis_tvalid_delay : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal read_pointer1 : STD_LOGIC;
  signal \read_pointer1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__0_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__1_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__2_n_3\ : STD_LOGIC;
  signal read_pointer1_carry_i_5_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_6_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_7_n_0 : STD_LOGIC;
  signal read_pointer1_carry_n_0 : STD_LOGIC;
  signal read_pointer1_carry_n_1 : STD_LOGIC;
  signal read_pointer1_carry_n_2 : STD_LOGIC;
  signal read_pointer1_carry_n_3 : STD_LOGIC;
  signal \stream_data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal \tx_en__0\ : STD_LOGIC;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair1";
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
      S(0) => \axis_tlast_carry__0_0\(0)
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
      I0 => axis_tlast0(21),
      I1 => axis_tlast0(20),
      I2 => axis_tlast0(19),
      O => \axis_tlast_carry__0_i_1_n_0\
    );
\axis_tlast_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(18),
      I1 => axis_tlast0(17),
      I2 => axis_tlast0(16),
      O => \axis_tlast_carry__0_i_2_n_0\
    );
\axis_tlast_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(15),
      I1 => axis_tlast0(14),
      I2 => axis_tlast0(13),
      O => \axis_tlast_carry__0_i_3_n_0\
    );
\axis_tlast_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(12),
      I1 => axis_tlast0(11),
      I2 => axis_tlast0(10),
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
      I0 => axis_tlast0(28),
      I1 => axis_tlast0(29),
      O => \axis_tlast_carry__1_i_1_n_0\
    );
\axis_tlast_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(27),
      I1 => axis_tlast0(26),
      I2 => axis_tlast0(25),
      O => \axis_tlast_carry__1_i_2_n_0\
    );
\axis_tlast_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(24),
      I1 => axis_tlast0(23),
      I2 => axis_tlast0(22),
      O => \axis_tlast_carry__1_i_3_n_0\
    );
axis_tlast_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(9),
      I1 => axis_tlast0(8),
      I2 => axis_tlast0(7),
      O => axis_tlast_carry_i_1_n_0
    );
axis_tlast_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(6),
      I1 => axis_tlast0(5),
      I2 => axis_tlast0(4),
      O => axis_tlast_carry_i_2_n_0
    );
axis_tlast_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => axis_tlast0(3),
      I1 => axis_tlast0(2),
      I2 => axis_tlast0(1),
      O => axis_tlast_carry_i_3_n_0
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
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => NLW_axis_tvalid0_carry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\axis_tvalid0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => axis_tvalid0_carry_n_0,
      CO(3) => \axis_tvalid0_carry__0_n_0\,
      CO(2) => \axis_tvalid0_carry__0_n_1\,
      CO(1) => \axis_tvalid0_carry__0_n_2\,
      CO(0) => \axis_tvalid0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \axis_tvalid0_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_axis_tvalid0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \axis_tvalid0_carry__1_1\(3 downto 0)
    );
\axis_tvalid0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tvalid0_carry__0_n_0\,
      CO(3) => \axis_tvalid0_carry__1_n_0\,
      CO(2) => \axis_tvalid0_carry__1_n_1\,
      CO(1) => \axis_tvalid0_carry__1_n_2\,
      CO(0) => \axis_tvalid0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \axis_tvalid0_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_axis_tvalid0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \axis_tvalid0_carry__2_1\(3 downto 0)
    );
\axis_tvalid0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \axis_tvalid0_carry__1_n_0\,
      CO(3) => axis_tvalid0,
      CO(2) => \axis_tvalid0_carry__2_n_1\,
      CO(1) => \axis_tvalid0_carry__2_n_2\,
      CO(0) => \axis_tvalid0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => axis_tvalid_delay_reg_0(3 downto 0),
      O(3 downto 0) => \NLW_axis_tvalid0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => axis_tvalid_delay_reg_1(3 downto 0)
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
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => count_reg(0),
      I1 => count_reg(1),
      O => p_0_in(1)
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
      O => p_0_in(3)
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
      O => p_0_in(4)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(0),
      Q => count_reg(0),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(1),
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
      D => p_0_in(3),
      Q => count_reg(3),
      R => axis_tlast_delay_delay_i_1_n_0
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(4),
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
      DI(3 downto 0) => \read_pointer1_carry__0_0\(3 downto 0),
      O(3 downto 0) => NLW_read_pointer1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => read_pointer1_carry_i_5_n_0,
      S(2) => read_pointer1_carry_i_6_n_0,
      S(1) => read_pointer1_carry_i_7_n_0,
      S(0) => \read_pointer1_carry__0_1\(0)
    );
\read_pointer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => read_pointer1_carry_n_0,
      CO(3) => \read_pointer1_carry__0_n_0\,
      CO(2) => \read_pointer1_carry__0_n_1\,
      CO(1) => \read_pointer1_carry__0_n_2\,
      CO(0) => \read_pointer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \read_pointer1_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_read_pointer1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__0_i_5_n_0\,
      S(2) => \read_pointer1_carry__0_i_6_n_0\,
      S(1) => \read_pointer1_carry__0_i_7_n_0\,
      S(0) => \read_pointer1_carry__0_i_8_n_0\
    );
\read_pointer1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(12),
      I1 => axis_tlast0(13),
      O => \read_pointer1_carry__0_i_5_n_0\
    );
\read_pointer1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(10),
      I1 => axis_tlast0(11),
      O => \read_pointer1_carry__0_i_6_n_0\
    );
\read_pointer1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(8),
      I1 => axis_tlast0(9),
      O => \read_pointer1_carry__0_i_7_n_0\
    );
\read_pointer1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(6),
      I1 => axis_tlast0(7),
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
      DI(3 downto 0) => \read_pointer1_carry__2_0\(3 downto 0),
      O(3 downto 0) => \NLW_read_pointer1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__1_i_5_n_0\,
      S(2) => \read_pointer1_carry__1_i_6_n_0\,
      S(1) => \read_pointer1_carry__1_i_7_n_0\,
      S(0) => \read_pointer1_carry__1_i_8_n_0\
    );
\read_pointer1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(20),
      I1 => axis_tlast0(21),
      O => \read_pointer1_carry__1_i_5_n_0\
    );
\read_pointer1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(18),
      I1 => axis_tlast0(19),
      O => \read_pointer1_carry__1_i_6_n_0\
    );
\read_pointer1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(16),
      I1 => axis_tlast0(17),
      O => \read_pointer1_carry__1_i_7_n_0\
    );
\read_pointer1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(14),
      I1 => axis_tlast0(15),
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
      DI(3 downto 0) => tx_done_reg_0(3 downto 0),
      O(3 downto 0) => \NLW_read_pointer1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \read_pointer1_carry__2_i_5_n_0\,
      S(2) => \read_pointer1_carry__2_i_6_n_0\,
      S(1) => \read_pointer1_carry__2_i_7_n_0\,
      S(0) => \read_pointer1_carry__2_i_8_n_0\
    );
\read_pointer1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(28),
      I1 => axis_tlast0(29),
      O => \read_pointer1_carry__2_i_5_n_0\
    );
\read_pointer1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(26),
      I1 => axis_tlast0(27),
      O => \read_pointer1_carry__2_i_6_n_0\
    );
\read_pointer1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(24),
      I1 => axis_tlast0(25),
      O => \read_pointer1_carry__2_i_7_n_0\
    );
\read_pointer1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(22),
      I1 => axis_tlast0(23),
      O => \read_pointer1_carry__2_i_8_n_0\
    );
read_pointer1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(4),
      I1 => axis_tlast0(5),
      O => read_pointer1_carry_i_5_n_0
    );
read_pointer1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(2),
      I1 => axis_tlast0(3),
      O => read_pointer1_carry_i_6_n_0
    );
read_pointer1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_tlast0(0),
      I1 => axis_tlast0(1),
      O => read_pointer1_carry_i_7_n_0
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
      INIT => X"00E0A0E0"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => axis_tlast,
      I2 => m00_axis_aresetn,
      I3 => read_pointer1,
      I4 => \tx_en__0\,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => axis_tvalid0,
      I2 => mst_exec_state(1),
      I3 => mst_exec_state(0),
      O => \tx_en__0\
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
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    \slv_reg2_reg[30]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[22]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg2_reg[30]_1\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    \slv_reg0_reg[31]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \slv_reg0_reg[28]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[24]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[20]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[16]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[12]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg0_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[14]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[22]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[30]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[8]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[16]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[24]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[30]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \slv_reg2_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg1_reg[29]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    \addr[31]\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
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
  signal DMA_MM2S_BUFF_LEN : STD_LOGIC_VECTOR ( 31 to 31 );
  signal DMA_MM2S_START_ADDR : STD_LOGIC_VECTOR ( 31 downto 30 );
  signal DMA_S2MM_BUFF_LEN : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal DMA_S2MM_START_ADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0\ : STD_LOGIC_VECTOR ( 1 to 1 );
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
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \read_pointer1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_10_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_10_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_10_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_18_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_9_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_9_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_10_n_1\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_10_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_10_n_3\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_13_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_14_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_15_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_16_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_17_n_0\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_9_n_2\ : STD_LOGIC;
  signal \read_pointer1_carry__2_i_9_n_3\ : STD_LOGIC;
  signal read_pointer1_carry_i_10_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_10_n_1 : STD_LOGIC;
  signal read_pointer1_carry_i_10_n_2 : STD_LOGIC;
  signal read_pointer1_carry_i_10_n_3 : STD_LOGIC;
  signal read_pointer1_carry_i_11_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_12_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_13_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_14_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_15_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_16_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_17_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_18_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_9_n_0 : STD_LOGIC;
  signal read_pointer1_carry_i_9_n_1 : STD_LOGIC;
  signal read_pointer1_carry_i_9_n_2 : STD_LOGIC;
  signal read_pointer1_carry_i_9_n_3 : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg1_reg[29]_0\ : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal \^slv_reg2_reg[30]_1\ : STD_LOGIC_VECTOR ( 29 downto 0 );
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
  signal \NLW_read_pointer1_carry__2_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_read_pointer1_carry__2_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[10]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[11]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[12]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr[13]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr[16]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[17]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[18]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[19]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr[20]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr[21]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addr[22]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr[23]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr[24]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr[25]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr[26]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr[27]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr[28]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr[29]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr[2]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addr[30]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr[31]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addr[3]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addr[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addr[5]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[6]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[8]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addr[9]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair6";
begin
  Q(30 downto 0) <= \^q\(30 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
  \slv_reg1_reg[29]_0\(29 downto 0) <= \^slv_reg1_reg[29]_0\(29 downto 0);
  \slv_reg2_reg[30]_1\(29 downto 0) <= \^slv_reg2_reg[30]_1\(29 downto 0);
\addr[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(8),
      I1 => done_cal,
      I2 => \addr[31]\(8),
      O => addr(8)
    );
\addr[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(9),
      I1 => done_cal,
      I2 => \addr[31]\(9),
      O => addr(9)
    );
\addr[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(10),
      I1 => done_cal,
      I2 => \addr[31]\(10),
      O => addr(10)
    );
\addr[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(11),
      I1 => done_cal,
      I2 => \addr[31]\(11),
      O => addr(11)
    );
\addr[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(12),
      I1 => done_cal,
      I2 => \addr[31]\(12),
      O => addr(12)
    );
\addr[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(13),
      I1 => done_cal,
      I2 => \addr[31]\(13),
      O => addr(13)
    );
\addr[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(14),
      I1 => done_cal,
      I2 => \addr[31]\(14),
      O => addr(14)
    );
\addr[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(15),
      I1 => done_cal,
      I2 => \addr[31]\(15),
      O => addr(15)
    );
\addr[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(16),
      I1 => done_cal,
      I2 => \addr[31]\(16),
      O => addr(16)
    );
\addr[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(17),
      I1 => done_cal,
      I2 => \addr[31]\(17),
      O => addr(17)
    );
\addr[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(18),
      I1 => done_cal,
      I2 => \addr[31]\(18),
      O => addr(18)
    );
\addr[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(19),
      I1 => done_cal,
      I2 => \addr[31]\(19),
      O => addr(19)
    );
\addr[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(20),
      I1 => done_cal,
      I2 => \addr[31]\(20),
      O => addr(20)
    );
\addr[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(21),
      I1 => done_cal,
      I2 => \addr[31]\(21),
      O => addr(21)
    );
\addr[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(22),
      I1 => done_cal,
      I2 => \addr[31]\(22),
      O => addr(22)
    );
\addr[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(23),
      I1 => done_cal,
      I2 => \addr[31]\(23),
      O => addr(23)
    );
\addr[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(24),
      I1 => done_cal,
      I2 => \addr[31]\(24),
      O => addr(24)
    );
\addr[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(25),
      I1 => done_cal,
      I2 => \addr[31]\(25),
      O => addr(25)
    );
\addr[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(26),
      I1 => done_cal,
      I2 => \addr[31]\(26),
      O => addr(26)
    );
\addr[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(27),
      I1 => done_cal,
      I2 => \addr[31]\(27),
      O => addr(27)
    );
\addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(0),
      I1 => done_cal,
      I2 => \addr[31]\(0),
      O => addr(0)
    );
\addr[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(28),
      I1 => done_cal,
      I2 => \addr[31]\(28),
      O => addr(28)
    );
\addr[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(29),
      I1 => done_cal,
      I2 => \addr[31]\(29),
      O => addr(29)
    );
\addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(1),
      I1 => done_cal,
      I2 => \addr[31]\(1),
      O => addr(1)
    );
\addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(2),
      I1 => done_cal,
      I2 => \addr[31]\(2),
      O => addr(2)
    );
\addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(3),
      I1 => done_cal,
      I2 => \addr[31]\(3),
      O => addr(3)
    );
\addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(4),
      I1 => done_cal,
      I2 => \addr[31]\(4),
      O => addr(4)
    );
\addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(5),
      I1 => done_cal,
      I2 => \addr[31]\(5),
      O => addr(5)
    );
\addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(6),
      I1 => done_cal,
      I2 => \addr[31]\(6),
      O => addr(6)
    );
\addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DMA_S2MM_START_ADDR(7),
      I1 => done_cal,
      I2 => \addr[31]\(7),
      O => addr(7)
    );
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
      I0 => DMA_S2MM_START_ADDR(0),
      I1 => DMA_S2MM_BUFF_LEN(0),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(0),
      I4 => sel0(0),
      I5 => \^q\(0),
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
      I0 => DMA_S2MM_START_ADDR(10),
      I1 => DMA_S2MM_BUFF_LEN(10),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(10),
      I4 => sel0(0),
      I5 => \^q\(10),
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
      I0 => DMA_S2MM_START_ADDR(11),
      I1 => DMA_S2MM_BUFF_LEN(11),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(11),
      I4 => sel0(0),
      I5 => \^q\(11),
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
      I0 => DMA_S2MM_START_ADDR(12),
      I1 => DMA_S2MM_BUFF_LEN(12),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(12),
      I4 => sel0(0),
      I5 => \^q\(12),
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
      I0 => DMA_S2MM_START_ADDR(13),
      I1 => DMA_S2MM_BUFF_LEN(13),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(13),
      I4 => sel0(0),
      I5 => \^q\(13),
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
      I0 => DMA_S2MM_START_ADDR(14),
      I1 => DMA_S2MM_BUFF_LEN(14),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(14),
      I4 => sel0(0),
      I5 => \^q\(14),
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
      I0 => DMA_S2MM_START_ADDR(15),
      I1 => DMA_S2MM_BUFF_LEN(15),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(15),
      I4 => sel0(0),
      I5 => \^q\(15),
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
      I0 => DMA_S2MM_START_ADDR(16),
      I1 => DMA_S2MM_BUFF_LEN(16),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(16),
      I4 => sel0(0),
      I5 => \^q\(16),
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
      I0 => DMA_S2MM_START_ADDR(17),
      I1 => DMA_S2MM_BUFF_LEN(17),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(17),
      I4 => sel0(0),
      I5 => \^q\(17),
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
      I0 => DMA_S2MM_START_ADDR(18),
      I1 => DMA_S2MM_BUFF_LEN(18),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(18),
      I4 => sel0(0),
      I5 => \^q\(18),
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
      I0 => DMA_S2MM_START_ADDR(19),
      I1 => DMA_S2MM_BUFF_LEN(19),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(19),
      I4 => sel0(0),
      I5 => \^q\(19),
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
      I0 => DMA_S2MM_START_ADDR(1),
      I1 => DMA_S2MM_BUFF_LEN(1),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(1),
      I4 => sel0(0),
      I5 => \^q\(1),
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
      I0 => DMA_S2MM_START_ADDR(20),
      I1 => DMA_S2MM_BUFF_LEN(20),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(20),
      I4 => sel0(0),
      I5 => \^q\(20),
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
      I0 => DMA_S2MM_START_ADDR(21),
      I1 => DMA_S2MM_BUFF_LEN(21),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(21),
      I4 => sel0(0),
      I5 => \^q\(21),
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
      I0 => DMA_S2MM_START_ADDR(22),
      I1 => DMA_S2MM_BUFF_LEN(22),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(22),
      I4 => sel0(0),
      I5 => \^q\(22),
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
      I0 => DMA_S2MM_START_ADDR(23),
      I1 => DMA_S2MM_BUFF_LEN(23),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(23),
      I4 => sel0(0),
      I5 => \^q\(23),
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
      I0 => DMA_S2MM_START_ADDR(24),
      I1 => DMA_S2MM_BUFF_LEN(24),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(24),
      I4 => sel0(0),
      I5 => \^q\(24),
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
      I0 => DMA_S2MM_START_ADDR(25),
      I1 => DMA_S2MM_BUFF_LEN(25),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(25),
      I4 => sel0(0),
      I5 => \^q\(25),
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
      I0 => DMA_S2MM_START_ADDR(26),
      I1 => DMA_S2MM_BUFF_LEN(26),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(26),
      I4 => sel0(0),
      I5 => \^q\(26),
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
      I0 => DMA_S2MM_START_ADDR(27),
      I1 => DMA_S2MM_BUFF_LEN(27),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(27),
      I4 => sel0(0),
      I5 => \^q\(27),
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
      I0 => DMA_S2MM_START_ADDR(28),
      I1 => DMA_S2MM_BUFF_LEN(28),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(28),
      I4 => sel0(0),
      I5 => \^q\(28),
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
      I0 => DMA_S2MM_START_ADDR(29),
      I1 => DMA_S2MM_BUFF_LEN(29),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(29),
      I4 => sel0(0),
      I5 => \^q\(29),
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
      I0 => DMA_S2MM_START_ADDR(2),
      I1 => DMA_S2MM_BUFF_LEN(2),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(2),
      I4 => sel0(0),
      I5 => \^q\(2),
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
      I0 => DMA_S2MM_START_ADDR(30),
      I1 => DMA_S2MM_BUFF_LEN(30),
      I2 => sel0(1),
      I3 => DMA_MM2S_START_ADDR(30),
      I4 => sel0(0),
      I5 => \^q\(30),
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
      I0 => DMA_S2MM_START_ADDR(31),
      I1 => DMA_S2MM_BUFF_LEN(31),
      I2 => sel0(1),
      I3 => DMA_MM2S_START_ADDR(31),
      I4 => sel0(0),
      I5 => DMA_MM2S_BUFF_LEN(31),
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
      I0 => DMA_S2MM_START_ADDR(3),
      I1 => DMA_S2MM_BUFF_LEN(3),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(3),
      I4 => sel0(0),
      I5 => \^q\(3),
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
      I0 => DMA_S2MM_START_ADDR(4),
      I1 => DMA_S2MM_BUFF_LEN(4),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(4),
      I4 => sel0(0),
      I5 => \^q\(4),
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
      I0 => DMA_S2MM_START_ADDR(5),
      I1 => DMA_S2MM_BUFF_LEN(5),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(5),
      I4 => sel0(0),
      I5 => \^q\(5),
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
      I0 => DMA_S2MM_START_ADDR(6),
      I1 => DMA_S2MM_BUFF_LEN(6),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(6),
      I4 => sel0(0),
      I5 => \^q\(6),
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
      I0 => DMA_S2MM_START_ADDR(7),
      I1 => DMA_S2MM_BUFF_LEN(7),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(7),
      I4 => sel0(0),
      I5 => \^q\(7),
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
      I0 => DMA_S2MM_START_ADDR(8),
      I1 => DMA_S2MM_BUFF_LEN(8),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(8),
      I4 => sel0(0),
      I5 => \^q\(8),
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
      I0 => DMA_S2MM_START_ADDR(9),
      I1 => DMA_S2MM_BUFF_LEN(9),
      I2 => sel0(1),
      I3 => \^slv_reg1_reg[29]_0\(9),
      I4 => sel0(0),
      I5 => \^q\(9),
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
axis_tlast_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => \^slv_reg2_reg[30]_1\(0),
      I2 => \S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0\(1),
      O => \slv_reg2_reg[0]_1\(0)
    );
\axis_tvalid0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      I1 => DMA_S2MM_BUFF_LEN(15),
      O => \slv_reg2_reg[14]_1\(3)
    );
\axis_tvalid0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      I1 => DMA_S2MM_BUFF_LEN(13),
      O => \slv_reg2_reg[14]_1\(2)
    );
\axis_tvalid0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      I1 => DMA_S2MM_BUFF_LEN(11),
      O => \slv_reg2_reg[14]_1\(1)
    );
\axis_tvalid0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      I1 => DMA_S2MM_BUFF_LEN(9),
      O => \slv_reg2_reg[14]_1\(0)
    );
\axis_tvalid0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      I1 => DMA_S2MM_BUFF_LEN(15),
      O => \slv_reg2_reg[14]_0\(3)
    );
\axis_tvalid0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      I1 => DMA_S2MM_BUFF_LEN(13),
      O => \slv_reg2_reg[14]_0\(2)
    );
\axis_tvalid0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      I1 => DMA_S2MM_BUFF_LEN(11),
      O => \slv_reg2_reg[14]_0\(1)
    );
\axis_tvalid0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      I1 => DMA_S2MM_BUFF_LEN(9),
      O => \slv_reg2_reg[14]_0\(0)
    );
\axis_tvalid0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      I1 => DMA_S2MM_BUFF_LEN(23),
      O => \slv_reg2_reg[22]_1\(3)
    );
\axis_tvalid0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      I1 => DMA_S2MM_BUFF_LEN(21),
      O => \slv_reg2_reg[22]_1\(2)
    );
\axis_tvalid0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      I1 => DMA_S2MM_BUFF_LEN(19),
      O => \slv_reg2_reg[22]_1\(1)
    );
\axis_tvalid0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      I1 => DMA_S2MM_BUFF_LEN(17),
      O => \slv_reg2_reg[22]_1\(0)
    );
\axis_tvalid0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      I1 => DMA_S2MM_BUFF_LEN(23),
      O => \slv_reg2_reg[22]_0\(3)
    );
\axis_tvalid0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      I1 => DMA_S2MM_BUFF_LEN(21),
      O => \slv_reg2_reg[22]_0\(2)
    );
\axis_tvalid0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      I1 => DMA_S2MM_BUFF_LEN(19),
      O => \slv_reg2_reg[22]_0\(1)
    );
\axis_tvalid0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      I1 => DMA_S2MM_BUFF_LEN(17),
      O => \slv_reg2_reg[22]_0\(0)
    );
\axis_tvalid0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      I1 => DMA_S2MM_BUFF_LEN(31),
      O => \slv_reg2_reg[30]_2\(3)
    );
\axis_tvalid0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      I1 => DMA_S2MM_BUFF_LEN(29),
      O => \slv_reg2_reg[30]_2\(2)
    );
\axis_tvalid0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      I1 => DMA_S2MM_BUFF_LEN(27),
      O => \slv_reg2_reg[30]_2\(1)
    );
\axis_tvalid0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      I1 => DMA_S2MM_BUFF_LEN(25),
      O => \slv_reg2_reg[30]_2\(0)
    );
\axis_tvalid0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      I1 => DMA_S2MM_BUFF_LEN(31),
      O => \slv_reg2_reg[30]_0\(3)
    );
\axis_tvalid0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      I1 => DMA_S2MM_BUFF_LEN(29),
      O => \slv_reg2_reg[30]_0\(2)
    );
\axis_tvalid0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      I1 => DMA_S2MM_BUFF_LEN(27),
      O => \slv_reg2_reg[30]_0\(1)
    );
\axis_tvalid0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      I1 => DMA_S2MM_BUFF_LEN(25),
      O => \slv_reg2_reg[30]_0\(0)
    );
axis_tvalid0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      I1 => DMA_S2MM_BUFF_LEN(7),
      O => DI(3)
    );
axis_tvalid0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      I1 => DMA_S2MM_BUFF_LEN(5),
      O => DI(2)
    );
axis_tvalid0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      I1 => DMA_S2MM_BUFF_LEN(3),
      O => DI(1)
    );
axis_tvalid0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => DMA_S2MM_BUFF_LEN(1),
      O => DI(0)
    );
axis_tvalid0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      I1 => DMA_S2MM_BUFF_LEN(7),
      O => S(3)
    );
axis_tvalid0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      I1 => DMA_S2MM_BUFF_LEN(5),
      O => S(2)
    );
axis_tvalid0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      I1 => DMA_S2MM_BUFF_LEN(3),
      O => S(1)
    );
axis_tvalid0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => DMA_S2MM_BUFF_LEN(1),
      O => S(0)
    );
\read_pointer1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(12),
      I1 => \^slv_reg2_reg[30]_1\(13),
      O => \slv_reg2_reg[16]_0\(3)
    );
\read_pointer1_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => read_pointer1_carry_i_9_n_0,
      CO(3) => \read_pointer1_carry__0_i_10_n_0\,
      CO(2) => \read_pointer1_carry__0_i_10_n_1\,
      CO(1) => \read_pointer1_carry__0_i_10_n_2\,
      CO(0) => \read_pointer1_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(12 downto 9),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(10 downto 7),
      S(3) => \read_pointer1_carry__0_i_15_n_0\,
      S(2) => \read_pointer1_carry__0_i_16_n_0\,
      S(1) => \read_pointer1_carry__0_i_17_n_0\,
      S(0) => \read_pointer1_carry__0_i_18_n_0\
    );
\read_pointer1_carry__0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(16),
      O => \read_pointer1_carry__0_i_11_n_0\
    );
\read_pointer1_carry__0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(15),
      O => \read_pointer1_carry__0_i_12_n_0\
    );
\read_pointer1_carry__0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(14),
      O => \read_pointer1_carry__0_i_13_n_0\
    );
\read_pointer1_carry__0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(13),
      O => \read_pointer1_carry__0_i_14_n_0\
    );
\read_pointer1_carry__0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(12),
      O => \read_pointer1_carry__0_i_15_n_0\
    );
\read_pointer1_carry__0_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(11),
      O => \read_pointer1_carry__0_i_16_n_0\
    );
\read_pointer1_carry__0_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(10),
      O => \read_pointer1_carry__0_i_17_n_0\
    );
\read_pointer1_carry__0_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(9),
      O => \read_pointer1_carry__0_i_18_n_0\
    );
\read_pointer1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(10),
      I1 => \^slv_reg2_reg[30]_1\(11),
      O => \slv_reg2_reg[16]_0\(2)
    );
\read_pointer1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(8),
      I1 => \^slv_reg2_reg[30]_1\(9),
      O => \slv_reg2_reg[16]_0\(1)
    );
\read_pointer1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(6),
      I1 => \^slv_reg2_reg[30]_1\(7),
      O => \slv_reg2_reg[16]_0\(0)
    );
\read_pointer1_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__0_i_10_n_0\,
      CO(3) => \read_pointer1_carry__0_i_9_n_0\,
      CO(2) => \read_pointer1_carry__0_i_9_n_1\,
      CO(1) => \read_pointer1_carry__0_i_9_n_2\,
      CO(0) => \read_pointer1_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(16 downto 13),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(14 downto 11),
      S(3) => \read_pointer1_carry__0_i_11_n_0\,
      S(2) => \read_pointer1_carry__0_i_12_n_0\,
      S(1) => \read_pointer1_carry__0_i_13_n_0\,
      S(0) => \read_pointer1_carry__0_i_14_n_0\
    );
\read_pointer1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(20),
      I1 => \^slv_reg2_reg[30]_1\(21),
      O => \slv_reg2_reg[24]_0\(3)
    );
\read_pointer1_carry__1_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__0_i_9_n_0\,
      CO(3) => \read_pointer1_carry__1_i_10_n_0\,
      CO(2) => \read_pointer1_carry__1_i_10_n_1\,
      CO(1) => \read_pointer1_carry__1_i_10_n_2\,
      CO(0) => \read_pointer1_carry__1_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(20 downto 17),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(18 downto 15),
      S(3) => \read_pointer1_carry__1_i_15_n_0\,
      S(2) => \read_pointer1_carry__1_i_16_n_0\,
      S(1) => \read_pointer1_carry__1_i_17_n_0\,
      S(0) => \read_pointer1_carry__1_i_18_n_0\
    );
\read_pointer1_carry__1_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(24),
      O => \read_pointer1_carry__1_i_11_n_0\
    );
\read_pointer1_carry__1_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(23),
      O => \read_pointer1_carry__1_i_12_n_0\
    );
\read_pointer1_carry__1_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(22),
      O => \read_pointer1_carry__1_i_13_n_0\
    );
\read_pointer1_carry__1_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(21),
      O => \read_pointer1_carry__1_i_14_n_0\
    );
\read_pointer1_carry__1_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(20),
      O => \read_pointer1_carry__1_i_15_n_0\
    );
\read_pointer1_carry__1_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(19),
      O => \read_pointer1_carry__1_i_16_n_0\
    );
\read_pointer1_carry__1_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(18),
      O => \read_pointer1_carry__1_i_17_n_0\
    );
\read_pointer1_carry__1_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(17),
      O => \read_pointer1_carry__1_i_18_n_0\
    );
\read_pointer1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(18),
      I1 => \^slv_reg2_reg[30]_1\(19),
      O => \slv_reg2_reg[24]_0\(2)
    );
\read_pointer1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(16),
      I1 => \^slv_reg2_reg[30]_1\(17),
      O => \slv_reg2_reg[24]_0\(1)
    );
\read_pointer1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(14),
      I1 => \^slv_reg2_reg[30]_1\(15),
      O => \slv_reg2_reg[24]_0\(0)
    );
\read_pointer1_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__1_i_10_n_0\,
      CO(3) => \read_pointer1_carry__1_i_9_n_0\,
      CO(2) => \read_pointer1_carry__1_i_9_n_1\,
      CO(1) => \read_pointer1_carry__1_i_9_n_2\,
      CO(0) => \read_pointer1_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(24 downto 21),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(22 downto 19),
      S(3) => \read_pointer1_carry__1_i_11_n_0\,
      S(2) => \read_pointer1_carry__1_i_12_n_0\,
      S(1) => \read_pointer1_carry__1_i_13_n_0\,
      S(0) => \read_pointer1_carry__1_i_14_n_0\
    );
\read_pointer1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(28),
      I1 => \^slv_reg2_reg[30]_1\(29),
      O => \slv_reg2_reg[30]_3\(3)
    );
\read_pointer1_carry__2_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__1_i_9_n_0\,
      CO(3) => \read_pointer1_carry__2_i_10_n_0\,
      CO(2) => \read_pointer1_carry__2_i_10_n_1\,
      CO(1) => \read_pointer1_carry__2_i_10_n_2\,
      CO(0) => \read_pointer1_carry__2_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(28 downto 25),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(26 downto 23),
      S(3) => \read_pointer1_carry__2_i_14_n_0\,
      S(2) => \read_pointer1_carry__2_i_15_n_0\,
      S(1) => \read_pointer1_carry__2_i_16_n_0\,
      S(0) => \read_pointer1_carry__2_i_17_n_0\
    );
\read_pointer1_carry__2_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(31),
      O => \read_pointer1_carry__2_i_11_n_0\
    );
\read_pointer1_carry__2_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(30),
      O => \read_pointer1_carry__2_i_12_n_0\
    );
\read_pointer1_carry__2_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(29),
      O => \read_pointer1_carry__2_i_13_n_0\
    );
\read_pointer1_carry__2_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(28),
      O => \read_pointer1_carry__2_i_14_n_0\
    );
\read_pointer1_carry__2_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(27),
      O => \read_pointer1_carry__2_i_15_n_0\
    );
\read_pointer1_carry__2_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(26),
      O => \read_pointer1_carry__2_i_16_n_0\
    );
\read_pointer1_carry__2_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(25),
      O => \read_pointer1_carry__2_i_17_n_0\
    );
\read_pointer1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(26),
      I1 => \^slv_reg2_reg[30]_1\(27),
      O => \slv_reg2_reg[30]_3\(2)
    );
\read_pointer1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(24),
      I1 => \^slv_reg2_reg[30]_1\(25),
      O => \slv_reg2_reg[30]_3\(1)
    );
\read_pointer1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(22),
      I1 => \^slv_reg2_reg[30]_1\(23),
      O => \slv_reg2_reg[30]_3\(0)
    );
\read_pointer1_carry__2_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \read_pointer1_carry__2_i_10_n_0\,
      CO(3 downto 2) => \NLW_read_pointer1_carry__2_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \read_pointer1_carry__2_i_9_n_2\,
      CO(0) => \read_pointer1_carry__2_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => DMA_S2MM_BUFF_LEN(30 downto 29),
      O(3) => \NLW_read_pointer1_carry__2_i_9_O_UNCONNECTED\(3),
      O(2 downto 0) => \^slv_reg2_reg[30]_1\(29 downto 27),
      S(3) => '0',
      S(2) => \read_pointer1_carry__2_i_11_n_0\,
      S(1) => \read_pointer1_carry__2_i_12_n_0\,
      S(0) => \read_pointer1_carry__2_i_13_n_0\
    );
read_pointer1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(4),
      I1 => \^slv_reg2_reg[30]_1\(5),
      O => \slv_reg2_reg[8]_0\(3)
    );
read_pointer1_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => read_pointer1_carry_i_10_n_0,
      CO(2) => read_pointer1_carry_i_10_n_1,
      CO(1) => read_pointer1_carry_i_10_n_2,
      CO(0) => read_pointer1_carry_i_10_n_3,
      CYINIT => DMA_S2MM_BUFF_LEN(0),
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(4 downto 1),
      O(3 downto 1) => \^slv_reg2_reg[30]_1\(2 downto 0),
      O(0) => \S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0\(1),
      S(3) => read_pointer1_carry_i_15_n_0,
      S(2) => read_pointer1_carry_i_16_n_0,
      S(1) => read_pointer1_carry_i_17_n_0,
      S(0) => read_pointer1_carry_i_18_n_0
    );
read_pointer1_carry_i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(8),
      O => read_pointer1_carry_i_11_n_0
    );
read_pointer1_carry_i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(7),
      O => read_pointer1_carry_i_12_n_0
    );
read_pointer1_carry_i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(6),
      O => read_pointer1_carry_i_13_n_0
    );
read_pointer1_carry_i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(5),
      O => read_pointer1_carry_i_14_n_0
    );
read_pointer1_carry_i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(4),
      O => read_pointer1_carry_i_15_n_0
    );
read_pointer1_carry_i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(3),
      O => read_pointer1_carry_i_16_n_0
    );
read_pointer1_carry_i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(2),
      O => read_pointer1_carry_i_17_n_0
    );
read_pointer1_carry_i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(1),
      O => read_pointer1_carry_i_18_n_0
    );
read_pointer1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(2),
      I1 => \^slv_reg2_reg[30]_1\(3),
      O => \slv_reg2_reg[8]_0\(2)
    );
read_pointer1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^slv_reg2_reg[30]_1\(0),
      I1 => \^slv_reg2_reg[30]_1\(1),
      O => \slv_reg2_reg[8]_0\(1)
    );
read_pointer1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => \S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0\(1),
      O => \slv_reg2_reg[8]_0\(0)
    );
read_pointer1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DMA_S2MM_BUFF_LEN(0),
      I1 => \S2MMV2_v1_0_M00_AXIS_inst/axis_tlast0\(1),
      O => \slv_reg2_reg[0]_0\(0)
    );
read_pointer1_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => read_pointer1_carry_i_10_n_0,
      CO(3) => read_pointer1_carry_i_9_n_0,
      CO(2) => read_pointer1_carry_i_9_n_1,
      CO(1) => read_pointer1_carry_i_9_n_2,
      CO(0) => read_pointer1_carry_i_9_n_3,
      CYINIT => '0',
      DI(3 downto 0) => DMA_S2MM_BUFF_LEN(8 downto 5),
      O(3 downto 0) => \^slv_reg2_reg[30]_1\(6 downto 3),
      S(3) => read_pointer1_carry_i_11_n_0,
      S(2) => read_pointer1_carry_i_12_n_0,
      S(1) => read_pointer1_carry_i_13_n_0,
      S(0) => read_pointer1_carry_i_14_n_0
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
      O => p_1_in(15)
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
      O => p_1_in(23)
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
      O => p_1_in(31)
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
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \^q\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^q\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^q\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^q\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^q\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^q\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^q\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^q\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \^q\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \^q\(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => DMA_MM2S_BUFF_LEN(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
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
      Q => \^slv_reg1_reg[29]_0\(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \^slv_reg1_reg[29]_0\(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \^slv_reg1_reg[29]_0\(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \^slv_reg1_reg[29]_0\(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \^slv_reg1_reg[29]_0\(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \^slv_reg1_reg[29]_0\(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \^slv_reg1_reg[29]_0\(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \^slv_reg1_reg[29]_0\(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \^slv_reg1_reg[29]_0\(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \^slv_reg1_reg[29]_0\(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \^slv_reg1_reg[29]_0\(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \^slv_reg1_reg[29]_0\(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \^slv_reg1_reg[29]_0\(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \^slv_reg1_reg[29]_0\(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \^slv_reg1_reg[29]_0\(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \^slv_reg1_reg[29]_0\(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \^slv_reg1_reg[29]_0\(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \^slv_reg1_reg[29]_0\(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \^slv_reg1_reg[29]_0\(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \^slv_reg1_reg[29]_0\(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \^slv_reg1_reg[29]_0\(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \^slv_reg1_reg[29]_0\(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \^slv_reg1_reg[29]_0\(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => DMA_MM2S_START_ADDR(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => DMA_MM2S_START_ADDR(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \^slv_reg1_reg[29]_0\(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \^slv_reg1_reg[29]_0\(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \^slv_reg1_reg[29]_0\(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \^slv_reg1_reg[29]_0\(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \^slv_reg1_reg[29]_0\(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \^slv_reg1_reg[29]_0\(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \^slv_reg1_reg[29]_0\(9),
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
      Q => DMA_S2MM_BUFF_LEN(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => DMA_S2MM_BUFF_LEN(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => DMA_S2MM_BUFF_LEN(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => DMA_S2MM_BUFF_LEN(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => DMA_S2MM_BUFF_LEN(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => DMA_S2MM_BUFF_LEN(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => DMA_S2MM_BUFF_LEN(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => DMA_S2MM_BUFF_LEN(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => DMA_S2MM_BUFF_LEN(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => DMA_S2MM_BUFF_LEN(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => DMA_S2MM_BUFF_LEN(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => DMA_S2MM_BUFF_LEN(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => DMA_S2MM_BUFF_LEN(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => DMA_S2MM_BUFF_LEN(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => DMA_S2MM_BUFF_LEN(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => DMA_S2MM_BUFF_LEN(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => DMA_S2MM_BUFF_LEN(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => DMA_S2MM_BUFF_LEN(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => DMA_S2MM_BUFF_LEN(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => DMA_S2MM_BUFF_LEN(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => DMA_S2MM_BUFF_LEN(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => DMA_S2MM_BUFF_LEN(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => DMA_S2MM_BUFF_LEN(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => DMA_S2MM_BUFF_LEN(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => DMA_S2MM_BUFF_LEN(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => DMA_S2MM_BUFF_LEN(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => DMA_S2MM_BUFF_LEN(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => DMA_S2MM_BUFF_LEN(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => DMA_S2MM_BUFF_LEN(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => DMA_S2MM_BUFF_LEN(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => DMA_S2MM_BUFF_LEN(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => DMA_S2MM_BUFF_LEN(9),
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
      Q => DMA_S2MM_START_ADDR(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => DMA_S2MM_START_ADDR(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => DMA_S2MM_START_ADDR(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => DMA_S2MM_START_ADDR(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => DMA_S2MM_START_ADDR(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => DMA_S2MM_START_ADDR(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => DMA_S2MM_START_ADDR(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => DMA_S2MM_START_ADDR(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => DMA_S2MM_START_ADDR(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => DMA_S2MM_START_ADDR(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => DMA_S2MM_START_ADDR(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => DMA_S2MM_START_ADDR(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => DMA_S2MM_START_ADDR(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => DMA_S2MM_START_ADDR(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => DMA_S2MM_START_ADDR(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => DMA_S2MM_START_ADDR(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => DMA_S2MM_START_ADDR(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => DMA_S2MM_START_ADDR(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => DMA_S2MM_START_ADDR(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => DMA_S2MM_START_ADDR(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => DMA_S2MM_START_ADDR(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => DMA_S2MM_START_ADDR(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => DMA_S2MM_START_ADDR(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => DMA_S2MM_START_ADDR(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => DMA_S2MM_START_ADDR(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => DMA_S2MM_START_ADDR(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => DMA_S2MM_START_ADDR(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => DMA_S2MM_START_ADDR(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => DMA_S2MM_START_ADDR(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => DMA_S2MM_START_ADDR(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => DMA_S2MM_START_ADDR(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => DMA_S2MM_START_ADDR(9),
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
\write_pointer2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(8),
      O => \slv_reg0_reg[8]_0\(3)
    );
\write_pointer2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(7),
      O => \slv_reg0_reg[8]_0\(2)
    );
\write_pointer2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(6),
      O => \slv_reg0_reg[8]_0\(1)
    );
\write_pointer2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(5),
      O => \slv_reg0_reg[8]_0\(0)
    );
\write_pointer2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(12),
      O => \slv_reg0_reg[12]_0\(3)
    );
\write_pointer2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(11),
      O => \slv_reg0_reg[12]_0\(2)
    );
\write_pointer2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(10),
      O => \slv_reg0_reg[12]_0\(1)
    );
\write_pointer2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(9),
      O => \slv_reg0_reg[12]_0\(0)
    );
\write_pointer2_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(16),
      O => \slv_reg0_reg[16]_0\(3)
    );
\write_pointer2_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(15),
      O => \slv_reg0_reg[16]_0\(2)
    );
\write_pointer2_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(14),
      O => \slv_reg0_reg[16]_0\(1)
    );
\write_pointer2_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(13),
      O => \slv_reg0_reg[16]_0\(0)
    );
\write_pointer2_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(20),
      O => \slv_reg0_reg[20]_0\(3)
    );
\write_pointer2_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(19),
      O => \slv_reg0_reg[20]_0\(2)
    );
\write_pointer2_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(18),
      O => \slv_reg0_reg[20]_0\(1)
    );
\write_pointer2_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(17),
      O => \slv_reg0_reg[20]_0\(0)
    );
\write_pointer2_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(24),
      O => \slv_reg0_reg[24]_0\(3)
    );
\write_pointer2_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(23),
      O => \slv_reg0_reg[24]_0\(2)
    );
\write_pointer2_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(22),
      O => \slv_reg0_reg[24]_0\(1)
    );
\write_pointer2_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(21),
      O => \slv_reg0_reg[24]_0\(0)
    );
\write_pointer2_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(28),
      O => \slv_reg0_reg[28]_0\(3)
    );
\write_pointer2_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(27),
      O => \slv_reg0_reg[28]_0\(2)
    );
\write_pointer2_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(26),
      O => \slv_reg0_reg[28]_0\(1)
    );
\write_pointer2_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(25),
      O => \slv_reg0_reg[28]_0\(0)
    );
\write_pointer2_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DMA_MM2S_BUFF_LEN(31),
      O => \slv_reg0_reg[31]_0\(2)
    );
\write_pointer2_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(30),
      O => \slv_reg0_reg[31]_0\(1)
    );
\write_pointer2_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(29),
      O => \slv_reg0_reg[31]_0\(0)
    );
write_pointer2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(4),
      O => \slv_reg0_reg[4]_0\(3)
    );
write_pointer2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(3),
      O => \slv_reg0_reg[4]_0\(2)
    );
write_pointer2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => \slv_reg0_reg[4]_0\(1)
    );
write_pointer2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(1),
      O => \slv_reg0_reg[4]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS is
  port (
    we_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    en : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \addr_to_bram_reg[29]_0\ : out STD_LOGIC_VECTOR ( 29 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    write_pointer1_carry_i_6_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__0_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__0_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__1_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__2_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \write_pointer1_carry__2_i_6_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    \addr_to_bram_reg[29]_1\ : in STD_LOGIC_VECTOR ( 29 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS is
  signal \addr_to_bram0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__0_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__1_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__2_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__3_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__4_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_n_1\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_n_2\ : STD_LOGIC;
  signal \addr_to_bram0_carry__5_n_3\ : STD_LOGIC;
  signal \addr_to_bram0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \addr_to_bram0_carry__6_n_3\ : STD_LOGIC;
  signal addr_to_bram0_carry_i_1_n_0 : STD_LOGIC;
  signal addr_to_bram0_carry_i_2_n_0 : STD_LOGIC;
  signal addr_to_bram0_carry_i_3_n_0 : STD_LOGIC;
  signal addr_to_bram0_carry_i_4_n_0 : STD_LOGIC;
  signal addr_to_bram0_carry_n_0 : STD_LOGIC;
  signal addr_to_bram0_carry_n_1 : STD_LOGIC;
  signal addr_to_bram0_carry_n_2 : STD_LOGIC;
  signal addr_to_bram0_carry_n_3 : STD_LOGIC;
  signal \data_to_bram[31]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \we1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \we1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \we1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \we1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \we1_carry__0_n_0\ : STD_LOGIC;
  signal \we1_carry__0_n_1\ : STD_LOGIC;
  signal \we1_carry__0_n_2\ : STD_LOGIC;
  signal \we1_carry__0_n_3\ : STD_LOGIC;
  signal \we1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \we1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \we1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \we1_carry__1_n_1\ : STD_LOGIC;
  signal \we1_carry__1_n_2\ : STD_LOGIC;
  signal \we1_carry__1_n_3\ : STD_LOGIC;
  signal we1_carry_i_1_n_0 : STD_LOGIC;
  signal we1_carry_i_2_n_0 : STD_LOGIC;
  signal we1_carry_i_3_n_0 : STD_LOGIC;
  signal we1_carry_i_4_n_0 : STD_LOGIC;
  signal we1_carry_n_0 : STD_LOGIC;
  signal we1_carry_n_1 : STD_LOGIC;
  signal we1_carry_n_2 : STD_LOGIC;
  signal we1_carry_n_3 : STD_LOGIC;
  signal \we[3]_i_1_n_0\ : STD_LOGIC;
  signal \^we_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \write_pointer1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__0_n_1\ : STD_LOGIC;
  signal \write_pointer1_carry__0_n_2\ : STD_LOGIC;
  signal \write_pointer1_carry__0_n_3\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__1_n_1\ : STD_LOGIC;
  signal \write_pointer1_carry__1_n_2\ : STD_LOGIC;
  signal \write_pointer1_carry__1_n_3\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_n_0\ : STD_LOGIC;
  signal \write_pointer1_carry__2_n_1\ : STD_LOGIC;
  signal \write_pointer1_carry__2_n_2\ : STD_LOGIC;
  signal \write_pointer1_carry__2_n_3\ : STD_LOGIC;
  signal write_pointer1_carry_i_1_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_2_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_3_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_4_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_5_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_6_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_7_n_0 : STD_LOGIC;
  signal write_pointer1_carry_i_8_n_0 : STD_LOGIC;
  signal write_pointer1_carry_n_0 : STD_LOGIC;
  signal write_pointer1_carry_n_1 : STD_LOGIC;
  signal write_pointer1_carry_n_2 : STD_LOGIC;
  signal write_pointer1_carry_n_3 : STD_LOGIC;
  signal write_pointer2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \write_pointer2_carry__0_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__0_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__0_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__0_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__1_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__1_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__1_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__1_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__2_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__2_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__2_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__2_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__3_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__3_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__3_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__3_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__4_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__4_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__4_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__4_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__5_n_0\ : STD_LOGIC;
  signal \write_pointer2_carry__5_n_1\ : STD_LOGIC;
  signal \write_pointer2_carry__5_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__5_n_3\ : STD_LOGIC;
  signal \write_pointer2_carry__6_n_2\ : STD_LOGIC;
  signal \write_pointer2_carry__6_n_3\ : STD_LOGIC;
  signal write_pointer2_carry_n_0 : STD_LOGIC;
  signal write_pointer2_carry_n_1 : STD_LOGIC;
  signal write_pointer2_carry_n_2 : STD_LOGIC;
  signal write_pointer2_carry_n_3 : STD_LOGIC;
  signal \write_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[0]_i_3_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \write_pointer_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \write_pointer_reg[28]_i_1_n_7\ : STD_LOGIC;
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
  signal \NLW_addr_to_bram0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_addr_to_bram0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_we1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_we1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_we1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_we1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_write_pointer1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_pointer1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_pointer1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_pointer1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_write_pointer2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_write_pointer2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_write_pointer_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  we_1(0) <= \^we_1\(0);
addr_to_bram0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addr_to_bram0_carry_n_0,
      CO(2) => addr_to_bram0_carry_n_1,
      CO(1) => addr_to_bram0_carry_n_2,
      CO(0) => addr_to_bram0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(3 downto 0),
      O(3 downto 0) => p_1_in(3 downto 0),
      S(3) => addr_to_bram0_carry_i_1_n_0,
      S(2) => addr_to_bram0_carry_i_2_n_0,
      S(1) => addr_to_bram0_carry_i_3_n_0,
      S(0) => addr_to_bram0_carry_i_4_n_0
    );
\addr_to_bram0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addr_to_bram0_carry_n_0,
      CO(3) => \addr_to_bram0_carry__0_n_0\,
      CO(2) => \addr_to_bram0_carry__0_n_1\,
      CO(1) => \addr_to_bram0_carry__0_n_2\,
      CO(0) => \addr_to_bram0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(7 downto 4),
      O(3 downto 0) => p_1_in(7 downto 4),
      S(3) => \addr_to_bram0_carry__0_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__0_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__0_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__0_i_4_n_0\
    );
\addr_to_bram0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => \addr_to_bram_reg[29]_1\(7),
      O => \addr_to_bram0_carry__0_i_1_n_0\
    );
\addr_to_bram0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \addr_to_bram_reg[29]_1\(6),
      O => \addr_to_bram0_carry__0_i_2_n_0\
    );
\addr_to_bram0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(5),
      I1 => \addr_to_bram_reg[29]_1\(5),
      O => \addr_to_bram0_carry__0_i_3_n_0\
    );
\addr_to_bram0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => \addr_to_bram_reg[29]_1\(4),
      O => \addr_to_bram0_carry__0_i_4_n_0\
    );
\addr_to_bram0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__0_n_0\,
      CO(3) => \addr_to_bram0_carry__1_n_0\,
      CO(2) => \addr_to_bram0_carry__1_n_1\,
      CO(1) => \addr_to_bram0_carry__1_n_2\,
      CO(0) => \addr_to_bram0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(11 downto 8),
      O(3 downto 0) => p_1_in(11 downto 8),
      S(3) => \addr_to_bram0_carry__1_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__1_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__1_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__1_i_4_n_0\
    );
\addr_to_bram0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(11),
      I1 => \addr_to_bram_reg[29]_1\(11),
      O => \addr_to_bram0_carry__1_i_1_n_0\
    );
\addr_to_bram0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(10),
      I1 => \addr_to_bram_reg[29]_1\(10),
      O => \addr_to_bram0_carry__1_i_2_n_0\
    );
\addr_to_bram0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => \addr_to_bram_reg[29]_1\(9),
      O => \addr_to_bram0_carry__1_i_3_n_0\
    );
\addr_to_bram0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => \addr_to_bram_reg[29]_1\(8),
      O => \addr_to_bram0_carry__1_i_4_n_0\
    );
\addr_to_bram0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__1_n_0\,
      CO(3) => \addr_to_bram0_carry__2_n_0\,
      CO(2) => \addr_to_bram0_carry__2_n_1\,
      CO(1) => \addr_to_bram0_carry__2_n_2\,
      CO(0) => \addr_to_bram0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(15 downto 12),
      O(3 downto 0) => p_1_in(15 downto 12),
      S(3) => \addr_to_bram0_carry__2_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__2_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__2_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__2_i_4_n_0\
    );
\addr_to_bram0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(15),
      I1 => \addr_to_bram_reg[29]_1\(15),
      O => \addr_to_bram0_carry__2_i_1_n_0\
    );
\addr_to_bram0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(14),
      I1 => \addr_to_bram_reg[29]_1\(14),
      O => \addr_to_bram0_carry__2_i_2_n_0\
    );
\addr_to_bram0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(13),
      I1 => \addr_to_bram_reg[29]_1\(13),
      O => \addr_to_bram0_carry__2_i_3_n_0\
    );
\addr_to_bram0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(12),
      I1 => \addr_to_bram_reg[29]_1\(12),
      O => \addr_to_bram0_carry__2_i_4_n_0\
    );
\addr_to_bram0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__2_n_0\,
      CO(3) => \addr_to_bram0_carry__3_n_0\,
      CO(2) => \addr_to_bram0_carry__3_n_1\,
      CO(1) => \addr_to_bram0_carry__3_n_2\,
      CO(0) => \addr_to_bram0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(19 downto 16),
      O(3 downto 0) => p_1_in(19 downto 16),
      S(3) => \addr_to_bram0_carry__3_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__3_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__3_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__3_i_4_n_0\
    );
\addr_to_bram0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(19),
      I1 => \addr_to_bram_reg[29]_1\(19),
      O => \addr_to_bram0_carry__3_i_1_n_0\
    );
\addr_to_bram0_carry__3_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(18),
      I1 => \addr_to_bram_reg[29]_1\(18),
      O => \addr_to_bram0_carry__3_i_2_n_0\
    );
\addr_to_bram0_carry__3_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(17),
      I1 => \addr_to_bram_reg[29]_1\(17),
      O => \addr_to_bram0_carry__3_i_3_n_0\
    );
\addr_to_bram0_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(16),
      I1 => \addr_to_bram_reg[29]_1\(16),
      O => \addr_to_bram0_carry__3_i_4_n_0\
    );
\addr_to_bram0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__3_n_0\,
      CO(3) => \addr_to_bram0_carry__4_n_0\,
      CO(2) => \addr_to_bram0_carry__4_n_1\,
      CO(1) => \addr_to_bram0_carry__4_n_2\,
      CO(0) => \addr_to_bram0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(23 downto 20),
      O(3 downto 0) => p_1_in(23 downto 20),
      S(3) => \addr_to_bram0_carry__4_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__4_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__4_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__4_i_4_n_0\
    );
\addr_to_bram0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(23),
      I1 => \addr_to_bram_reg[29]_1\(23),
      O => \addr_to_bram0_carry__4_i_1_n_0\
    );
\addr_to_bram0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(22),
      I1 => \addr_to_bram_reg[29]_1\(22),
      O => \addr_to_bram0_carry__4_i_2_n_0\
    );
\addr_to_bram0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(21),
      I1 => \addr_to_bram_reg[29]_1\(21),
      O => \addr_to_bram0_carry__4_i_3_n_0\
    );
\addr_to_bram0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(20),
      I1 => \addr_to_bram_reg[29]_1\(20),
      O => \addr_to_bram0_carry__4_i_4_n_0\
    );
\addr_to_bram0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__4_n_0\,
      CO(3) => \addr_to_bram0_carry__5_n_0\,
      CO(2) => \addr_to_bram0_carry__5_n_1\,
      CO(1) => \addr_to_bram0_carry__5_n_2\,
      CO(0) => \addr_to_bram0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => write_pointer_reg(27 downto 24),
      O(3 downto 0) => p_1_in(27 downto 24),
      S(3) => \addr_to_bram0_carry__5_i_1_n_0\,
      S(2) => \addr_to_bram0_carry__5_i_2_n_0\,
      S(1) => \addr_to_bram0_carry__5_i_3_n_0\,
      S(0) => \addr_to_bram0_carry__5_i_4_n_0\
    );
\addr_to_bram0_carry__5_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(27),
      I1 => \addr_to_bram_reg[29]_1\(27),
      O => \addr_to_bram0_carry__5_i_1_n_0\
    );
\addr_to_bram0_carry__5_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(26),
      I1 => \addr_to_bram_reg[29]_1\(26),
      O => \addr_to_bram0_carry__5_i_2_n_0\
    );
\addr_to_bram0_carry__5_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(25),
      I1 => \addr_to_bram_reg[29]_1\(25),
      O => \addr_to_bram0_carry__5_i_3_n_0\
    );
\addr_to_bram0_carry__5_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(24),
      I1 => \addr_to_bram_reg[29]_1\(24),
      O => \addr_to_bram0_carry__5_i_4_n_0\
    );
\addr_to_bram0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_to_bram0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_addr_to_bram0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \addr_to_bram0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => write_pointer_reg(28),
      O(3 downto 2) => \NLW_addr_to_bram0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => p_1_in(29 downto 28),
      S(3 downto 2) => B"00",
      S(1) => \addr_to_bram0_carry__6_i_1_n_0\,
      S(0) => \addr_to_bram0_carry__6_i_2_n_0\
    );
\addr_to_bram0_carry__6_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(29),
      I1 => \addr_to_bram_reg[29]_1\(29),
      O => \addr_to_bram0_carry__6_i_1_n_0\
    );
\addr_to_bram0_carry__6_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(28),
      I1 => \addr_to_bram_reg[29]_1\(28),
      O => \addr_to_bram0_carry__6_i_2_n_0\
    );
addr_to_bram0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => \addr_to_bram_reg[29]_1\(3),
      O => addr_to_bram0_carry_i_1_n_0
    );
addr_to_bram0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => \addr_to_bram_reg[29]_1\(2),
      O => addr_to_bram0_carry_i_2_n_0
    );
addr_to_bram0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => \addr_to_bram_reg[29]_1\(1),
      O => addr_to_bram0_carry_i_3_n_0
    );
addr_to_bram0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => \addr_to_bram_reg[29]_1\(0),
      O => addr_to_bram0_carry_i_4_n_0
    );
\addr_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(0),
      Q => \addr_to_bram_reg[29]_0\(0),
      R => p_0_in
    );
\addr_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(10),
      Q => \addr_to_bram_reg[29]_0\(10),
      R => p_0_in
    );
\addr_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(11),
      Q => \addr_to_bram_reg[29]_0\(11),
      R => p_0_in
    );
\addr_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(12),
      Q => \addr_to_bram_reg[29]_0\(12),
      R => p_0_in
    );
\addr_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(13),
      Q => \addr_to_bram_reg[29]_0\(13),
      R => p_0_in
    );
\addr_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(14),
      Q => \addr_to_bram_reg[29]_0\(14),
      R => p_0_in
    );
\addr_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(15),
      Q => \addr_to_bram_reg[29]_0\(15),
      R => p_0_in
    );
\addr_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(16),
      Q => \addr_to_bram_reg[29]_0\(16),
      R => p_0_in
    );
\addr_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(17),
      Q => \addr_to_bram_reg[29]_0\(17),
      R => p_0_in
    );
\addr_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(18),
      Q => \addr_to_bram_reg[29]_0\(18),
      R => p_0_in
    );
\addr_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(19),
      Q => \addr_to_bram_reg[29]_0\(19),
      R => p_0_in
    );
\addr_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(1),
      Q => \addr_to_bram_reg[29]_0\(1),
      R => p_0_in
    );
\addr_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(20),
      Q => \addr_to_bram_reg[29]_0\(20),
      R => p_0_in
    );
\addr_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(21),
      Q => \addr_to_bram_reg[29]_0\(21),
      R => p_0_in
    );
\addr_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(22),
      Q => \addr_to_bram_reg[29]_0\(22),
      R => p_0_in
    );
\addr_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(23),
      Q => \addr_to_bram_reg[29]_0\(23),
      R => p_0_in
    );
\addr_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(24),
      Q => \addr_to_bram_reg[29]_0\(24),
      R => p_0_in
    );
\addr_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(25),
      Q => \addr_to_bram_reg[29]_0\(25),
      R => p_0_in
    );
\addr_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(26),
      Q => \addr_to_bram_reg[29]_0\(26),
      R => p_0_in
    );
\addr_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(27),
      Q => \addr_to_bram_reg[29]_0\(27),
      R => p_0_in
    );
\addr_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(28),
      Q => \addr_to_bram_reg[29]_0\(28),
      R => p_0_in
    );
\addr_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(29),
      Q => \addr_to_bram_reg[29]_0\(29),
      R => p_0_in
    );
\addr_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(2),
      Q => \addr_to_bram_reg[29]_0\(2),
      R => p_0_in
    );
\addr_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(3),
      Q => \addr_to_bram_reg[29]_0\(3),
      R => p_0_in
    );
\addr_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(4),
      Q => \addr_to_bram_reg[29]_0\(4),
      R => p_0_in
    );
\addr_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(5),
      Q => \addr_to_bram_reg[29]_0\(5),
      R => p_0_in
    );
\addr_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(6),
      Q => \addr_to_bram_reg[29]_0\(6),
      R => p_0_in
    );
\addr_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(7),
      Q => \addr_to_bram_reg[29]_0\(7),
      R => p_0_in
    );
\addr_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(8),
      Q => \addr_to_bram_reg[29]_0\(8),
      R => p_0_in
    );
\addr_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => p_1_in(9),
      Q => \addr_to_bram_reg[29]_0\(9),
      R => p_0_in
    );
\data_to_bram[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => p_0_in
    );
\data_to_bram[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \write_pointer1_carry__2_n_0\,
      I1 => s00_axis_tvalid,
      O => \data_to_bram[31]_i_2_n_0\
    );
\data_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(0),
      Q => dout(0),
      R => p_0_in
    );
\data_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(10),
      Q => dout(10),
      R => p_0_in
    );
\data_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(11),
      Q => dout(11),
      R => p_0_in
    );
\data_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(12),
      Q => dout(12),
      R => p_0_in
    );
\data_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(13),
      Q => dout(13),
      R => p_0_in
    );
\data_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(14),
      Q => dout(14),
      R => p_0_in
    );
\data_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(15),
      Q => dout(15),
      R => p_0_in
    );
\data_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(16),
      Q => dout(16),
      R => p_0_in
    );
\data_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(17),
      Q => dout(17),
      R => p_0_in
    );
\data_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(18),
      Q => dout(18),
      R => p_0_in
    );
\data_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(19),
      Q => dout(19),
      R => p_0_in
    );
\data_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(1),
      Q => dout(1),
      R => p_0_in
    );
\data_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(20),
      Q => dout(20),
      R => p_0_in
    );
\data_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(21),
      Q => dout(21),
      R => p_0_in
    );
\data_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(22),
      Q => dout(22),
      R => p_0_in
    );
\data_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(23),
      Q => dout(23),
      R => p_0_in
    );
\data_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(24),
      Q => dout(24),
      R => p_0_in
    );
\data_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(25),
      Q => dout(25),
      R => p_0_in
    );
\data_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(26),
      Q => dout(26),
      R => p_0_in
    );
\data_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(27),
      Q => dout(27),
      R => p_0_in
    );
\data_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(28),
      Q => dout(28),
      R => p_0_in
    );
\data_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(29),
      Q => dout(29),
      R => p_0_in
    );
\data_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(2),
      Q => dout(2),
      R => p_0_in
    );
\data_to_bram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(30),
      Q => dout(30),
      R => p_0_in
    );
\data_to_bram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(31),
      Q => dout(31),
      R => p_0_in
    );
\data_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(3),
      Q => dout(3),
      R => p_0_in
    );
\data_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(4),
      Q => dout(4),
      R => p_0_in
    );
\data_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(5),
      Q => dout(5),
      R => p_0_in
    );
\data_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(6),
      Q => dout(6),
      R => p_0_in
    );
\data_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(7),
      Q => dout(7),
      R => p_0_in
    );
\data_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(8),
      Q => dout(8),
      R => p_0_in
    );
\data_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \data_to_bram[31]_i_2_n_0\,
      D => s00_axis_tdata(9),
      Q => dout(9),
      R => p_0_in
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
we1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => we1_carry_n_0,
      CO(2) => we1_carry_n_1,
      CO(1) => we1_carry_n_2,
      CO(0) => we1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_we1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => we1_carry_i_1_n_0,
      S(2) => we1_carry_i_2_n_0,
      S(1) => we1_carry_i_3_n_0,
      S(0) => we1_carry_i_4_n_0
    );
\we1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => we1_carry_n_0,
      CO(3) => \we1_carry__0_n_0\,
      CO(2) => \we1_carry__0_n_1\,
      CO(1) => \we1_carry__0_n_2\,
      CO(0) => \we1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_we1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \we1_carry__0_i_1_n_0\,
      S(2) => \we1_carry__0_i_2_n_0\,
      S(1) => \we1_carry__0_i_3_n_0\,
      S(0) => \we1_carry__0_i_4_n_0\
    );
\we1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(21),
      I1 => write_pointer2(21),
      I2 => write_pointer2(23),
      I3 => write_pointer_reg(23),
      I4 => write_pointer2(22),
      I5 => write_pointer_reg(22),
      O => \we1_carry__0_i_1_n_0\
    );
\we1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(18),
      I1 => write_pointer2(18),
      I2 => write_pointer2(20),
      I3 => write_pointer_reg(20),
      I4 => write_pointer2(19),
      I5 => write_pointer_reg(19),
      O => \we1_carry__0_i_2_n_0\
    );
\we1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(15),
      I1 => write_pointer2(15),
      I2 => write_pointer2(17),
      I3 => write_pointer_reg(17),
      I4 => write_pointer2(16),
      I5 => write_pointer_reg(16),
      O => \we1_carry__0_i_3_n_0\
    );
\we1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(12),
      I1 => write_pointer2(12),
      I2 => write_pointer2(14),
      I3 => write_pointer_reg(14),
      I4 => write_pointer2(13),
      I5 => write_pointer_reg(13),
      O => \we1_carry__0_i_4_n_0\
    );
\we1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \we1_carry__0_n_0\,
      CO(3) => \NLW_we1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \we1_carry__1_n_1\,
      CO(1) => \we1_carry__1_n_2\,
      CO(0) => \we1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_we1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \we1_carry__1_i_1_n_0\,
      S(1) => \we1_carry__1_i_2_n_0\,
      S(0) => \we1_carry__1_i_3_n_0\
    );
\we1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer_reg(30),
      I1 => write_pointer2(30),
      I2 => write_pointer_reg(31),
      I3 => write_pointer2(31),
      O => \we1_carry__1_i_1_n_0\
    );
\we1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(27),
      I1 => write_pointer2(27),
      I2 => write_pointer2(29),
      I3 => write_pointer_reg(29),
      I4 => write_pointer2(28),
      I5 => write_pointer_reg(28),
      O => \we1_carry__1_i_2_n_0\
    );
\we1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(24),
      I1 => write_pointer2(24),
      I2 => write_pointer2(26),
      I3 => write_pointer_reg(26),
      I4 => write_pointer2(25),
      I5 => write_pointer_reg(25),
      O => \we1_carry__1_i_3_n_0\
    );
we1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(9),
      I1 => write_pointer2(9),
      I2 => write_pointer2(11),
      I3 => write_pointer_reg(11),
      I4 => write_pointer2(10),
      I5 => write_pointer_reg(10),
      O => we1_carry_i_1_n_0
    );
we1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => write_pointer2(6),
      I2 => write_pointer2(8),
      I3 => write_pointer_reg(8),
      I4 => write_pointer2(7),
      I5 => write_pointer_reg(7),
      O => we1_carry_i_2_n_0
    );
we1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => write_pointer2(3),
      I2 => write_pointer2(5),
      I3 => write_pointer_reg(5),
      I4 => write_pointer2(4),
      I5 => write_pointer_reg(4),
      O => we1_carry_i_3_n_0
    );
we1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6006000000006006"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => Q(0),
      I2 => write_pointer2(2),
      I3 => write_pointer_reg(2),
      I4 => write_pointer2(1),
      I5 => write_pointer_reg(1),
      O => we1_carry_i_4_n_0
    );
\we[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFC808"
    )
        port map (
      I0 => \^we_1\(0),
      I1 => s00_axis_aresetn,
      I2 => \write_pointer1_carry__2_n_0\,
      I3 => s00_axis_tvalid,
      I4 => s00_axis_tlast,
      I5 => \we1_carry__1_n_1\,
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
write_pointer1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_pointer1_carry_n_0,
      CO(2) => write_pointer1_carry_n_1,
      CO(1) => write_pointer1_carry_n_2,
      CO(0) => write_pointer1_carry_n_3,
      CYINIT => '1',
      DI(3) => write_pointer1_carry_i_1_n_0,
      DI(2) => write_pointer1_carry_i_2_n_0,
      DI(1) => write_pointer1_carry_i_3_n_0,
      DI(0) => write_pointer1_carry_i_4_n_0,
      O(3 downto 0) => NLW_write_pointer1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => write_pointer1_carry_i_5_n_0,
      S(2) => write_pointer1_carry_i_6_n_0,
      S(1) => write_pointer1_carry_i_7_n_0,
      S(0) => write_pointer1_carry_i_8_n_0
    );
\write_pointer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_pointer1_carry_n_0,
      CO(3) => \write_pointer1_carry__0_n_0\,
      CO(2) => \write_pointer1_carry__0_n_1\,
      CO(1) => \write_pointer1_carry__0_n_2\,
      CO(0) => \write_pointer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \write_pointer1_carry__0_i_1_n_0\,
      DI(2) => \write_pointer1_carry__0_i_2_n_0\,
      DI(1) => \write_pointer1_carry__0_i_3_n_0\,
      DI(0) => \write_pointer1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_write_pointer1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_pointer1_carry__0_i_5_n_0\,
      S(2) => \write_pointer1_carry__0_i_6_n_0\,
      S(1) => \write_pointer1_carry__0_i_7_n_0\,
      S(0) => \write_pointer1_carry__0_i_8_n_0\
    );
\write_pointer1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(14),
      I1 => write_pointer_reg(14),
      I2 => write_pointer_reg(15),
      I3 => write_pointer2(15),
      O => \write_pointer1_carry__0_i_1_n_0\
    );
\write_pointer1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(12),
      I1 => write_pointer_reg(12),
      I2 => write_pointer_reg(13),
      I3 => write_pointer2(13),
      O => \write_pointer1_carry__0_i_2_n_0\
    );
\write_pointer1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(10),
      I1 => write_pointer_reg(10),
      I2 => write_pointer_reg(11),
      I3 => write_pointer2(11),
      O => \write_pointer1_carry__0_i_3_n_0\
    );
\write_pointer1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(8),
      I1 => write_pointer_reg(8),
      I2 => write_pointer_reg(9),
      I3 => write_pointer2(9),
      O => \write_pointer1_carry__0_i_4_n_0\
    );
\write_pointer1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(14),
      I1 => write_pointer_reg(14),
      I2 => write_pointer2(15),
      I3 => write_pointer_reg(15),
      O => \write_pointer1_carry__0_i_5_n_0\
    );
\write_pointer1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(12),
      I1 => write_pointer_reg(12),
      I2 => write_pointer2(13),
      I3 => write_pointer_reg(13),
      O => \write_pointer1_carry__0_i_6_n_0\
    );
\write_pointer1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(10),
      I1 => write_pointer_reg(10),
      I2 => write_pointer2(11),
      I3 => write_pointer_reg(11),
      O => \write_pointer1_carry__0_i_7_n_0\
    );
\write_pointer1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(8),
      I1 => write_pointer_reg(8),
      I2 => write_pointer2(9),
      I3 => write_pointer_reg(9),
      O => \write_pointer1_carry__0_i_8_n_0\
    );
\write_pointer1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer1_carry__0_n_0\,
      CO(3) => \write_pointer1_carry__1_n_0\,
      CO(2) => \write_pointer1_carry__1_n_1\,
      CO(1) => \write_pointer1_carry__1_n_2\,
      CO(0) => \write_pointer1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \write_pointer1_carry__1_i_1_n_0\,
      DI(2) => \write_pointer1_carry__1_i_2_n_0\,
      DI(1) => \write_pointer1_carry__1_i_3_n_0\,
      DI(0) => \write_pointer1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_write_pointer1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_pointer1_carry__1_i_5_n_0\,
      S(2) => \write_pointer1_carry__1_i_6_n_0\,
      S(1) => \write_pointer1_carry__1_i_7_n_0\,
      S(0) => \write_pointer1_carry__1_i_8_n_0\
    );
\write_pointer1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(22),
      I1 => write_pointer_reg(22),
      I2 => write_pointer_reg(23),
      I3 => write_pointer2(23),
      O => \write_pointer1_carry__1_i_1_n_0\
    );
\write_pointer1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(20),
      I1 => write_pointer_reg(20),
      I2 => write_pointer_reg(21),
      I3 => write_pointer2(21),
      O => \write_pointer1_carry__1_i_2_n_0\
    );
\write_pointer1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(18),
      I1 => write_pointer_reg(18),
      I2 => write_pointer_reg(19),
      I3 => write_pointer2(19),
      O => \write_pointer1_carry__1_i_3_n_0\
    );
\write_pointer1_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(16),
      I1 => write_pointer_reg(16),
      I2 => write_pointer_reg(17),
      I3 => write_pointer2(17),
      O => \write_pointer1_carry__1_i_4_n_0\
    );
\write_pointer1_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(22),
      I1 => write_pointer_reg(22),
      I2 => write_pointer2(23),
      I3 => write_pointer_reg(23),
      O => \write_pointer1_carry__1_i_5_n_0\
    );
\write_pointer1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(20),
      I1 => write_pointer_reg(20),
      I2 => write_pointer2(21),
      I3 => write_pointer_reg(21),
      O => \write_pointer1_carry__1_i_6_n_0\
    );
\write_pointer1_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(18),
      I1 => write_pointer_reg(18),
      I2 => write_pointer2(19),
      I3 => write_pointer_reg(19),
      O => \write_pointer1_carry__1_i_7_n_0\
    );
\write_pointer1_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(16),
      I1 => write_pointer_reg(16),
      I2 => write_pointer2(17),
      I3 => write_pointer_reg(17),
      O => \write_pointer1_carry__1_i_8_n_0\
    );
\write_pointer1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer1_carry__1_n_0\,
      CO(3) => \write_pointer1_carry__2_n_0\,
      CO(2) => \write_pointer1_carry__2_n_1\,
      CO(1) => \write_pointer1_carry__2_n_2\,
      CO(0) => \write_pointer1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \write_pointer1_carry__2_i_1_n_0\,
      DI(2) => \write_pointer1_carry__2_i_2_n_0\,
      DI(1) => \write_pointer1_carry__2_i_3_n_0\,
      DI(0) => \write_pointer1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_write_pointer1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \write_pointer1_carry__2_i_5_n_0\,
      S(2) => \write_pointer1_carry__2_i_6_n_0\,
      S(1) => \write_pointer1_carry__2_i_7_n_0\,
      S(0) => \write_pointer1_carry__2_i_8_n_0\
    );
\write_pointer1_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(30),
      I1 => write_pointer_reg(30),
      I2 => write_pointer_reg(31),
      I3 => write_pointer2(31),
      O => \write_pointer1_carry__2_i_1_n_0\
    );
\write_pointer1_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(28),
      I1 => write_pointer_reg(28),
      I2 => write_pointer_reg(29),
      I3 => write_pointer2(29),
      O => \write_pointer1_carry__2_i_2_n_0\
    );
\write_pointer1_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(26),
      I1 => write_pointer_reg(26),
      I2 => write_pointer_reg(27),
      I3 => write_pointer2(27),
      O => \write_pointer1_carry__2_i_3_n_0\
    );
\write_pointer1_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(24),
      I1 => write_pointer_reg(24),
      I2 => write_pointer_reg(25),
      I3 => write_pointer2(25),
      O => \write_pointer1_carry__2_i_4_n_0\
    );
\write_pointer1_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(30),
      I1 => write_pointer_reg(30),
      I2 => write_pointer2(31),
      I3 => write_pointer_reg(31),
      O => \write_pointer1_carry__2_i_5_n_0\
    );
\write_pointer1_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(28),
      I1 => write_pointer_reg(28),
      I2 => write_pointer2(29),
      I3 => write_pointer_reg(29),
      O => \write_pointer1_carry__2_i_6_n_0\
    );
\write_pointer1_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(26),
      I1 => write_pointer_reg(26),
      I2 => write_pointer2(27),
      I3 => write_pointer_reg(27),
      O => \write_pointer1_carry__2_i_7_n_0\
    );
\write_pointer1_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(24),
      I1 => write_pointer_reg(24),
      I2 => write_pointer2(25),
      I3 => write_pointer_reg(25),
      O => \write_pointer1_carry__2_i_8_n_0\
    );
write_pointer1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(6),
      I1 => write_pointer_reg(6),
      I2 => write_pointer_reg(7),
      I3 => write_pointer2(7),
      O => write_pointer1_carry_i_1_n_0
    );
write_pointer1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(4),
      I1 => write_pointer_reg(4),
      I2 => write_pointer_reg(5),
      I3 => write_pointer2(5),
      O => write_pointer1_carry_i_2_n_0
    );
write_pointer1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => write_pointer2(2),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(3),
      I3 => write_pointer2(3),
      O => write_pointer1_carry_i_3_n_0
    );
write_pointer1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F01"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => Q(0),
      I2 => write_pointer_reg(1),
      I3 => write_pointer2(1),
      O => write_pointer1_carry_i_4_n_0
    );
write_pointer1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(6),
      I1 => write_pointer_reg(6),
      I2 => write_pointer2(7),
      I3 => write_pointer_reg(7),
      O => write_pointer1_carry_i_5_n_0
    );
write_pointer1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(4),
      I1 => write_pointer_reg(4),
      I2 => write_pointer2(5),
      I3 => write_pointer_reg(5),
      O => write_pointer1_carry_i_6_n_0
    );
write_pointer1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => write_pointer2(2),
      I1 => write_pointer_reg(2),
      I2 => write_pointer2(3),
      I3 => write_pointer_reg(3),
      O => write_pointer1_carry_i_7_n_0
    );
write_pointer1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => Q(0),
      I1 => write_pointer_reg(0),
      I2 => write_pointer2(1),
      I3 => write_pointer_reg(1),
      O => write_pointer1_carry_i_8_n_0
    );
write_pointer2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => write_pointer2_carry_n_0,
      CO(2) => write_pointer2_carry_n_1,
      CO(1) => write_pointer2_carry_n_2,
      CO(0) => write_pointer2_carry_n_3,
      CYINIT => Q(0),
      DI(3 downto 0) => Q(4 downto 1),
      O(3 downto 0) => write_pointer2(4 downto 1),
      S(3 downto 0) => S(3 downto 0)
    );
\write_pointer2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => write_pointer2_carry_n_0,
      CO(3) => \write_pointer2_carry__0_n_0\,
      CO(2) => \write_pointer2_carry__0_n_1\,
      CO(1) => \write_pointer2_carry__0_n_2\,
      CO(0) => \write_pointer2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(8 downto 5),
      O(3 downto 0) => write_pointer2(8 downto 5),
      S(3 downto 0) => write_pointer1_carry_i_6_0(3 downto 0)
    );
\write_pointer2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__0_n_0\,
      CO(3) => \write_pointer2_carry__1_n_0\,
      CO(2) => \write_pointer2_carry__1_n_1\,
      CO(1) => \write_pointer2_carry__1_n_2\,
      CO(0) => \write_pointer2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(12 downto 9),
      O(3 downto 0) => write_pointer2(12 downto 9),
      S(3 downto 0) => \write_pointer1_carry__0_i_8_0\(3 downto 0)
    );
\write_pointer2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__1_n_0\,
      CO(3) => \write_pointer2_carry__2_n_0\,
      CO(2) => \write_pointer2_carry__2_n_1\,
      CO(1) => \write_pointer2_carry__2_n_2\,
      CO(0) => \write_pointer2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(16 downto 13),
      O(3 downto 0) => write_pointer2(16 downto 13),
      S(3 downto 0) => \write_pointer1_carry__0_i_6_0\(3 downto 0)
    );
\write_pointer2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__2_n_0\,
      CO(3) => \write_pointer2_carry__3_n_0\,
      CO(2) => \write_pointer2_carry__3_n_1\,
      CO(1) => \write_pointer2_carry__3_n_2\,
      CO(0) => \write_pointer2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(20 downto 17),
      O(3 downto 0) => write_pointer2(20 downto 17),
      S(3 downto 0) => \write_pointer1_carry__1_i_8_0\(3 downto 0)
    );
\write_pointer2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__3_n_0\,
      CO(3) => \write_pointer2_carry__4_n_0\,
      CO(2) => \write_pointer2_carry__4_n_1\,
      CO(1) => \write_pointer2_carry__4_n_2\,
      CO(0) => \write_pointer2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(24 downto 21),
      O(3 downto 0) => write_pointer2(24 downto 21),
      S(3 downto 0) => \write_pointer1_carry__1_i_6_0\(3 downto 0)
    );
\write_pointer2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__4_n_0\,
      CO(3) => \write_pointer2_carry__5_n_0\,
      CO(2) => \write_pointer2_carry__5_n_1\,
      CO(1) => \write_pointer2_carry__5_n_2\,
      CO(0) => \write_pointer2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => Q(28 downto 25),
      O(3 downto 0) => write_pointer2(28 downto 25),
      S(3 downto 0) => \write_pointer1_carry__2_i_8_0\(3 downto 0)
    );
\write_pointer2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_write_pointer2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \write_pointer2_carry__6_n_2\,
      CO(0) => \write_pointer2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Q(30 downto 29),
      O(3) => \NLW_write_pointer2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => write_pointer2(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => \write_pointer1_carry__2_i_6_0\(2 downto 0)
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => \write_pointer1_carry__2_n_0\,
      O => \write_pointer[0]_i_1_n_0\
    );
\write_pointer[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \write_pointer[0]_i_3_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[0]_i_2_n_7\,
      Q => write_pointer_reg(0),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \write_pointer_reg[0]_i_2_n_0\,
      CO(2) => \write_pointer_reg[0]_i_2_n_1\,
      CO(1) => \write_pointer_reg[0]_i_2_n_2\,
      CO(0) => \write_pointer_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \write_pointer_reg[0]_i_2_n_4\,
      O(2) => \write_pointer_reg[0]_i_2_n_5\,
      O(1) => \write_pointer_reg[0]_i_2_n_6\,
      O(0) => \write_pointer_reg[0]_i_2_n_7\,
      S(3 downto 1) => write_pointer_reg(3 downto 1),
      S(0) => \write_pointer[0]_i_3_n_0\
    );
\write_pointer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[8]_i_1_n_5\,
      Q => write_pointer_reg(10),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[8]_i_1_n_4\,
      Q => write_pointer_reg(11),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[12]_i_1_n_7\,
      Q => write_pointer_reg(12),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[8]_i_1_n_0\,
      CO(3) => \write_pointer_reg[12]_i_1_n_0\,
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
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[12]_i_1_n_6\,
      Q => write_pointer_reg(13),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[12]_i_1_n_5\,
      Q => write_pointer_reg(14),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[12]_i_1_n_4\,
      Q => write_pointer_reg(15),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[16]_i_1_n_7\,
      Q => write_pointer_reg(16),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[12]_i_1_n_0\,
      CO(3) => \write_pointer_reg[16]_i_1_n_0\,
      CO(2) => \write_pointer_reg[16]_i_1_n_1\,
      CO(1) => \write_pointer_reg[16]_i_1_n_2\,
      CO(0) => \write_pointer_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[16]_i_1_n_4\,
      O(2) => \write_pointer_reg[16]_i_1_n_5\,
      O(1) => \write_pointer_reg[16]_i_1_n_6\,
      O(0) => \write_pointer_reg[16]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(19 downto 16)
    );
\write_pointer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[16]_i_1_n_6\,
      Q => write_pointer_reg(17),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[16]_i_1_n_5\,
      Q => write_pointer_reg(18),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[16]_i_1_n_4\,
      Q => write_pointer_reg(19),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[0]_i_2_n_6\,
      Q => write_pointer_reg(1),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[20]_i_1_n_7\,
      Q => write_pointer_reg(20),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[16]_i_1_n_0\,
      CO(3) => \write_pointer_reg[20]_i_1_n_0\,
      CO(2) => \write_pointer_reg[20]_i_1_n_1\,
      CO(1) => \write_pointer_reg[20]_i_1_n_2\,
      CO(0) => \write_pointer_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[20]_i_1_n_4\,
      O(2) => \write_pointer_reg[20]_i_1_n_5\,
      O(1) => \write_pointer_reg[20]_i_1_n_6\,
      O(0) => \write_pointer_reg[20]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(23 downto 20)
    );
\write_pointer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[20]_i_1_n_6\,
      Q => write_pointer_reg(21),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[20]_i_1_n_5\,
      Q => write_pointer_reg(22),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[20]_i_1_n_4\,
      Q => write_pointer_reg(23),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[24]_i_1_n_7\,
      Q => write_pointer_reg(24),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[20]_i_1_n_0\,
      CO(3) => \write_pointer_reg[24]_i_1_n_0\,
      CO(2) => \write_pointer_reg[24]_i_1_n_1\,
      CO(1) => \write_pointer_reg[24]_i_1_n_2\,
      CO(0) => \write_pointer_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[24]_i_1_n_4\,
      O(2) => \write_pointer_reg[24]_i_1_n_5\,
      O(1) => \write_pointer_reg[24]_i_1_n_6\,
      O(0) => \write_pointer_reg[24]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(27 downto 24)
    );
\write_pointer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[24]_i_1_n_6\,
      Q => write_pointer_reg(25),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[24]_i_1_n_5\,
      Q => write_pointer_reg(26),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[24]_i_1_n_4\,
      Q => write_pointer_reg(27),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[28]_i_1_n_7\,
      Q => write_pointer_reg(28),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[24]_i_1_n_0\,
      CO(3) => \NLW_write_pointer_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \write_pointer_reg[28]_i_1_n_1\,
      CO(1) => \write_pointer_reg[28]_i_1_n_2\,
      CO(0) => \write_pointer_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \write_pointer_reg[28]_i_1_n_4\,
      O(2) => \write_pointer_reg[28]_i_1_n_5\,
      O(1) => \write_pointer_reg[28]_i_1_n_6\,
      O(0) => \write_pointer_reg[28]_i_1_n_7\,
      S(3 downto 0) => write_pointer_reg(31 downto 28)
    );
\write_pointer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[28]_i_1_n_6\,
      Q => write_pointer_reg(29),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[0]_i_2_n_5\,
      Q => write_pointer_reg(2),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[28]_i_1_n_5\,
      Q => write_pointer_reg(30),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[28]_i_1_n_4\,
      Q => write_pointer_reg(31),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[0]_i_2_n_4\,
      Q => write_pointer_reg(3),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[4]_i_1_n_7\,
      Q => write_pointer_reg(4),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \write_pointer_reg[0]_i_2_n_0\,
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
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[4]_i_1_n_6\,
      Q => write_pointer_reg(5),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[4]_i_1_n_5\,
      Q => write_pointer_reg(6),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[4]_i_1_n_4\,
      Q => write_pointer_reg(7),
      R => \write_pointer[0]_i_1_n_0\
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => s00_axis_tvalid,
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
      CE => s00_axis_tvalid,
      D => \write_pointer_reg[8]_i_1_n_6\,
      Q => write_pointer_reg(9),
      R => \write_pointer[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0 is
  port (
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    we_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    en : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0 is
  signal DMA_MM2S_BUFF_LEN : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal DMA_MM2S_START_ADDR : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal S2MMV2_v1_0_S00_AXI_inst_n_10 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_100 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_101 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_102 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_103 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_104 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_105 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_106 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_107 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_108 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_109 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_110 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_111 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_112 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_113 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_114 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_115 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_116 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_117 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_118 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_119 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_12 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_120 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_121 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_122 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_123 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_124 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_125 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_126 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_127 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_128 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_129 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_130 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_131 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_132 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_133 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_134 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_135 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_136 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_137 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_138 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_139 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_14 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_140 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_141 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_142 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_143 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_144 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_145 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_146 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_15 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_16 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_18 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_19 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_21 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_5 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_52 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_53 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_54 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_6 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_7 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_8 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_86 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_87 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_88 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_89 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_9 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_90 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_91 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_92 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_93 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_94 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_95 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_96 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_97 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_98 : STD_LOGIC;
  signal S2MMV2_v1_0_S00_AXI_inst_n_99 : STD_LOGIC;
  signal addr_to_bram : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal axis_tlast0 : STD_LOGIC_VECTOR ( 31 downto 2 );
begin
S2MMV2_v1_0_M00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_M00_AXIS
     port map (
      DI(3) => S2MMV2_v1_0_S00_AXI_inst_n_114,
      DI(2) => S2MMV2_v1_0_S00_AXI_inst_n_115,
      DI(1) => S2MMV2_v1_0_S00_AXI_inst_n_116,
      DI(0) => S2MMV2_v1_0_S00_AXI_inst_n_117,
      S(3) => S2MMV2_v1_0_S00_AXI_inst_n_17,
      S(2) => S2MMV2_v1_0_S00_AXI_inst_n_18,
      S(1) => S2MMV2_v1_0_S00_AXI_inst_n_19,
      S(0) => S2MMV2_v1_0_S00_AXI_inst_n_20,
      axis_tlast0(29 downto 0) => axis_tlast0(31 downto 2),
      \axis_tlast_carry__0_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_146,
      \axis_tvalid0_carry__1_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_118,
      \axis_tvalid0_carry__1_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_119,
      \axis_tvalid0_carry__1_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_120,
      \axis_tvalid0_carry__1_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_121,
      \axis_tvalid0_carry__1_1\(3) => S2MMV2_v1_0_S00_AXI_inst_n_13,
      \axis_tvalid0_carry__1_1\(2) => S2MMV2_v1_0_S00_AXI_inst_n_14,
      \axis_tvalid0_carry__1_1\(1) => S2MMV2_v1_0_S00_AXI_inst_n_15,
      \axis_tvalid0_carry__1_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_16,
      \axis_tvalid0_carry__2_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_122,
      \axis_tvalid0_carry__2_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_123,
      \axis_tvalid0_carry__2_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_124,
      \axis_tvalid0_carry__2_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_125,
      \axis_tvalid0_carry__2_1\(3) => S2MMV2_v1_0_S00_AXI_inst_n_9,
      \axis_tvalid0_carry__2_1\(2) => S2MMV2_v1_0_S00_AXI_inst_n_10,
      \axis_tvalid0_carry__2_1\(1) => S2MMV2_v1_0_S00_AXI_inst_n_11,
      \axis_tvalid0_carry__2_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_12,
      axis_tvalid_delay_reg_0(3) => S2MMV2_v1_0_S00_AXI_inst_n_126,
      axis_tvalid_delay_reg_0(2) => S2MMV2_v1_0_S00_AXI_inst_n_127,
      axis_tvalid_delay_reg_0(1) => S2MMV2_v1_0_S00_AXI_inst_n_128,
      axis_tvalid_delay_reg_0(0) => S2MMV2_v1_0_S00_AXI_inst_n_129,
      axis_tvalid_delay_reg_1(3) => S2MMV2_v1_0_S00_AXI_inst_n_5,
      axis_tvalid_delay_reg_1(2) => S2MMV2_v1_0_S00_AXI_inst_n_6,
      axis_tvalid_delay_reg_1(1) => S2MMV2_v1_0_S00_AXI_inst_n_7,
      axis_tvalid_delay_reg_1(0) => S2MMV2_v1_0_S00_AXI_inst_n_8,
      din(31 downto 0) => din(31 downto 0),
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      \read_pointer1_carry__0_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_130,
      \read_pointer1_carry__0_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_131,
      \read_pointer1_carry__0_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_132,
      \read_pointer1_carry__0_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_133,
      \read_pointer1_carry__0_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_21,
      \read_pointer1_carry__1_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_134,
      \read_pointer1_carry__1_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_135,
      \read_pointer1_carry__1_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_136,
      \read_pointer1_carry__1_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_137,
      \read_pointer1_carry__2_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_138,
      \read_pointer1_carry__2_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_139,
      \read_pointer1_carry__2_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_140,
      \read_pointer1_carry__2_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_141,
      tx_done_reg_0(3) => S2MMV2_v1_0_S00_AXI_inst_n_142,
      tx_done_reg_0(2) => S2MMV2_v1_0_S00_AXI_inst_n_143,
      tx_done_reg_0(1) => S2MMV2_v1_0_S00_AXI_inst_n_144,
      tx_done_reg_0(0) => S2MMV2_v1_0_S00_AXI_inst_n_145
    );
S2MMV2_v1_0_S00_AXIS_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXIS
     port map (
      Q(30 downto 0) => DMA_MM2S_BUFF_LEN(30 downto 0),
      S(3) => S2MMV2_v1_0_S00_AXI_inst_n_110,
      S(2) => S2MMV2_v1_0_S00_AXI_inst_n_111,
      S(1) => S2MMV2_v1_0_S00_AXI_inst_n_112,
      S(0) => S2MMV2_v1_0_S00_AXI_inst_n_113,
      \addr_to_bram_reg[29]_0\(29 downto 0) => addr_to_bram(29 downto 0),
      \addr_to_bram_reg[29]_1\(29 downto 0) => DMA_MM2S_START_ADDR(29 downto 0),
      done_cal => done_cal,
      dout(31 downto 0) => dout(31 downto 0),
      en => en,
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      we_1(0) => we_1(0),
      \write_pointer1_carry__0_i_6_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_98,
      \write_pointer1_carry__0_i_6_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_99,
      \write_pointer1_carry__0_i_6_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_100,
      \write_pointer1_carry__0_i_6_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_101,
      \write_pointer1_carry__0_i_8_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_102,
      \write_pointer1_carry__0_i_8_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_103,
      \write_pointer1_carry__0_i_8_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_104,
      \write_pointer1_carry__0_i_8_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_105,
      \write_pointer1_carry__1_i_6_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_90,
      \write_pointer1_carry__1_i_6_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_91,
      \write_pointer1_carry__1_i_6_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_92,
      \write_pointer1_carry__1_i_6_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_93,
      \write_pointer1_carry__1_i_8_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_94,
      \write_pointer1_carry__1_i_8_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_95,
      \write_pointer1_carry__1_i_8_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_96,
      \write_pointer1_carry__1_i_8_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_97,
      \write_pointer1_carry__2_i_6_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_52,
      \write_pointer1_carry__2_i_6_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_53,
      \write_pointer1_carry__2_i_6_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_54,
      \write_pointer1_carry__2_i_8_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_86,
      \write_pointer1_carry__2_i_8_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_87,
      \write_pointer1_carry__2_i_8_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_88,
      \write_pointer1_carry__2_i_8_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_89,
      write_pointer1_carry_i_6_0(3) => S2MMV2_v1_0_S00_AXI_inst_n_106,
      write_pointer1_carry_i_6_0(2) => S2MMV2_v1_0_S00_AXI_inst_n_107,
      write_pointer1_carry_i_6_0(1) => S2MMV2_v1_0_S00_AXI_inst_n_108,
      write_pointer1_carry_i_6_0(0) => S2MMV2_v1_0_S00_AXI_inst_n_109
    );
S2MMV2_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_S2MMV2_v1_0_S00_AXI
     port map (
      DI(3) => S2MMV2_v1_0_S00_AXI_inst_n_114,
      DI(2) => S2MMV2_v1_0_S00_AXI_inst_n_115,
      DI(1) => S2MMV2_v1_0_S00_AXI_inst_n_116,
      DI(0) => S2MMV2_v1_0_S00_AXI_inst_n_117,
      Q(30 downto 0) => DMA_MM2S_BUFF_LEN(30 downto 0),
      S(3) => S2MMV2_v1_0_S00_AXI_inst_n_17,
      S(2) => S2MMV2_v1_0_S00_AXI_inst_n_18,
      S(1) => S2MMV2_v1_0_S00_AXI_inst_n_19,
      S(0) => S2MMV2_v1_0_S00_AXI_inst_n_20,
      addr(29 downto 0) => addr(29 downto 0),
      \addr[31]\(29 downto 0) => addr_to_bram(29 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      done_cal => done_cal,
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
      s00_axi_wvalid => s00_axi_wvalid,
      \slv_reg0_reg[12]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_102,
      \slv_reg0_reg[12]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_103,
      \slv_reg0_reg[12]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_104,
      \slv_reg0_reg[12]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_105,
      \slv_reg0_reg[16]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_98,
      \slv_reg0_reg[16]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_99,
      \slv_reg0_reg[16]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_100,
      \slv_reg0_reg[16]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_101,
      \slv_reg0_reg[20]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_94,
      \slv_reg0_reg[20]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_95,
      \slv_reg0_reg[20]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_96,
      \slv_reg0_reg[20]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_97,
      \slv_reg0_reg[24]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_90,
      \slv_reg0_reg[24]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_91,
      \slv_reg0_reg[24]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_92,
      \slv_reg0_reg[24]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_93,
      \slv_reg0_reg[28]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_86,
      \slv_reg0_reg[28]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_87,
      \slv_reg0_reg[28]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_88,
      \slv_reg0_reg[28]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_89,
      \slv_reg0_reg[31]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_52,
      \slv_reg0_reg[31]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_53,
      \slv_reg0_reg[31]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_54,
      \slv_reg0_reg[4]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_110,
      \slv_reg0_reg[4]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_111,
      \slv_reg0_reg[4]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_112,
      \slv_reg0_reg[4]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_113,
      \slv_reg0_reg[8]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_106,
      \slv_reg0_reg[8]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_107,
      \slv_reg0_reg[8]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_108,
      \slv_reg0_reg[8]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_109,
      \slv_reg1_reg[29]_0\(29 downto 0) => DMA_MM2S_START_ADDR(29 downto 0),
      \slv_reg2_reg[0]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_21,
      \slv_reg2_reg[0]_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_146,
      \slv_reg2_reg[14]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_13,
      \slv_reg2_reg[14]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_14,
      \slv_reg2_reg[14]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_15,
      \slv_reg2_reg[14]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_16,
      \slv_reg2_reg[14]_1\(3) => S2MMV2_v1_0_S00_AXI_inst_n_118,
      \slv_reg2_reg[14]_1\(2) => S2MMV2_v1_0_S00_AXI_inst_n_119,
      \slv_reg2_reg[14]_1\(1) => S2MMV2_v1_0_S00_AXI_inst_n_120,
      \slv_reg2_reg[14]_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_121,
      \slv_reg2_reg[16]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_134,
      \slv_reg2_reg[16]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_135,
      \slv_reg2_reg[16]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_136,
      \slv_reg2_reg[16]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_137,
      \slv_reg2_reg[22]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_9,
      \slv_reg2_reg[22]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_10,
      \slv_reg2_reg[22]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_11,
      \slv_reg2_reg[22]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_12,
      \slv_reg2_reg[22]_1\(3) => S2MMV2_v1_0_S00_AXI_inst_n_122,
      \slv_reg2_reg[22]_1\(2) => S2MMV2_v1_0_S00_AXI_inst_n_123,
      \slv_reg2_reg[22]_1\(1) => S2MMV2_v1_0_S00_AXI_inst_n_124,
      \slv_reg2_reg[22]_1\(0) => S2MMV2_v1_0_S00_AXI_inst_n_125,
      \slv_reg2_reg[24]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_138,
      \slv_reg2_reg[24]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_139,
      \slv_reg2_reg[24]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_140,
      \slv_reg2_reg[24]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_141,
      \slv_reg2_reg[30]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_5,
      \slv_reg2_reg[30]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_6,
      \slv_reg2_reg[30]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_7,
      \slv_reg2_reg[30]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_8,
      \slv_reg2_reg[30]_1\(29 downto 0) => axis_tlast0(31 downto 2),
      \slv_reg2_reg[30]_2\(3) => S2MMV2_v1_0_S00_AXI_inst_n_126,
      \slv_reg2_reg[30]_2\(2) => S2MMV2_v1_0_S00_AXI_inst_n_127,
      \slv_reg2_reg[30]_2\(1) => S2MMV2_v1_0_S00_AXI_inst_n_128,
      \slv_reg2_reg[30]_2\(0) => S2MMV2_v1_0_S00_AXI_inst_n_129,
      \slv_reg2_reg[30]_3\(3) => S2MMV2_v1_0_S00_AXI_inst_n_142,
      \slv_reg2_reg[30]_3\(2) => S2MMV2_v1_0_S00_AXI_inst_n_143,
      \slv_reg2_reg[30]_3\(1) => S2MMV2_v1_0_S00_AXI_inst_n_144,
      \slv_reg2_reg[30]_3\(0) => S2MMV2_v1_0_S00_AXI_inst_n_145,
      \slv_reg2_reg[8]_0\(3) => S2MMV2_v1_0_S00_AXI_inst_n_130,
      \slv_reg2_reg[8]_0\(2) => S2MMV2_v1_0_S00_AXI_inst_n_131,
      \slv_reg2_reg[8]_0\(1) => S2MMV2_v1_0_S00_AXI_inst_n_132,
      \slv_reg2_reg[8]_0\(0) => S2MMV2_v1_0_S00_AXI_inst_n_133
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
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN SOC_DMA_V2_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
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
  s00_axis_tready <= \<const1>\;
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
      s00_axis_tvalid => s00_axis_tvalid,
      we_1(0) => \^we_1\(3)
    );
end STRUCTURE;
