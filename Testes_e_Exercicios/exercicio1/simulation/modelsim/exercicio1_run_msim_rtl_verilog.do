transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/exercicio1 {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/exercicio1/exercicio1.sv}

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/exercicio1/Testbenches {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/exercicio1/Testbenches/exercicio1_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" exercicio1_tb

add wave *
view structure
view signals
run -all