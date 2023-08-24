transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder/decoder.sv}

vlog -sv -work work +incdir+C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder/Testbenches {C:/Users/pedroCavalcante/Documents/CircuitosLogicosll/decoder/Testbenches/decoder_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc" decoder_tb

add wave *
view structure
view signals
run -all
