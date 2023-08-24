transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/lista1a {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/lista1a/lista1a.sv}

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/lista1a/Testbenches {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/lista1a/Testbenches/lista1a_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" lista1a_tb

add wave *
view structure
view signals
run -all
