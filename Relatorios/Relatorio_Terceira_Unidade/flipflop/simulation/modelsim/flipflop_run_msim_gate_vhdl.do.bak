transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {flipflop_6_1200mv_85c_slow.vho}

vlog -sv -work work +incdir+Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop/Testsbences {Z:/Circuitoslogicosll/Relatorios/Relatorio_Terceira_Unidade/flipflop/Testsbences/flipflop_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=flipflop_6_1200mv_85c_vhd_slow.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc" flipflop_tb

add wave *
view structure
view signals
run -all
