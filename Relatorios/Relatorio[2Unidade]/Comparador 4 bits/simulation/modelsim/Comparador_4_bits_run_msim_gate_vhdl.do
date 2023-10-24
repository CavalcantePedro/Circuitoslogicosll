transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Comparador_4_bits_6_1200mv_85c_slow.vho}

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Comparador\ 4\ bits/Testbenches {C:/Users/Pedro_vrtm/Desktop/Comparador 4 bits/Testbenches/Comparador_4_bits_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=Comparador_4_bits_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc" Comparador_4_bits_tb

add wave *
view structure
view signals
run -all
