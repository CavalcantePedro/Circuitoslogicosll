transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop/flipflop.sv}

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop/Testsbences {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop/Testsbences/flipflop_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" flipflop_tb

add wave *
view structure
view signals
run -all
