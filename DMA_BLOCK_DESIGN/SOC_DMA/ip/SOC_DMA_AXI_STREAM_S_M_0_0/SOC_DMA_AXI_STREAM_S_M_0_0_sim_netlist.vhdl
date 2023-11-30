-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Nov 29 13:19:04 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {D:/Study Materials/Sem
--               7/ADS/Vector-Processor-SOC/DMA_BLOCK_DESIGN/SOC_DMA/ip/SOC_DMA_AXI_STREAM_S_M_0_0/SOC_DMA_AXI_STREAM_S_M_0_0_sim_netlist.vhdl}
-- Design      : SOC_DMA_AXI_STREAM_S_M_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_aclk : in STD_LOGIC;
    \read_pointer_reg[0]_0\ : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    data_from_bram : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS : entity is "AXI_STREAM_S_M_v1_0_M00_AXIS";
end SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS;

architecture STRUCTURE of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal axis_tlast : STD_LOGIC;
  signal axis_tlast_delay_i_2_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal count : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \read_pointer[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[2]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[7]_i_2_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_1_n_0\ : STD_LOGIC;
  signal \read_pointer[8]_i_3_n_0\ : STD_LOGIC;
  signal read_pointer_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal stream_data_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \stream_data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal tx_done_i_1_n_0 : STD_LOGIC;
  signal tx_done_i_2_n_0 : STD_LOGIC;
  signal tx_done_i_3_n_0 : STD_LOGIC;
  signal tx_done_reg_n_0 : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tlast_delay_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axis_tvalid_delay_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \read_pointer[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_pointer[7]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \read_pointer[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \stream_data_out[0]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of tx_done_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of tx_done_i_3 : label is "soft_lutpair6";
begin
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
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
      R => stream_data_out(0)
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => stream_data_out(0)
    );
axis_tlast_delay_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => read_pointer_reg(5),
      I1 => read_pointer_reg(6),
      I2 => read_pointer_reg(7),
      I3 => read_pointer_reg(8),
      I4 => axis_tlast_delay_i_2_n_0,
      O => axis_tlast
    );
axis_tlast_delay_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => read_pointer_reg(3),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(2),
      O => axis_tlast_delay_i_2_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast,
      Q => m00_axis_tlast,
      R => stream_data_out(0)
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => read_pointer_reg(8),
      I3 => \read_pointer_reg[0]_0\,
      O => axis_tvalid
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => m00_axis_tvalid,
      R => stream_data_out(0)
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
      R => stream_data_out(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(1),
      Q => count_reg(1),
      R => stream_data_out(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \count[2]_i_1_n_0\,
      Q => count_reg(2),
      R => stream_data_out(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(3),
      Q => count_reg(3),
      R => stream_data_out(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => p_0_in(4),
      Q => count_reg(4),
      R => stream_data_out(0)
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF04000000"
    )
        port map (
      I0 => read_pointer_reg(8),
      I1 => m00_axis_tready,
      I2 => mst_exec_state(0),
      I3 => mst_exec_state(1),
      I4 => \read_pointer_reg[0]_0\,
      I5 => read_pointer_reg(0),
      O => \read_pointer[0]_i_1_n_0\
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      O => \p_0_in__0\(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => read_pointer_reg(1),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(2),
      O => \read_pointer[2]_i_1_n_0\
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(2),
      I3 => read_pointer_reg(3),
      O => \p_0_in__0\(3)
    );
\read_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(3),
      I4 => read_pointer_reg(4),
      O => \p_0_in__0\(4)
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => read_pointer_reg(0),
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(2),
      I4 => read_pointer_reg(4),
      I5 => read_pointer_reg(5),
      O => \p_0_in__0\(5)
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => read_pointer_reg(4),
      I1 => \read_pointer[7]_i_2_n_0\,
      I2 => read_pointer_reg(3),
      I3 => read_pointer_reg(5),
      I4 => read_pointer_reg(6),
      O => \p_0_in__0\(6)
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => read_pointer_reg(5),
      I1 => read_pointer_reg(3),
      I2 => \read_pointer[7]_i_2_n_0\,
      I3 => read_pointer_reg(4),
      I4 => read_pointer_reg(6),
      I5 => read_pointer_reg(7),
      O => \p_0_in__0\(7)
    );
\read_pointer[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer_reg(2),
      I1 => read_pointer_reg(1),
      I2 => read_pointer_reg(0),
      O => \read_pointer[7]_i_2_n_0\
    );
\read_pointer[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \read_pointer_reg[0]_0\,
      I1 => mst_exec_state(1),
      I2 => mst_exec_state(0),
      I3 => m00_axis_tready,
      I4 => read_pointer_reg(8),
      O => \read_pointer[8]_i_1_n_0\
    );
\read_pointer[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => read_pointer_reg(6),
      I1 => \read_pointer[8]_i_3_n_0\,
      I2 => read_pointer_reg(7),
      O => \p_0_in__0\(8)
    );
\read_pointer[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => read_pointer_reg(5),
      I1 => read_pointer_reg(3),
      I2 => read_pointer_reg(0),
      I3 => read_pointer_reg(1),
      I4 => read_pointer_reg(2),
      I5 => read_pointer_reg(4),
      O => \read_pointer[8]_i_3_n_0\
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \read_pointer[0]_i_1_n_0\,
      Q => read_pointer_reg(0),
      R => stream_data_out(0)
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => read_pointer_reg(1),
      R => stream_data_out(0)
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \read_pointer[2]_i_1_n_0\,
      Q => read_pointer_reg(2),
      R => stream_data_out(0)
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => read_pointer_reg(3),
      R => stream_data_out(0)
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => read_pointer_reg(4),
      R => stream_data_out(0)
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => read_pointer_reg(5),
      R => stream_data_out(0)
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => read_pointer_reg(6),
      R => stream_data_out(0)
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => read_pointer_reg(7),
      R => stream_data_out(0)
    );
\read_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => \read_pointer[8]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => read_pointer_reg(8),
      R => stream_data_out(0)
    );
\stream_data_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => stream_data_out(0)
    );
\stream_data_out[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => data_from_bram,
      I1 => tx_en,
      I2 => \^m00_axis_tdata\(0),
      O => \stream_data_out[0]_i_2_n_0\
    );
\stream_data_out[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => mst_exec_state(0),
      I2 => mst_exec_state(1),
      I3 => read_pointer_reg(8),
      I4 => \read_pointer_reg[0]_0\,
      O => tx_en
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \stream_data_out[0]_i_2_n_0\,
      Q => \^m00_axis_tdata\(0),
      R => stream_data_out(0)
    );
tx_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABAA0000"
    )
        port map (
      I0 => tx_done_reg_n_0,
      I1 => tx_done_i_2_n_0,
      I2 => tx_done_i_3_n_0,
      I3 => read_pointer_reg(8),
      I4 => m00_axis_aresetn,
      I5 => \read_pointer[8]_i_1_n_0\,
      O => tx_done_i_1_n_0
    );
tx_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_pointer_reg(0),
      I1 => read_pointer_reg(7),
      I2 => read_pointer_reg(5),
      I3 => read_pointer_reg(6),
      O => tx_done_i_2_n_0
    );
tx_done_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => read_pointer_reg(3),
      I1 => read_pointer_reg(4),
      I2 => read_pointer_reg(1),
      I3 => read_pointer_reg(2),
      O => tx_done_i_3_n_0
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
entity SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS is
  port (
    we : out STD_LOGIC;
    mst_exec_state_reg_0 : out STD_LOGIC;
    \FSM_onehot_state_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]\ : out STD_LOGIC;
    en2_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    we_reg_0 : out STD_LOGIC;
    din_0_sp_1 : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_onehot_state_reg[0]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    data_valid : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[2]_0\ : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC;
    addr_counter : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_2\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_3\ : in STD_LOGIC;
    \FSM_onehot_state_reg[0]_4\ : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_from_bram : in STD_LOGIC;
    data_valid_reg : in STD_LOGIC;
    en : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS : entity is "AXI_STREAM_S_M_v1_0_S00_AXIS";
end SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS;

architecture STRUCTURE of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS is
  signal \FSM_onehot_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal din_0_sn_1 : STD_LOGIC;
  signal fifo_wren : STD_LOGIC;
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^mst_exec_state_reg_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^we\ : STD_LOGIC;
  signal \write_pointer[8]_i_3_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_counter[12]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr_counter[9]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of data_valid_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of writes_done_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of writes_done_i_2 : label is "soft_lutpair13";
begin
  din_0_sp_1 <= din_0_sn_1;
  mst_exec_state_reg_0 <= \^mst_exec_state_reg_0\;
  we <= \^we\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEE222"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state_reg[0]_2\,
      I3 => \FSM_onehot_state_reg[0]_3\,
      I4 => \FSM_onehot_state_reg[0]_4\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_state_reg[0]\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2E2E2EA"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_0\,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => \FSM_onehot_state[1]_i_2_n_0\,
      I3 => addr_counter(0),
      I4 => \FSM_onehot_state_reg[1]_1\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_state_reg[1]\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => \^we\,
      O => \FSM_onehot_state[1]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEE22E2"
    )
        port map (
      I0 => data_valid,
      I1 => \FSM_onehot_state[2]_i_2_n_0\,
      I2 => state(0),
      I3 => \^we\,
      I4 => \FSM_onehot_state_reg[2]_0\,
      I5 => s00_axis_aresetn,
      O => \FSM_onehot_state_reg[2]\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFECCEE"
    )
        port map (
      I0 => data_valid,
      I1 => \FSM_onehot_state_reg[1]_0\,
      I2 => done_cal,
      I3 => \^we\,
      I4 => state(0),
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\addr[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => \FSM_onehot_state_reg[1]_0\,
      I1 => data_valid,
      I2 => \^we\,
      I3 => s00_axis_aresetn,
      O => E(0)
    );
\addr_counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33332322"
    )
        port map (
      I0 => state(0),
      I1 => s00_axis_aresetn,
      I2 => \^we\,
      I3 => data_valid,
      I4 => \FSM_onehot_state_reg[1]_0\,
      O => en2_out
    );
\addr_counter[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^we\,
      I1 => done_cal,
      I2 => state(0),
      O => we_reg_0
    );
\data_from_bram[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => din(0),
      I1 => \^we\,
      I2 => data_valid,
      I3 => s00_axis_aresetn,
      I4 => data_from_bram,
      O => din_0_sn_1
    );
\data_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(0),
      Q => Q(0),
      R => '0'
    );
\data_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(10),
      Q => Q(10),
      R => '0'
    );
\data_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(11),
      Q => Q(11),
      R => '0'
    );
\data_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(12),
      Q => Q(12),
      R => '0'
    );
\data_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(13),
      Q => Q(13),
      R => '0'
    );
\data_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(14),
      Q => Q(14),
      R => '0'
    );
\data_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(15),
      Q => Q(15),
      R => '0'
    );
\data_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(16),
      Q => Q(16),
      R => '0'
    );
\data_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(17),
      Q => Q(17),
      R => '0'
    );
\data_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(18),
      Q => Q(18),
      R => '0'
    );
\data_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(19),
      Q => Q(19),
      R => '0'
    );
\data_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(1),
      Q => Q(1),
      R => '0'
    );
\data_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(20),
      Q => Q(20),
      R => '0'
    );
\data_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(21),
      Q => Q(21),
      R => '0'
    );
\data_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(22),
      Q => Q(22),
      R => '0'
    );
\data_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(23),
      Q => Q(23),
      R => '0'
    );
\data_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(24),
      Q => Q(24),
      R => '0'
    );
\data_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(25),
      Q => Q(25),
      R => '0'
    );
\data_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(26),
      Q => Q(26),
      R => '0'
    );
\data_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(27),
      Q => Q(27),
      R => '0'
    );
\data_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(28),
      Q => Q(28),
      R => '0'
    );
\data_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(29),
      Q => Q(29),
      R => '0'
    );
\data_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(2),
      Q => Q(2),
      R => '0'
    );
\data_to_bram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(30),
      Q => Q(30),
      R => '0'
    );
\data_to_bram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(31),
      Q => Q(31),
      R => '0'
    );
\data_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(3),
      Q => Q(3),
      R => '0'
    );
\data_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(4),
      Q => Q(4),
      R => '0'
    );
\data_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(5),
      Q => Q(5),
      R => '0'
    );
\data_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(6),
      Q => Q(6),
      R => '0'
    );
\data_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(7),
      Q => Q(7),
      R => '0'
    );
\data_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(8),
      Q => Q(8),
      R => '0'
    );
\data_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(9),
      Q => Q(9),
      R => '0'
    );
data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFD2030"
    )
        port map (
      I0 => state(0),
      I1 => s00_axis_aresetn,
      I2 => data_valid,
      I3 => \^we\,
      I4 => data_valid_reg,
      O => \FSM_onehot_state_reg[0]_0\
    );
en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFDD33332300"
    )
        port map (
      I0 => state(0),
      I1 => s00_axis_aresetn,
      I2 => \^we\,
      I3 => data_valid,
      I4 => \FSM_onehot_state_reg[1]_0\,
      I5 => en,
      O => \FSM_onehot_state_reg[0]_1\
    );
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^mst_exec_state_reg_0\,
      I2 => writes_done,
      I3 => s00_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^mst_exec_state_reg_0\,
      R => '0'
    );
we_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^mst_exec_state_reg_0\,
      O => fifo_wren
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => fifo_wren,
      Q => \^we\,
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => \p_0_in__1\(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => write_pointer_reg(1),
      O => \p_0_in__1\(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(2),
      O => \p_0_in__1\(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => write_pointer_reg(2),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(1),
      I3 => write_pointer_reg(3),
      O => \p_0_in__1\(3)
    );
\write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => write_pointer_reg(3),
      I1 => write_pointer_reg(1),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(2),
      I4 => write_pointer_reg(4),
      O => \p_0_in__1\(4)
    );
\write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(1),
      I4 => write_pointer_reg(3),
      I5 => write_pointer_reg(5),
      O => \p_0_in__1\(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_pointer[8]_i_3_n_0\,
      I1 => write_pointer_reg(6),
      O => \p_0_in__1\(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[8]_i_3_n_0\,
      I2 => write_pointer_reg(7),
      O => \p_0_in__1\(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => p_0_in_0
    );
\write_pointer[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => \write_pointer[8]_i_3_n_0\,
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(8),
      O => \p_0_in__1\(8)
    );
\write_pointer[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => write_pointer_reg(4),
      I1 => write_pointer_reg(2),
      I2 => write_pointer_reg(0),
      I3 => write_pointer_reg(1),
      I4 => write_pointer_reg(3),
      I5 => write_pointer_reg(5),
      O => \write_pointer[8]_i_3_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(0),
      Q => write_pointer_reg(0),
      R => p_0_in_0
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(1),
      Q => write_pointer_reg(1),
      R => p_0_in_0
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(2),
      Q => write_pointer_reg(2),
      R => p_0_in_0
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(3),
      Q => write_pointer_reg(3),
      R => p_0_in_0
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(4),
      Q => write_pointer_reg(4),
      R => p_0_in_0
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(5),
      Q => write_pointer_reg(5),
      R => p_0_in_0
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(6),
      Q => write_pointer_reg(6),
      R => p_0_in_0
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(7),
      Q => write_pointer_reg(7),
      R => p_0_in_0
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => \p_0_in__1\(8),
      Q => write_pointer_reg(8),
      R => p_0_in_0
    );
writes_done_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CEEE0000"
    )
        port map (
      I0 => writes_done,
      I1 => writes_done_i_2_n_0,
      I2 => s00_axis_tvalid,
      I3 => \^mst_exec_state_reg_0\,
      I4 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[8]_i_3_n_0\,
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(8),
      I4 => s00_axis_tlast,
      O => writes_done_i_2_n_0
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
entity SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0 is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mst_exec_state_reg : out STD_LOGIC;
    we_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    en : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_aresetn : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    done_cal : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0 : entity is "AXI_STREAM_S_M_v1_0";
end SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0;

architecture STRUCTURE of SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0 is
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8 : STD_LOGIC;
  signal AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9 : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal addr_counter : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \addr_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \addr_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \addr_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \addr_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \addr_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \addr_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \addr_counter0_carry__1_n_3\ : STD_LOGIC;
  signal addr_counter0_carry_n_0 : STD_LOGIC;
  signal addr_counter0_carry_n_1 : STD_LOGIC;
  signal addr_counter0_carry_n_2 : STD_LOGIC;
  signal addr_counter0_carry_n_3 : STD_LOGIC;
  signal \addr_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \addr_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal data_from_bram : STD_LOGIC;
  signal data_to_bram : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data_valid : STD_LOGIC;
  signal data_valid_reg_n_0 : STD_LOGIC;
  signal \dout[31]_i_1_n_0\ : STD_LOGIC;
  signal \^en\ : STD_LOGIC;
  signal en2_out : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal we : STD_LOGIC;
  signal \NLW_addr_counter0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "DATA_OUT:010,DATA_IN:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "DATA_OUT:010,DATA_IN:100,IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "DATA_OUT:010,DATA_IN:100,IDLE:001";
begin
  en <= \^en\;
AXI_STREAM_S_M_v1_0_M00_AXIS_inst: entity work.SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_M00_AXIS
     port map (
      data_from_bram => data_from_bram,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => m00_axis_tdata(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      \read_pointer_reg[0]_0\ => data_valid_reg_n_0
    );
AXI_STREAM_S_M_v1_0_S00_AXIS_inst: entity work.SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0_S00_AXIS
     port map (
      E(0) => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      \FSM_onehot_state_reg[0]\ => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4,
      \FSM_onehot_state_reg[0]_0\ => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9,
      \FSM_onehot_state_reg[0]_1\ => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10,
      \FSM_onehot_state_reg[0]_2\ => \FSM_onehot_state[0]_i_2_n_0\,
      \FSM_onehot_state_reg[0]_3\ => \FSM_onehot_state[0]_i_3_n_0\,
      \FSM_onehot_state_reg[0]_4\ => \FSM_onehot_state[0]_i_4_n_0\,
      \FSM_onehot_state_reg[1]\ => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3,
      \FSM_onehot_state_reg[1]_0\ => \FSM_onehot_state_reg_n_0_[1]\,
      \FSM_onehot_state_reg[1]_1\ => \FSM_onehot_state[1]_i_3_n_0\,
      \FSM_onehot_state_reg[2]\ => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2,
      \FSM_onehot_state_reg[2]_0\ => \FSM_onehot_state[2]_i_3_n_0\,
      Q(31 downto 0) => data_to_bram(31 downto 0),
      addr_counter(0) => addr_counter(9),
      data_from_bram => data_from_bram,
      data_valid => data_valid,
      data_valid_reg => data_valid_reg_n_0,
      din(0) => din(0),
      din_0_sp_1 => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8,
      done_cal => done_cal,
      en => \^en\,
      en2_out => en2_out,
      mst_exec_state_reg_0 => mst_exec_state_reg,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      state(0) => state(0),
      we => we,
      we_reg_0 => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7
    );
\FSM_onehot_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => addr_counter(2),
      I1 => addr_counter(3),
      I2 => addr_counter(0),
      I3 => addr_counter(1),
      I4 => \FSM_onehot_state[2]_i_5_n_0\,
      O => \FSM_onehot_state[0]_i_2_n_0\
    );
\FSM_onehot_state[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => data_valid,
      I1 => addr_counter(9),
      I2 => addr_counter(8),
      O => \FSM_onehot_state[0]_i_3_n_0\
    );
\FSM_onehot_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCFCFCFCFC88"
    )
        port map (
      I0 => addr_counter(9),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => data_valid,
      I3 => addr_counter(12),
      I4 => addr_counter(11),
      I5 => addr_counter(10),
      O => \FSM_onehot_state[0]_i_4_n_0\
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => addr_counter(12),
      I1 => addr_counter(11),
      I2 => addr_counter(10),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004444444444444"
    )
        port map (
      I0 => \FSM_onehot_state[1]_i_3_n_0\,
      I1 => data_valid,
      I2 => \FSM_onehot_state[2]_i_4_n_0\,
      I3 => \FSM_onehot_state[2]_i_5_n_0\,
      I4 => addr_counter(8),
      I5 => addr_counter(9),
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => addr_counter(1),
      I1 => addr_counter(0),
      I2 => addr_counter(3),
      I3 => addr_counter(2),
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => addr_counter(5),
      I1 => addr_counter(4),
      I2 => addr_counter(7),
      I3 => addr_counter(6),
      O => \FSM_onehot_state[2]_i_5_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_4,
      Q => state(0),
      R => '0'
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_3,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_2,
      Q => data_valid,
      R => '0'
    );
addr_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => addr_counter0_carry_n_0,
      CO(2) => addr_counter0_carry_n_1,
      CO(1) => addr_counter0_carry_n_2,
      CO(0) => addr_counter0_carry_n_3,
      CYINIT => addr_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(4 downto 1),
      S(3 downto 0) => addr_counter(4 downto 1)
    );
\addr_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => addr_counter0_carry_n_0,
      CO(3) => \addr_counter0_carry__0_n_0\,
      CO(2) => \addr_counter0_carry__0_n_1\,
      CO(1) => \addr_counter0_carry__0_n_2\,
      CO(0) => \addr_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(8 downto 5),
      S(3 downto 0) => addr_counter(8 downto 5)
    );
\addr_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_counter0_carry__0_n_0\,
      CO(3) => \NLW_addr_counter0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \addr_counter0_carry__1_n_1\,
      CO(1) => \addr_counter0_carry__1_n_2\,
      CO(0) => \addr_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in8(12 downto 9),
      S(3 downto 0) => addr_counter(12 downto 9)
    );
\addr_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addr_counter(0),
      O => \addr_counter[0]_i_1_n_0\
    );
\addr_counter[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => s00_axis_aresetn,
      I1 => state(0),
      I2 => data_valid,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \addr_counter[12]_i_1_n_0\
    );
\addr_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8FFFFFFA80000"
    )
        port map (
      I0 => in8(9),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => data_valid,
      I3 => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_7,
      I4 => en2_out,
      I5 => addr_counter(9),
      O => \addr_counter[9]_i_1_n_0\
    );
\addr_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => \addr_counter[0]_i_1_n_0\,
      Q => addr_counter(0),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(10),
      Q => addr_counter(10),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(11),
      Q => addr_counter(11),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(12),
      Q => addr_counter(12),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(1),
      Q => addr_counter(1),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(2),
      Q => addr_counter(2),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(3),
      Q => addr_counter(3),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(4),
      Q => addr_counter(4),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(5),
      Q => addr_counter(5),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(6),
      Q => addr_counter(6),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(7),
      Q => addr_counter(7),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => en2_out,
      D => in8(8),
      Q => addr_counter(8),
      R => \addr_counter[12]_i_1_n_0\
    );
\addr_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \addr_counter[9]_i_1_n_0\,
      Q => addr_counter(9),
      R => '0'
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(0),
      Q => addr(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(10),
      Q => addr(10),
      R => '0'
    );
\addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(11),
      Q => addr(11),
      R => '0'
    );
\addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(12),
      Q => addr(12),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(1),
      Q => addr(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(2),
      Q => addr(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(3),
      Q => addr(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(4),
      Q => addr(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(5),
      Q => addr(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(6),
      Q => addr(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(7),
      Q => addr(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(8),
      Q => addr(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_6,
      D => addr_counter(9),
      Q => addr(9),
      R => '0'
    );
\data_from_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_8,
      Q => data_from_bram,
      R => '0'
    );
data_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_9,
      Q => data_valid_reg_n_0,
      R => '0'
    );
\dout[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => s00_axis_aresetn,
      O => \dout[31]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(0),
      Q => dout(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(10),
      Q => dout(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(11),
      Q => dout(11),
      R => '0'
    );
\dout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(12),
      Q => dout(12),
      R => '0'
    );
\dout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(13),
      Q => dout(13),
      R => '0'
    );
\dout_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(14),
      Q => dout(14),
      R => '0'
    );
\dout_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(15),
      Q => dout(15),
      R => '0'
    );
\dout_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(16),
      Q => dout(16),
      R => '0'
    );
\dout_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(17),
      Q => dout(17),
      R => '0'
    );
\dout_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(18),
      Q => dout(18),
      R => '0'
    );
\dout_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(19),
      Q => dout(19),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(1),
      Q => dout(1),
      R => '0'
    );
\dout_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(20),
      Q => dout(20),
      R => '0'
    );
\dout_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(21),
      Q => dout(21),
      R => '0'
    );
\dout_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(22),
      Q => dout(22),
      R => '0'
    );
\dout_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(23),
      Q => dout(23),
      R => '0'
    );
\dout_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(24),
      Q => dout(24),
      R => '0'
    );
\dout_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(25),
      Q => dout(25),
      R => '0'
    );
\dout_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(26),
      Q => dout(26),
      R => '0'
    );
\dout_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(27),
      Q => dout(27),
      R => '0'
    );
\dout_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(28),
      Q => dout(28),
      R => '0'
    );
\dout_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(29),
      Q => dout(29),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(2),
      Q => dout(2),
      R => '0'
    );
\dout_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(30),
      Q => dout(30),
      R => '0'
    );
\dout_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(31),
      Q => dout(31),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(3),
      Q => dout(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(4),
      Q => dout(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(5),
      Q => dout(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(6),
      Q => dout(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(7),
      Q => dout(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(8),
      Q => dout(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => data_to_bram(9),
      Q => dout(9),
      R => '0'
    );
en_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => AXI_STREAM_S_M_v1_0_S00_AXIS_inst_n_10,
      Q => \^en\,
      R => '0'
    );
we_1_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => \dout[31]_i_1_n_0\,
      D => we,
      Q => we_1(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOC_DMA_AXI_STREAM_S_M_0_0 is
  port (
    addr : out STD_LOGIC_VECTOR ( 12 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en : out STD_LOGIC;
    clk_b : out STD_LOGIC;
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
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SOC_DMA_AXI_STREAM_S_M_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SOC_DMA_AXI_STREAM_S_M_0_0 : entity is "SOC_DMA_AXI_STREAM_S_M_0_0,AXI_STREAM_S_M_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SOC_DMA_AXI_STREAM_S_M_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SOC_DMA_AXI_STREAM_S_M_0_0 : entity is "AXI_STREAM_S_M_v1_0,Vivado 2019.1";
end SOC_DMA_AXI_STREAM_S_M_0_0;

architecture STRUCTURE of SOC_DMA_AXI_STREAM_S_M_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m00_axis_tdata\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s00_axis_aclk\ : STD_LOGIC;
  signal \^we_1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of m00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 M00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of m00_axis_aclk : signal is "XIL_INTERFACENAME M00_AXIS_CLK, ASSOCIATED_BUSIF M00_AXIS, ASSOCIATED_RESET m00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of m00_axis_aresetn : signal is "XIL_INTERFACENAME M00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of m00_axis_tready : signal is "XIL_INTERFACENAME M00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  attribute X_INTERFACE_INFO of s00_axis_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axis_aclk : signal is "XIL_INTERFACENAME S00_AXIS_CLK, ASSOCIATED_BUSIF S00_AXIS, ASSOCIATED_RESET s00_axis_aresetn, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXIS_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axis_aresetn : signal is "XIL_INTERFACENAME S00_AXIS_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  attribute X_INTERFACE_PARAMETER of s00_axis_tready : signal is "XIL_INTERFACENAME S00_AXIS, WIZ_DATA_WIDTH 32, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  attribute X_INTERFACE_INFO of m00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  attribute X_INTERFACE_INFO of s00_axis_tstrb : signal is "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
begin
  \^s00_axis_aclk\ <= s00_axis_aclk;
  clk_b <= \^s00_axis_aclk\;
  m00_axis_tdata(31) <= \<const0>\;
  m00_axis_tdata(30) <= \<const0>\;
  m00_axis_tdata(29) <= \<const0>\;
  m00_axis_tdata(28) <= \<const0>\;
  m00_axis_tdata(27) <= \<const0>\;
  m00_axis_tdata(26) <= \<const0>\;
  m00_axis_tdata(25) <= \<const0>\;
  m00_axis_tdata(24) <= \<const0>\;
  m00_axis_tdata(23) <= \<const0>\;
  m00_axis_tdata(22) <= \<const0>\;
  m00_axis_tdata(21) <= \<const0>\;
  m00_axis_tdata(20) <= \<const0>\;
  m00_axis_tdata(19) <= \<const0>\;
  m00_axis_tdata(18) <= \<const0>\;
  m00_axis_tdata(17) <= \<const0>\;
  m00_axis_tdata(16) <= \<const0>\;
  m00_axis_tdata(15) <= \<const0>\;
  m00_axis_tdata(14) <= \<const0>\;
  m00_axis_tdata(13) <= \<const0>\;
  m00_axis_tdata(12) <= \<const0>\;
  m00_axis_tdata(11) <= \<const0>\;
  m00_axis_tdata(10) <= \<const0>\;
  m00_axis_tdata(9) <= \<const0>\;
  m00_axis_tdata(8) <= \<const0>\;
  m00_axis_tdata(7) <= \<const0>\;
  m00_axis_tdata(6) <= \<const0>\;
  m00_axis_tdata(5) <= \<const0>\;
  m00_axis_tdata(4) <= \<const0>\;
  m00_axis_tdata(3) <= \<const0>\;
  m00_axis_tdata(2) <= \<const0>\;
  m00_axis_tdata(1) <= \<const0>\;
  m00_axis_tdata(0) <= \^m00_axis_tdata\(0);
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
  we_1(3) <= \<const0>\;
  we_1(2) <= \<const0>\;
  we_1(1) <= \<const0>\;
  we_1(0) <= \^we_1\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.SOC_DMA_AXI_STREAM_S_M_0_0_AXI_STREAM_S_M_v1_0
     port map (
      addr(12 downto 0) => addr(12 downto 0),
      din(0) => din(0),
      done_cal => done_cal,
      dout(31 downto 0) => dout(31 downto 0),
      en => en,
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(0) => \^m00_axis_tdata\(0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      mst_exec_state_reg => s00_axis_tready,
      s00_axis_aclk => \^s00_axis_aclk\,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      we_1(0) => \^we_1\(0)
    );
end STRUCTURE;
