transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Documentos/CircuitosLogicosll/Lista\ 1/Ex3 {D:/Documentos/CircuitosLogicosll/Lista 1/Ex3/Ex3.sv}

vlog -sv -work work +incdir+D:/Documentos/CircuitosLogicosll/Lista\ 1/Ex3/Testbenches {D:/Documentos/CircuitosLogicosll/Lista 1/Ex3/Testbenches/Ex3_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" Ex3_tb

add wave *
view structure
view signals
run -all
