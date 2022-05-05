transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/DE10_Standard\ Demos\ (reference)/DE10_Standard_i2sound_modulationTest/filters {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/DE10_Standard Demos (reference)/DE10_Standard_i2sound_modulationTest/filters/highpass_24_ver.v}

vlog -sv -work work +incdir+C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/DE10_Standard\ Demos\ (reference)/DE10_Standard_i2sound_modulationTest/filters {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/DE10_Standard Demos (reference)/DE10_Standard_i2sound_modulationTest/filters/highpass_24_ver_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  highpass_24_ver_tb

add wave *
view structure
view signals
run -all
