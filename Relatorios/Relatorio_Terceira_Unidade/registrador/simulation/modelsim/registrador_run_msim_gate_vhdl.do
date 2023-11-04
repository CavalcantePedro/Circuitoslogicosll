transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {registrador_6_1200mv_85c_slow.vho}

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/registrador/Testsbenches {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/registrador/Testsbenches/registrador_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=registrador_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc" registrador_tb

add wave *
view structure
view signals
run -all
