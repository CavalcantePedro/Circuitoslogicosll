-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Web Edition"

-- DATE "10/17/2023 09:52:56"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Contador_bits_1 IS
    PORT (
	entrada : IN std_logic_vector(7 DOWNTO 0);
	saida_quant_um : OUT std_logic_vector(3 DOWNTO 0)
	);
END Contador_bits_1;

-- Design Ports Information
-- saida_quant_um[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_quant_um[1]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_quant_um[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_quant_um[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF Contador_bits_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_saida_quant_um : std_logic_vector(3 DOWNTO 0);
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \saida_quant_um[0]~output_o\ : std_logic;
SIGNAL \saida_quant_um[1]~output_o\ : std_logic;
SIGNAL \saida_quant_um[2]~output_o\ : std_logic;
SIGNAL \saida_quant_um[3]~output_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \saida_quant_um~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \saida_quant_um~1_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \saida_quant_um~2_combout\ : std_logic;

BEGIN

ww_entrada <= entrada;
saida_quant_um <= ww_saida_quant_um;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X34_Y9_N22
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: IOOBUF_X0_Y9_N9
\saida_quant_um[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~0_combout\,
	devoe => ww_devoe,
	o => \saida_quant_um[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\saida_quant_um[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~1_combout\,
	devoe => ww_devoe,
	o => \saida_quant_um[1]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\saida_quant_um[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~2_combout\,
	devoe => ww_devoe,
	o => \saida_quant_um[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\saida_quant_um[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_quant_um~2_combout\,
	devoe => ww_devoe,
	o => \saida_quant_um[3]~output_o\);

-- Location: IOIBUF_X34_Y10_N8
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X0_Y18_N15
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: IOIBUF_X34_Y18_N1
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X32_Y9_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \entrada[3]~input_o\ $ (\entrada[1]~input_o\ $ (\entrada[2]~input_o\ $ (\entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[1]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Add2~0_combout\);

-- Location: IOIBUF_X34_Y7_N8
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X32_Y9_N18
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \entrada[4]~input_o\ $ (\Add2~0_combout\ $ (\entrada[5]~input_o\ $ (\entrada[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[4]~input_o\,
	datab => \Add2~0_combout\,
	datac => \entrada[5]~input_o\,
	datad => \entrada[6]~input_o\,
	combout => \Add5~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: LCCOMB_X32_Y9_N4
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = \Add5~0_combout\ $ (\entrada[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datac => \entrada[7]~input_o\,
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X32_Y9_N26
\saida_quant_um~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_quant_um~0_combout\ = (\entrada[6]~input_o\ & (\entrada[4]~input_o\ $ (\Add2~0_combout\ $ (\entrada[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[4]~input_o\,
	datab => \Add2~0_combout\,
	datac => \entrada[5]~input_o\,
	datad => \entrada[6]~input_o\,
	combout => \saida_quant_um~0_combout\);

-- Location: LCCOMB_X32_Y9_N30
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = (\entrada[3]~input_o\ & ((\entrada[1]~input_o\ & ((!\entrada[0]~input_o\) # (!\entrada[2]~input_o\))) # (!\entrada[1]~input_o\ & ((\entrada[2]~input_o\) # (\entrada[0]~input_o\))))) # (!\entrada[3]~input_o\ & ((\entrada[1]~input_o\ & 
-- ((\entrada[2]~input_o\) # (\entrada[0]~input_o\))) # (!\entrada[1]~input_o\ & (\entrada[2]~input_o\ & \entrada[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[1]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Add2~1_combout\);

-- Location: IOIBUF_X34_Y9_N1
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: LCCOMB_X32_Y9_N24
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Add2~1_combout\ $ (((\entrada[5]~input_o\ & ((\Add2~0_combout\) # (\entrada[4]~input_o\))) # (!\entrada[5]~input_o\ & (\Add2~0_combout\ & \entrada[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \Add2~0_combout\,
	datac => \Add2~1_combout\,
	datad => \entrada[4]~input_o\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X32_Y9_N28
\Add6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = \saida_quant_um~0_combout\ $ (\Add4~0_combout\ $ (((\entrada[7]~input_o\ & \Add5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \saida_quant_um~0_combout\,
	datab => \Add4~0_combout\,
	datac => \entrada[7]~input_o\,
	datad => \Add5~0_combout\,
	combout => \Add6~1_combout\);

-- Location: LCCOMB_X32_Y9_N16
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\entrada[3]~input_o\ & (\entrada[1]~input_o\ & (\entrada[2]~input_o\ & \entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[3]~input_o\,
	datab => \entrada[1]~input_o\,
	datac => \entrada[2]~input_o\,
	datad => \entrada[0]~input_o\,
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X32_Y9_N2
\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = (\Add2~1_combout\ & ((\entrada[5]~input_o\ & ((\Add2~0_combout\) # (\entrada[4]~input_o\))) # (!\entrada[5]~input_o\ & (\Add2~0_combout\ & \entrada[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada[5]~input_o\,
	datab => \Add2~0_combout\,
	datac => \Add2~1_combout\,
	datad => \entrada[4]~input_o\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X32_Y9_N12
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = \Add2~2_combout\ $ (\Add4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X32_Y9_N6
\saida_quant_um~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_quant_um~1_combout\ = (\Add5~0_combout\ & \entrada[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add5~0_combout\,
	datac => \entrada[7]~input_o\,
	combout => \saida_quant_um~1_combout\);

-- Location: LCCOMB_X32_Y9_N22
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = \Add4~2_combout\ $ (((\Add4~0_combout\ & ((\saida_quant_um~0_combout\) # (\saida_quant_um~1_combout\))) # (!\Add4~0_combout\ & (\saida_quant_um~0_combout\ & \saida_quant_um~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add4~0_combout\,
	datac => \saida_quant_um~0_combout\,
	datad => \saida_quant_um~1_combout\,
	combout => \Add6~2_combout\);

-- Location: LCCOMB_X32_Y9_N8
\saida_quant_um~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_quant_um~2_combout\ = (\Add4~2_combout\ & ((\Add4~0_combout\ & ((\saida_quant_um~0_combout\) # (\saida_quant_um~1_combout\))) # (!\Add4~0_combout\ & (\saida_quant_um~0_combout\ & \saida_quant_um~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add4~0_combout\,
	datac => \saida_quant_um~0_combout\,
	datad => \saida_quant_um~1_combout\,
	combout => \saida_quant_um~2_combout\);

ww_saida_quant_um(0) <= \saida_quant_um[0]~output_o\;

ww_saida_quant_um(1) <= \saida_quant_um[1]~output_o\;

ww_saida_quant_um(2) <= \saida_quant_um[2]~output_o\;

ww_saida_quant_um(3) <= \saida_quant_um[3]~output_o\;
END structure;


