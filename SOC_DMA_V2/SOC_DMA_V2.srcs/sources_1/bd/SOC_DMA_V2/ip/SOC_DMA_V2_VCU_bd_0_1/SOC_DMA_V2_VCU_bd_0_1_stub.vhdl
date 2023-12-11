-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Mon Dec 11 10:06:01 2023
-- Host        : DESKTOP-V221TGG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {D:/Study Materials/Sem
--               7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_VCU_bd_0_1/SOC_DMA_V2_VCU_bd_0_1_stub.vhdl}
-- Design      : SOC_DMA_V2_VCU_bd_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SOC_DMA_V2_VCU_bd_0_1 is
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

end SOC_DMA_V2_VCU_bd_0_1;

architecture stub of SOC_DMA_V2_VCU_bd_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,RESET,memWRTDone,BRAMdataIn[31:0],BRAMDataOut[31:0],BRAMaddrByte[31:0],BRAMWREN[3:0],BRAMENMEM,done";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "VCU_bd,Vivado 2019.1";
begin
end;
