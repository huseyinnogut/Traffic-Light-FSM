onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /traffic_light_fsm_tb/dut/timer
add wave -noupdate /traffic_light_fsm_tb/dut/TAORB
add wave -noupdate /traffic_light_fsm_tb/dut/state
add wave -noupdate /traffic_light_fsm_tb/dut/reset_timer
add wave -noupdate /traffic_light_fsm_tb/dut/reset
add wave -noupdate /traffic_light_fsm_tb/dut/nextstate
add wave -noupdate /traffic_light_fsm_tb/dut/LB
add wave -noupdate /traffic_light_fsm_tb/dut/LA
add wave -noupdate /traffic_light_fsm_tb/dut/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 218
configure wave -valuecolwidth 83
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {427248 ps}
