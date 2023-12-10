# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NoOfElem" -parent ${Page_0}
  ipgui::add_param $IPINST -name "memDepthC" -parent ${Page_0}
  ipgui::add_param $IPINST -name "wordSize" -parent ${Page_0}


}

proc update_PARAM_VALUE.NoOfElem { PARAM_VALUE.NoOfElem } {
	# Procedure called to update NoOfElem when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NoOfElem { PARAM_VALUE.NoOfElem } {
	# Procedure called to validate NoOfElem
	return true
}

proc update_PARAM_VALUE.memDepthC { PARAM_VALUE.memDepthC } {
	# Procedure called to update memDepthC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.memDepthC { PARAM_VALUE.memDepthC } {
	# Procedure called to validate memDepthC
	return true
}

proc update_PARAM_VALUE.wordSize { PARAM_VALUE.wordSize } {
	# Procedure called to update wordSize when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.wordSize { PARAM_VALUE.wordSize } {
	# Procedure called to validate wordSize
	return true
}


proc update_MODELPARAM_VALUE.NoOfElem { MODELPARAM_VALUE.NoOfElem PARAM_VALUE.NoOfElem } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NoOfElem}] ${MODELPARAM_VALUE.NoOfElem}
}

proc update_MODELPARAM_VALUE.wordSize { MODELPARAM_VALUE.wordSize PARAM_VALUE.wordSize } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.wordSize}] ${MODELPARAM_VALUE.wordSize}
}

proc update_MODELPARAM_VALUE.memDepthC { MODELPARAM_VALUE.memDepthC PARAM_VALUE.memDepthC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.memDepthC}] ${MODELPARAM_VALUE.memDepthC}
}

