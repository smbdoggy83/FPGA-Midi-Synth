transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/synth-final/parallel2serial.vhd}

vcom -93 -work work {C:/Users/Seth/Documents/GitHub/FPGA-Midi-Synth/FPGA-Midi-Synth/src/synth-final/tb_par2ser.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_par2ser

add wave *
view structure
view signals
run -all
