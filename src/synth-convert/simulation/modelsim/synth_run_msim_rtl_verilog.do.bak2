transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/synth-convert {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/synth-convert/MidiByteReader_verilog.v}

vcom -93 -work work {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/synth-convert/MidiByteReader_verilog_tb.vhd}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  MidiByteReader_verilog_tb

add wave *
view structure
view signals
run -all
