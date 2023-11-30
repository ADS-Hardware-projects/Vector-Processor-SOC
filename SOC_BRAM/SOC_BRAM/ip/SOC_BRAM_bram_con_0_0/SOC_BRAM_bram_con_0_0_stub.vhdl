-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Tue Nov 28 12:29:40 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/Study Materials/Sem
--               7/ADS/Vector-Processor-SOC/SOC_BRAM/SOC_BRAM/ip/SOC_BRAM_bram_con_0_0/SOC_BRAM_bram_con_0_0_stub.vhdl}
-- Design      : SOC_BRAM_bram_con_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SOC_BRAM_bram_con_0_0 is
  Port ( 
    addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    en : out STD_LOGIC;
    clk_b : out STD_LOGIC;
    clk : in STD_LOGIC
  );

end SOC_BRAM_bram_con_0_0;

architecture stub of SOC_BRAM_bram_con_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "addr[31:0],dout[31:0],din[31:0],we[3:0],en,clk_b,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bram_con,Vivado 2019.1";
begin
end;
