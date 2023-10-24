transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Contador_bits_1_6_1200mv_85c_slow.vho}

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Contador_bits_1/Testsbenches {C:/Users/Pedro_vrtm/Desktop/Contador_bits_1/Testsbenches/Contador_bits_1_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=Contador_bits_1_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc" Contador_bits_1_tb

add wave *
view structure
view signals
run -all
