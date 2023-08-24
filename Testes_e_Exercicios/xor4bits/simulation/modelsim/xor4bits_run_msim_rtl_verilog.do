transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/xor4bits {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/xor4bits/xor4bits.sv}

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/xor4bits/Testbenches {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/xor4bits/Testbenches/xor4bits_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" xor4bits_tb

add wave *
view structure
view signals
run -all
