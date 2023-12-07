// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:VCU_bd:1.0
// IP Revision: 1

(* X_CORE_INFO = "VCU_bd,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "SOC_DMA_VCU_bd_0_0,VCU_bd,{}" *)
(* CORE_GENERATION_INFO = "SOC_DMA_VCU_bd_0_0,VCU_bd,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=VCU_bd,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,matSize=16,NoOfElem=16,wordSize=32,words=16,memDepth=30}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module SOC_DMA_VCU_bd_0_0 (
  clk,
  RESET,
  memWRTDone,
  BRAMdataIn,
  BRAMDataOut,
  BRAMaddrByte,
  BRAMWREN,
  BRAMENMEM,
  done
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET RESET, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN SOC_DMA_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RESET RST" *)
input wire RESET;
input wire memWRTDone;
input wire [31 : 0] BRAMdataIn;
output wire [31 : 0] BRAMDataOut;
output wire [31 : 0] BRAMaddrByte;
output wire [3 : 0] BRAMWREN;
output wire BRAMENMEM;
output wire done;

  VCU_bd #(
    .matSize(16),
    .NoOfElem(16),
    .wordSize(32),
    .words(16),
    .memDepth(30)
  ) inst (
    .clk(clk),
    .RESET(RESET),
    .memWRTDone(memWRTDone),
    .BRAMdataIn(BRAMdataIn),
    .BRAMDataOut(BRAMDataOut),
    .BRAMaddrByte(BRAMaddrByte),
    .BRAMWREN(BRAMWREN),
    .BRAMENMEM(BRAMENMEM),
    .done(done)
  );
endmodule
