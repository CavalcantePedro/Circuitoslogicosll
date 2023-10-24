transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Comparador\ 4\ bits {C:/Users/Pedro_vrtm/Desktop/Comparador 4 bits/Comparador_4_bits.sv}

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Comparador\ 4\ bits/Testbenches {C:/Users/Pedro_vrtm/Desktop/Comparador 4 bits/Testbenches/Comparador_4_bits_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" Comparador_4_bits_tb

add wave *
view structure
view signals
run -all
