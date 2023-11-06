transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/Maquina_de_estados/contador_sequencia_0_1_2_3_10_13 {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/Maquina_de_estados/contador_sequencia_0_1_2_3_10_13/contador_sequencia_0_1_2_3_10_13.sv}

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/Maquina_de_estados/contador_sequencia_0_1_2_3_10_13/Testsbenches {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/Maquina_de_estados/contador_sequencia_0_1_2_3_10_13/Testsbenches/contador_sequencia_0_1_2_3_10_13_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" contador_sequencia_0_1_2_3_10_13_tb

add wave *
view structure
view signals
run -all
