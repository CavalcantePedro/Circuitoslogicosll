transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Contador_bits_1 {C:/Users/Pedro_vrtm/Desktop/Contador_bits_1/Contador_bits_1.sv}

vlog -sv -work work +incdir+C:/Users/Pedro_vrtm/Desktop/Contador_bits_1/Testsbenches {C:/Users/Pedro_vrtm/Desktop/Contador_bits_1/Testsbenches/Contador_bits_1_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" Contador_bits_1_tb

add wave *
view structure
view signals
run -all
