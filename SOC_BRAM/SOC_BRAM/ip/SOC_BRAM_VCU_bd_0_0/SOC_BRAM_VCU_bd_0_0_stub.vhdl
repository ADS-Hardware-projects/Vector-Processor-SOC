-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Dec  2 20:52:28 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {D:/Study Materials/Sem
--               7/ADS/Vector-Processor-SOC/SOC_BRAM/SOC_BRAM/ip/SOC_BRAM_VCU_bd_0_0/SOC_BRAM_VCU_bd_0_0_stub.vhdl}
-- Design      : SOC_BRAM_VCU_bd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SOC_BRAM_VCU_bd_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    RESET : in STD_LOGIC;
    memWRTDone : in STD_LOGIC;
    BRAMdataIn : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMDataOut : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMaddrByte : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAMWREN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    BRAMENMEM : out STD_LOGIC;
    done : out STD_LOGIC
  );

end SOC_BRAM_VCU_bd_0_0;

architecture stub of SOC_BRAM_VCU_bd_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,RESET,memWRTDone,BRAMdataIn[31:0],BRAMDataOut[31:0],BRAMaddrByte[31:0],BRAMWREN[3:0],BRAMENMEM,done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VCU_bd,Vivado 2019.1";
begin
end;
