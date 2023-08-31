transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/Documentos/CircuitosLogicosll/Lista\ 1/Ex5 {D:/Documentos/CircuitosLogicosll/Lista 1/Ex5/Ex5.sv}

vlog -sv -work work +incdir+D:/Documentos/CircuitosLogicosll/Lista\ 1/Ex5/Testbenches {D:/Documentos/CircuitosLogicosll/Lista 1/Ex5/Testbenches/Ex5_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" Ex5_tb

add wave *
view structure
view signals
run -all
