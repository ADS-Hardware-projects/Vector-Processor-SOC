-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec  8 03:03:42 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {D:/Study Materials/Sem
--               7/ADS/Vector-Processor-SOC/DMA_BLOCK_DESIGN/SOC_DMA/ip/SOC_DMA_Streamconverter_0_2/SOC_DMA_Streamconverter_0_2_sim_netlist.vhdl}
-- Design      : SOC_DMA_Streamconverter_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS is
  port (
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS : entity is "Streamconverter_v1_0_M00_AXIS";
end SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS;

architecture STRUCTURE of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS is
  signal \FSM_sequential_mst_exec_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_mst_exec_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_tlast : STD_LOGIC;
  signal axis_tlast_delay : STD_LOGIC;
  signal axis_tlast_delay_i_2_n_0 : STD_LOGIC;
  signal axis_tvalid : STD_LOGIC;
  signal axis_tvalid_delay : STD_LOGIC;
  signal count : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \stream_data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal tx_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_mst_exec_state[1]_i_2\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[0]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_mst_exec_state_reg[1]\ : label is "INIT_COUNTER:01,SEND_STREAM:10,IDLE:00";
  attribute SOFT_HLUTNM of axis_tlast_delay_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_pointer[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \read_pointer[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_pointer[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \read_pointer[4]_i_1\ : label is "soft_lutpair1";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\FSM_sequential_mst_exec_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000FF7FFFFF"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[0]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00800000"
    )
        port map (
      I0 => count_reg(2),
      I1 => count_reg(3),
      I2 => count_reg(4),
      I3 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I4 => mst_exec_state(0),
      I5 => mst_exec_state(1),
      O => \FSM_sequential_mst_exec_state[1]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => count_reg(1),
      I1 => count_reg(0),
      O => \FSM_sequential_mst_exec_state[1]_i_2_n_0\
    );
\FSM_sequential_mst_exec_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[0]_i_1_n_0\,
      Q => mst_exec_state(0),
      R => \stream_data_out[31]_i_1_n_0\
    );
\FSM_sequential_mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => \FSM_sequential_mst_exec_state[1]_i_1_n_0\,
      Q => mst_exec_state(1),
      R => \stream_data_out[31]_i_1_n_0\
    );
axis_tlast_delay_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast_delay,
      Q => m00_axis_tlast,
      R => \stream_data_out[31]_i_1_n_0\
    );
axis_tlast_delay_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(7),
      I2 => \^q\(5),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => axis_tlast_delay_i_2_n_0,
      O => axis_tlast
    );
axis_tlast_delay_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => axis_tlast_delay_i_2_n_0
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tlast,
      Q => axis_tlast_delay,
      R => \stream_data_out[31]_i_1_n_0\
    );
axis_tvalid_delay_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid_delay,
      Q => m00_axis_tvalid,
      R => \stream_data_out[31]_i_1_n_0\
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      O => axis_tvalid
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => '1',
      D => axis_tvalid,
      Q => axis_tvalid_delay,
      R => \stream_data_out[31]_i_1_n_0\
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
      O => \p_0_in__0\(2)
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
\count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044444444444444"
    )
        port map (
      I0 => mst_exec_state(1),
      I1 => mst_exec_state(0),
      I2 => \FSM_sequential_mst_exec_state[1]_i_2_n_0\,
      I3 => count_reg(4),
      I4 => count_reg(3),
      I5 => count_reg(2),
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
      R => \stream_data_out[31]_i_1_n_0\
    );
\count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(1),
      Q => count_reg(1),
      R => \stream_data_out[31]_i_1_n_0\
    );
\count_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(2),
      Q => count_reg(2),
      R => \stream_data_out[31]_i_1_n_0\
    );
\count_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(3),
      Q => count_reg(3),
      R => \stream_data_out[31]_i_1_n_0\
    );
\count_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => count,
      D => \p_0_in__0\(4),
      Q => count_reg(4),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \p_0_in__1\(0)
    );
\read_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \p_0_in__1\(1)
    );
\read_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \p_0_in__1\(2)
    );
\read_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \p_0_in__1\(3)
    );
\read_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \p_0_in__1\(4)
    );
\read_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \p_0_in__1\(5)
    );
\read_pointer[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \^q\(4),
      I1 => axis_tlast_delay_i_2_n_0,
      I2 => \^q\(3),
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \p_0_in__1\(6)
    );
\read_pointer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => axis_tlast_delay_i_2_n_0,
      I3 => \^q\(4),
      I4 => \^q\(6),
      I5 => \^q\(7),
      O => \p_0_in__1\(7)
    );
\read_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(0),
      Q => \^q\(0),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(1),
      Q => \^q\(1),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(2),
      Q => \^q\(2),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(3),
      Q => \^q\(3),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(4),
      Q => \^q\(4),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(5),
      Q => \^q\(5),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(6),
      Q => \^q\(6),
      R => \stream_data_out[31]_i_1_n_0\
    );
\read_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => \p_0_in__1\(7),
      Q => \^q\(7),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m00_axis_aresetn,
      O => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => mst_exec_state(0),
      I1 => mst_exec_state(1),
      I2 => m00_axis_tready,
      O => tx_en
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(0),
      Q => m00_axis_tdata(0),
      S => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(10),
      Q => m00_axis_tdata(10),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(11),
      Q => m00_axis_tdata(11),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(12),
      Q => m00_axis_tdata(12),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(13),
      Q => m00_axis_tdata(13),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(14),
      Q => m00_axis_tdata(14),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(15),
      Q => m00_axis_tdata(15),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(16),
      Q => m00_axis_tdata(16),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(17),
      Q => m00_axis_tdata(17),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(18),
      Q => m00_axis_tdata(18),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(19),
      Q => m00_axis_tdata(19),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(1),
      Q => m00_axis_tdata(1),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(20),
      Q => m00_axis_tdata(20),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(21),
      Q => m00_axis_tdata(21),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(22),
      Q => m00_axis_tdata(22),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(23),
      Q => m00_axis_tdata(23),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(24),
      Q => m00_axis_tdata(24),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(25),
      Q => m00_axis_tdata(25),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(26),
      Q => m00_axis_tdata(26),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(27),
      Q => m00_axis_tdata(27),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(28),
      Q => m00_axis_tdata(28),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(29),
      Q => m00_axis_tdata(29),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(2),
      Q => m00_axis_tdata(2),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(30),
      Q => m00_axis_tdata(30),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(31),
      Q => m00_axis_tdata(31),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(3),
      Q => m00_axis_tdata(3),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(4),
      Q => m00_axis_tdata(4),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(5),
      Q => m00_axis_tdata(5),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(6),
      Q => m00_axis_tdata(6),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(7),
      Q => m00_axis_tdata(7),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(8),
      Q => m00_axis_tdata(8),
      R => \stream_data_out[31]_i_1_n_0\
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m00_axis_aclk,
      CE => tx_en,
      D => din(9),
      Q => m00_axis_tdata(9),
      R => \stream_data_out[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS is
  port (
    mst_exec_state_reg_0 : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \we_reg[3]_0\ : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS : entity is "Streamconverter_v1_0_S00_AXIS";
end SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS;

architecture STRUCTURE of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS is
  signal \addr_to_bram_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_to_bram_reg_n_0_[8]\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal fifo_wren : STD_LOGIC;
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^mst_exec_state_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \we[3]_i_1_n_0\ : STD_LOGIC;
  signal \we[3]_i_2_n_0\ : STD_LOGIC;
  signal \^we_reg[3]_0\ : STD_LOGIC;
  signal \write_pointer[8]_i_2_n_0\ : STD_LOGIC;
  signal write_pointer_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal writes_done_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[2]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addr[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr[4]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[5]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addr[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addr[7]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addr[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addr[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of mst_exec_state_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \we[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \we[3]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of writes_done_i_2 : label is "soft_lutpair9";
begin
  mst_exec_state_reg_0 <= \^mst_exec_state_reg_0\;
  \we_reg[3]_0\ <= \^we_reg[3]_0\;
\addr[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^we_reg[3]_0\,
      I1 => \addr_to_bram_reg_n_0_[8]\,
      O => addr(8)
    );
\addr[11]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^we_reg[3]_0\,
      O => addr(9)
    );
\addr[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[0]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(0),
      O => addr(0)
    );
\addr[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[1]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(1),
      O => addr(1)
    );
\addr[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[2]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(2),
      O => addr(2)
    );
\addr[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[3]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(3),
      O => addr(3)
    );
\addr[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[4]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(4),
      O => addr(4)
    );
\addr[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[5]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(5),
      O => addr(5)
    );
\addr[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[6]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(6),
      O => addr(6)
    );
\addr[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addr_to_bram_reg_n_0_[7]\,
      I1 => \^we_reg[3]_0\,
      I2 => Q(7),
      O => addr(7)
    );
\addr_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(0),
      Q => \addr_to_bram_reg_n_0_[0]\,
      R => clear
    );
\addr_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(1),
      Q => \addr_to_bram_reg_n_0_[1]\,
      R => clear
    );
\addr_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(2),
      Q => \addr_to_bram_reg_n_0_[2]\,
      R => clear
    );
\addr_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(3),
      Q => \addr_to_bram_reg_n_0_[3]\,
      R => clear
    );
\addr_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(4),
      Q => \addr_to_bram_reg_n_0_[4]\,
      R => clear
    );
\addr_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(5),
      Q => \addr_to_bram_reg_n_0_[5]\,
      R => clear
    );
\addr_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(6),
      Q => \addr_to_bram_reg_n_0_[6]\,
      R => clear
    );
\addr_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(7),
      Q => \addr_to_bram_reg_n_0_[7]\,
      R => clear
    );
\addr_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => write_pointer_reg(8),
      Q => \addr_to_bram_reg_n_0_[8]\,
      R => clear
    );
\data_to_bram[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axis_aresetn,
      O => clear
    );
\data_to_bram[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axis_tvalid,
      I1 => \^mst_exec_state_reg_0\,
      O => fifo_wren
    );
\data_to_bram_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(0),
      Q => dout(0),
      R => clear
    );
\data_to_bram_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(10),
      Q => dout(10),
      R => clear
    );
\data_to_bram_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(11),
      Q => dout(11),
      R => clear
    );
\data_to_bram_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(12),
      Q => dout(12),
      R => clear
    );
\data_to_bram_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(13),
      Q => dout(13),
      R => clear
    );
\data_to_bram_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(14),
      Q => dout(14),
      R => clear
    );
\data_to_bram_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(15),
      Q => dout(15),
      R => clear
    );
\data_to_bram_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(16),
      Q => dout(16),
      R => clear
    );
\data_to_bram_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(17),
      Q => dout(17),
      R => clear
    );
\data_to_bram_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(18),
      Q => dout(18),
      R => clear
    );
\data_to_bram_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(19),
      Q => dout(19),
      R => clear
    );
\data_to_bram_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(1),
      Q => dout(1),
      R => clear
    );
\data_to_bram_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(20),
      Q => dout(20),
      R => clear
    );
\data_to_bram_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(21),
      Q => dout(21),
      R => clear
    );
\data_to_bram_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(22),
      Q => dout(22),
      R => clear
    );
\data_to_bram_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(23),
      Q => dout(23),
      R => clear
    );
\data_to_bram_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(24),
      Q => dout(24),
      R => clear
    );
\data_to_bram_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(25),
      Q => dout(25),
      R => clear
    );
\data_to_bram_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(26),
      Q => dout(26),
      R => clear
    );
\data_to_bram_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(27),
      Q => dout(27),
      R => clear
    );
\data_to_bram_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(28),
      Q => dout(28),
      R => clear
    );
\data_to_bram_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(29),
      Q => dout(29),
      R => clear
    );
\data_to_bram_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(2),
      Q => dout(2),
      R => clear
    );
\data_to_bram_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(30),
      Q => dout(30),
      R => clear
    );
\data_to_bram_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(31),
      Q => dout(31),
      R => clear
    );
\data_to_bram_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(3),
      Q => dout(3),
      R => clear
    );
\data_to_bram_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(4),
      Q => dout(4),
      R => clear
    );
\data_to_bram_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(5),
      Q => dout(5),
      R => clear
    );
\data_to_bram_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(6),
      Q => dout(6),
      R => clear
    );
\data_to_bram_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(7),
      Q => dout(7),
      R => clear
    );
\data_to_bram_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(8),
      Q => dout(8),
      R => clear
    );
\data_to_bram_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => s00_axis_tdata(9),
      Q => dout(9),
      R => clear
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
\we[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \we[3]_i_2_n_0\,
      I1 => s00_axis_tvalid,
      I2 => \^mst_exec_state_reg_0\,
      I3 => s00_axis_aresetn,
      O => \we[3]_i_1_n_0\
    );
\we[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2000"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[8]_i_2_n_0\,
      I2 => write_pointer_reg(7),
      I3 => write_pointer_reg(8),
      I4 => s00_axis_tlast,
      O => \we[3]_i_2_n_0\
    );
\we_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => '1',
      D => \we[3]_i_1_n_0\,
      Q => \^we_reg[3]_0\,
      R => '0'
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => write_pointer_reg(0),
      O => p_0_in(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => write_pointer_reg(0),
      I1 => write_pointer_reg(1),
      O => p_0_in(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => write_pointer_reg(1),
      I1 => write_pointer_reg(0),
      I2 => write_pointer_reg(2),
      O => p_0_in(2)
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
      O => p_0_in(3)
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
      O => p_0_in(4)
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
      O => p_0_in(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \write_pointer[8]_i_2_n_0\,
      I1 => write_pointer_reg(6),
      O => p_0_in(6)
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => write_pointer_reg(6),
      I1 => \write_pointer[8]_i_2_n_0\,
      I2 => write_pointer_reg(7),
      O => p_0_in(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => write_pointer_reg(7),
      I1 => \write_pointer[8]_i_2_n_0\,
      I2 => write_pointer_reg(6),
      I3 => write_pointer_reg(8),
      O => p_0_in(8)
    );
\write_pointer[8]_i_2\: unisim.vcomponents.LUT6
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
      O => \write_pointer[8]_i_2_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(0),
      Q => write_pointer_reg(0),
      R => clear
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(1),
      Q => write_pointer_reg(1),
      R => clear
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(2),
      Q => write_pointer_reg(2),
      R => clear
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(3),
      Q => write_pointer_reg(3),
      R => clear
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(4),
      Q => write_pointer_reg(4),
      R => clear
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(5),
      Q => write_pointer_reg(5),
      R => clear
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(6),
      Q => write_pointer_reg(6),
      R => clear
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(7),
      Q => write_pointer_reg(7),
      R => clear
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axis_aclk,
      CE => fifo_wren,
      D => p_0_in(8),
      Q => write_pointer_reg(8),
      R => clear
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCEEE00000000"
    )
        port map (
      I0 => writes_done,
      I1 => writes_done_i_2_n_0,
      I2 => \^mst_exec_state_reg_0\,
      I3 => s00_axis_tvalid,
      I4 => s00_axis_tlast,
      I5 => s00_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => write_pointer_reg(8),
      I1 => write_pointer_reg(7),
      I2 => \write_pointer[8]_i_2_n_0\,
      I3 => write_pointer_reg(6),
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
entity SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mst_exec_state_reg : out STD_LOGIC;
    \we_reg[3]\ : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m00_axis_aclk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_aclk : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0 : entity is "Streamconverter_v1_0";
end SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0;

architecture STRUCTURE of SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0 is
  signal fifo_addr : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
Streamconverter_v1_0_M00_AXIS_inst: entity work.SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_M00_AXIS
     port map (
      Q(7 downto 0) => fifo_addr(7 downto 0),
      din(31 downto 0) => din(31 downto 0),
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid
    );
Streamconverter_v1_0_S00_AXIS_inst: entity work.SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0_S00_AXIS
     port map (
      Q(7 downto 0) => fifo_addr(7 downto 0),
      addr(9 downto 0) => addr(9 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      mst_exec_state_reg_0 => mst_exec_state_reg,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      \we_reg[3]_0\ => \we_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SOC_DMA_Streamconverter_0_2 is
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
    s00_axis_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SOC_DMA_Streamconverter_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SOC_DMA_Streamconverter_0_2 : entity is "SOC_DMA_Streamconverter_0_2,Streamconverter_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SOC_DMA_Streamconverter_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SOC_DMA_Streamconverter_0_2 : entity is "Streamconverter_v1_0,Vivado 2019.1";
end SOC_DMA_Streamconverter_0_2;

architecture STRUCTURE of SOC_DMA_Streamconverter_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^addr\ : STD_LOGIC_VECTOR ( 11 downto 2 );
  signal \^we_1\ : STD_LOGIC_VECTOR ( 3 to 3 );
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
  addr(31) <= \<const0>\;
  addr(30) <= \<const0>\;
  addr(29) <= \<const0>\;
  addr(28) <= \<const0>\;
  addr(27) <= \<const0>\;
  addr(26) <= \<const0>\;
  addr(25) <= \<const0>\;
  addr(24) <= \<const0>\;
  addr(23) <= \<const0>\;
  addr(22) <= \<const0>\;
  addr(21) <= \<const0>\;
  addr(20) <= \<const0>\;
  addr(19) <= \<const0>\;
  addr(18) <= \<const0>\;
  addr(17) <= \<const0>\;
  addr(16) <= \<const0>\;
  addr(15) <= \<const0>\;
  addr(14) <= \<const0>\;
  addr(13) <= \<const0>\;
  addr(12) <= \<const0>\;
  addr(11 downto 2) <= \^addr\(11 downto 2);
  addr(1) <= \<const0>\;
  addr(0) <= \<const0>\;
  en <= \<const1>\;
  m00_axis_tstrb(3) <= \<const1>\;
  m00_axis_tstrb(2) <= \<const1>\;
  m00_axis_tstrb(1) <= \<const1>\;
  m00_axis_tstrb(0) <= \<const1>\;
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
inst: entity work.SOC_DMA_Streamconverter_0_2_Streamconverter_v1_0
     port map (
      addr(9 downto 0) => \^addr\(11 downto 2),
      din(31 downto 0) => din(31 downto 0),
      dout(31 downto 0) => dout(31 downto 0),
      m00_axis_aclk => m00_axis_aclk,
      m00_axis_aresetn => m00_axis_aresetn,
      m00_axis_tdata(31 downto 0) => m00_axis_tdata(31 downto 0),
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tready => m00_axis_tready,
      m00_axis_tvalid => m00_axis_tvalid,
      mst_exec_state_reg => s00_axis_tready,
      s00_axis_aclk => s00_axis_aclk,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tdata(31 downto 0) => s00_axis_tdata(31 downto 0),
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tvalid => s00_axis_tvalid,
      \we_reg[3]\ => \^we_1\(3)
    );
end STRUCTURE;
