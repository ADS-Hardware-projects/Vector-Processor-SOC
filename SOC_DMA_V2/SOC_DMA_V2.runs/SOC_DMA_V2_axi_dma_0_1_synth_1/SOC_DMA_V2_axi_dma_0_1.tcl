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
set_param project.vivado.isBlockSynthRun true
set_msg_config -msgmgr_mode ooc_run
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
read_ip -quiet {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1.xci}}
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_clocks.xdc}}]
set_property used_in_implementation false [get_files -all {{d:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

set cached_ip [config_ip_cache -export -no_bom  -dir {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1} -new_name SOC_DMA_V2_axi_dma_0_1 -ip [get_ips SOC_DMA_V2_axi_dma_0_1]]

if { $cached_ip eq {} } {
close [open __synthesis_is_running__ w]

synth_design -top SOC_DMA_V2_axi_dma_0_1 -part xc7z020clg484-1 -mode out_of_context

#---------------------------------------------------------
# Generate Checkpoint/Stub/Simulation Files For IP Cache
#---------------------------------------------------------
# disable binary constraint mode for IPCache checkpoints
set_param constraints.enableBinaryConstraints false

catch {
 write_checkpoint -force -noxdef -rename_prefix SOC_DMA_V2_axi_dma_0_1_ SOC_DMA_V2_axi_dma_0_1.dcp

 set ipCachedFiles {}
 write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_axi_dma_0_1_stub.v
 lappend ipCachedFiles SOC_DMA_V2_axi_dma_0_1_stub.v

 write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_axi_dma_0_1_stub.vhdl
 lappend ipCachedFiles SOC_DMA_V2_axi_dma_0_1_stub.vhdl

 write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_axi_dma_0_1_sim_netlist.v
 lappend ipCachedFiles SOC_DMA_V2_axi_dma_0_1_sim_netlist.v

 write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SOC_DMA_V2_axi_dma_0_1_sim_netlist.vhdl
 lappend ipCachedFiles SOC_DMA_V2_axi_dma_0_1_sim_netlist.vhdl
set TIME_taken [expr [clock seconds] - $TIME_start]

 config_ip_cache -add -dcp SOC_DMA_V2_axi_dma_0_1.dcp -move_files $ipCachedFiles -use_project_ipc  -synth_runtime $TIME_taken  -ip [get_ips SOC_DMA_V2_axi_dma_0_1]
}

rename_ref -prefix_all SOC_DMA_V2_axi_dma_0_1_

# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef SOC_DMA_V2_axi_dma_0_1.dcp
create_report "SOC_DMA_V2_axi_dma_0_1_synth_1_synth_report_utilization_0" "report_utilization -file SOC_DMA_V2_axi_dma_0_1_utilization_synth.rpt -pb SOC_DMA_V2_axi_dma_0_1_utilization_synth.pb"

if { [catch {
  file copy -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1.dcp} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  write_verilog -force -mode synth_stub {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}


} else {


if { [catch {
  file copy -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1.dcp} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1.dcp}
} _RESULT ] } { 
  send_msg_id runtcl-3 error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}

if { [catch {
  file rename -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1_stub.v} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1_stub.vhdl} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.v} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.v}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  file rename -force {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.runs/SOC_DMA_V2_axi_dma_0_1_synth_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.vhdl} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_sim_netlist.vhdl}
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

}; # end if cached_ip 

if {[file isdir {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.ip_user_files/ip/SOC_DMA_V2_axi_dma_0_1}]} {
  catch { 
    file copy -force {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.v}} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.ip_user_files/ip/SOC_DMA_V2_axi_dma_0_1}
  }
}

if {[file isdir {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.ip_user_files/ip/SOC_DMA_V2_axi_dma_0_1}]} {
  catch { 
    file copy -force {{D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.srcs/sources_1/bd/SOC_DMA_V2/ip/SOC_DMA_V2_axi_dma_0_1/SOC_DMA_V2_axi_dma_0_1_stub.vhdl}} {D:/Study Materials/Sem 7/ADS/Vector-Processor-SOC/SOC_DMA_V2/SOC_DMA_V2.ip_user_files/ip/SOC_DMA_V2_axi_dma_0_1}
  }
}
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
