# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param chipscope.maxJobs 2
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.cache/wt} [current_project]
set_property parent.project_path {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:zedboard:part0:1.1 [current_project]
set_property ip_repo_paths {
  {d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/ip_repo/LITE_IP_CON_1.0}
  {d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/ip_repo/S2MMV2_1.0}
} [current_project]
update_ip_catalog
set_property ip_output_repo {d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/hdl/SOC_DMA_V2_wrapper.v}}
add_files {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/SOC_DMA_V2.bd}}
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_processing_system7_0_0/SOC_DMA_V2_processing_system7_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_rst_ps7_0_100M_0/SOC_DMA_V2_rst_ps7_0_100M_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_rst_ps7_0_100M_0/SOC_DMA_V2_rst_ps7_0_100M_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_rst_ps7_0_100M_0/SOC_DMA_V2_rst_ps7_0_100M_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_1/bd_fa84_psr_aclk_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_1/bd_fa84_psr_aclk_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_2/bd_fa84_arsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_3/bd_fa84_rsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_4/bd_fa84_awsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_5/bd_fa84_wsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_6/bd_fa84_bsw_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_10/bd_fa84_s00a2s_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_11/bd_fa84_sarn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_12/bd_fa84_srn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_16/bd_fa84_s01a2s_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_17/bd_fa84_sawn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_18/bd_fa84_swn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_19/bd_fa84_sbn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_20/bd_fa84_m00s2a_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_21/bd_fa84_m00arn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_22/bd_fa84_m00rn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_23/bd_fa84_m00awn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_24/bd_fa84_m00wn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_smc_0/bd_0/ip/ip_25/bd_fa84_m00bn_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_xbar_0/SOC_DMA_V2_xbar_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_blk_mem_gen_0_0/SOC_DMA_V2_blk_mem_gen_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_0_0/SOC_DMA_V2_axi_gpio_0_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_0_0/SOC_DMA_V2_axi_gpio_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_0_0/SOC_DMA_V2_axi_gpio_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_1_0/SOC_DMA_V2_axi_gpio_1_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_1_0/SOC_DMA_V2_axi_gpio_1_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_1_0/SOC_DMA_V2_axi_gpio_1_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_2_0/SOC_DMA_V2_axi_gpio_2_0_board.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_2_0/SOC_DMA_V2_axi_gpio_2_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_gpio_2_0/SOC_DMA_V2_axi_gpio_2_0.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_clocks.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_auto_pc_0/SOC_DMA_V2_auto_pc_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/SOC_DMA_V2_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/Zedboard-Master.xdc}}
set_property used_in_implementation false [get_files {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/Zedboard-Master.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top SOC_DMA_V2_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef SOC_DMA_V2_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file SOC_DMA_V2_wrapper_utilization_synth.rpt -pb SOC_DMA_V2_wrapper_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
