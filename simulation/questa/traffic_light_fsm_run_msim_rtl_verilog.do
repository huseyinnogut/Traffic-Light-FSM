transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/husey/Desktop/FPGA/Projects/Traffic-Light-FSM {C:/Users/husey/Desktop/FPGA/Projects/Traffic-Light-FSM/traffic_light_fsm.sv}

