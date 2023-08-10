transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {decoder_min_1200mv_0c_fast.vho}

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder/Testbenches {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder/Testbenches/decoder_tb.sv}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /dut=decoder_min_1200mv_0c_vhd_fast.sdo -L altera -L cycloneive -L gate_work -L work -voptargs="+acc" decoder_tb

add wave *
view structure
view signals
run -all
