transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/contador_8bits {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/contador_8bits/contador_8bits.sv}

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/contador_8bits/Testsbenches {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/contador_8bits/Testsbenches/contador_8bits_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" contador_8bits_tb

add wave *
view structure
view signals
run -all
