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

-- DATE "08/03/2023 14:48:45"

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

ENTITY 	exercicio1 IS
    PORT (
	z : OUT std_logic_vector(6 DOWNTO 0);
	x : IN std_logic_vector(3 DOWNTO 0)
	);
END exercicio1;

-- Design Ports Information
-- z[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[1]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[4]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z[6]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF exercicio1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_z : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_x : std_logic_vector(3 DOWNTO 0);
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \z[0]~output_o\ : std_logic;
SIGNAL \z[1]~output_o\ : std_logic;
SIGNAL \z[2]~output_o\ : std_logic;
SIGNAL \z[3]~output_o\ : std_logic;
SIGNAL \z[4]~output_o\ : std_logic;
SIGNAL \z[5]~output_o\ : std_logic;
SIGNAL \z[6]~output_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \z~1_combout\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~1_cout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~3_cout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \z~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \z~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \z~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \z~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \z~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);

BEGIN

z <= ww_z;
ww_x <= x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X4_Y18_N4
\Mult0|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = (\Mult0|auto_generated|cs1a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\Mult0|auto_generated|cs1a[1]~0_combout\ & (\Mult0|auto_generated|le3a\(2) & VCC))
-- \Mult0|auto_generated|op_1~1\ = CARRY((\Mult0|auto_generated|cs1a[1]~0_combout\ & \Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a[1]~0_combout\,
	datab => \Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X4_Y18_N6
\Mult0|auto_generated|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~2_combout\ = (\Mult0|auto_generated|le3a\(3) & (!\Mult0|auto_generated|op_1~1\)) # (!\Mult0|auto_generated|le3a\(3) & ((\Mult0|auto_generated|op_1~1\) # (GND)))
-- \Mult0|auto_generated|op_1~3\ = CARRY((!\Mult0|auto_generated|op_1~1\) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~1\,
	combout => \Mult0|auto_generated|op_1~2_combout\,
	cout => \Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X4_Y18_N8
\Mult0|auto_generated|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~4_combout\ = ((\Mult0|auto_generated|le3a\(4) $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|op_1~3\)))) # (GND)
-- \Mult0|auto_generated|op_1~5\ = CARRY((\Mult0|auto_generated|le3a\(4) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_1~3\))) # (!\Mult0|auto_generated|le3a\(4) & (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(4),
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~3\,
	combout => \Mult0|auto_generated|op_1~4_combout\,
	cout => \Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X3_Y18_N28
\Mult0|auto_generated|cs1a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs1a[1]~0_combout\ = \x[3]~input_o\ $ (((\x[2]~input_o\ & \x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X3_Y18_N10
\Mult0|auto_generated|le3a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\x[0]~input_o\ & ((\x[3]~input_o\ $ (\x[1]~input_o\)))) # (!\x[0]~input_o\ & (!\x[2]~input_o\ & ((\x[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X3_Y18_N12
\Mult0|auto_generated|le3a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\x[1]~input_o\ & ((\x[0]~input_o\) # (!\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X3_Y18_N2
\Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\x[1]~input_o\ & ((\x[2]~input_o\) # (\x[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X4_Y18_N30
\Mult0|auto_generated|le3a[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL(\x[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: IOOBUF_X34_Y9_N9
\z[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~0_combout\,
	devoe => ww_devoe,
	o => \z[0]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\z[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~1_combout\,
	devoe => ww_devoe,
	o => \z[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\z[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~2_combout\,
	devoe => ww_devoe,
	o => \z[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\z[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~3_combout\,
	devoe => ww_devoe,
	o => \z[3]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\z[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~4_combout\,
	devoe => ww_devoe,
	o => \z[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\z[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~5_combout\,
	devoe => ww_devoe,
	o => \z[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\z[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \z~6_combout\,
	devoe => ww_devoe,
	o => \z[6]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: LCCOMB_X3_Y18_N24
\z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~0_combout\ = (\x[0]~input_o\ & ((\x[2]~input_o\) # (\x[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[0]~input_o\,
	combout => \z~0_combout\);

-- Location: LCCOMB_X3_Y18_N18
\z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~1_combout\ = (!\x[2]~input_o\ & (!\x[3]~input_o\ & \x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[0]~input_o\,
	combout => \z~1_combout\);

-- Location: IOIBUF_X0_Y18_N22
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: LCCOMB_X3_Y18_N6
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\x[3]~input_o\) # ((\x[2]~input_o\ & ((\x[1]~input_o\) # (\x[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X4_Y18_N0
\Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL(\x[3]~input_o\ $ (((\x[2]~input_o\ & ((\x[1]~input_o\) # (\x[0]~input_o\))) # (!\x[2]~input_o\ & (\x[1]~input_o\ & \x[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X3_Y18_N30
\Mult0|auto_generated|le3a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\x[1]~input_o\ & !\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X3_Y18_N0
\Mult0|auto_generated|le3a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL(\x[1]~input_o\ $ (\x[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X4_Y18_N14
\Mult0|auto_generated|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~1_cout\ = CARRY((\x[1]~input_o\ & \Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \Mult0|auto_generated|le3a\(0),
	datad => VCC,
	cout => \Mult0|auto_generated|op_3~1_cout\);

-- Location: LCCOMB_X4_Y18_N16
\Mult0|auto_generated|op_3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~3_cout\ = CARRY((!\Mult0|auto_generated|op_3~1_cout\) # (!\Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~1_cout\,
	cout => \Mult0|auto_generated|op_3~3_cout\);

-- Location: LCCOMB_X4_Y18_N18
\Mult0|auto_generated|op_3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~4_combout\ = ((\Mult0|auto_generated|op_1~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\Mult0|auto_generated|op_3~3_cout\)))) # (GND)
-- \Mult0|auto_generated|op_3~5\ = CARRY((\Mult0|auto_generated|op_1~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\Mult0|auto_generated|op_3~3_cout\))) # (!\Mult0|auto_generated|op_1~0_combout\ & (\Mult0|auto_generated|le4a\(0) & 
-- !\Mult0|auto_generated|op_3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~3_cout\,
	combout => \Mult0|auto_generated|op_3~4_combout\,
	cout => \Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X3_Y18_N8
\z~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~2_combout\ = (\LessThan0~0_combout\ & (\Mult0|auto_generated|op_3~4_combout\)) # (!\LessThan0~0_combout\ & ((\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datac => \Mult0|auto_generated|op_3~4_combout\,
	datad => \x[1]~input_o\,
	combout => \z~2_combout\);

-- Location: LCCOMB_X4_Y18_N2
\Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\x[3]~input_o\ & (!\x[1]~input_o\ & ((\x[2]~input_o\) # (!\x[0]~input_o\)))) # (!\x[3]~input_o\ & (\x[1]~input_o\ & ((!\x[0]~input_o\) # (!\x[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X4_Y18_N20
\Mult0|auto_generated|op_3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~6_combout\ = (\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\Mult0|auto_generated|op_3~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)))) # 
-- (!\Mult0|auto_generated|op_1~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|op_3~5\) # (GND)))))
-- \Mult0|auto_generated|op_3~7\ = CARRY((\Mult0|auto_generated|op_1~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|op_3~5\)) # (!\Mult0|auto_generated|op_1~2_combout\ & ((!\Mult0|auto_generated|op_3~5\) # 
-- (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~5\,
	combout => \Mult0|auto_generated|op_3~6_combout\,
	cout => \Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X3_Y18_N26
\z~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~3_combout\ = (\LessThan0~0_combout\ & ((\Mult0|auto_generated|op_3~6_combout\))) # (!\LessThan0~0_combout\ & (\x[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datac => \Mult0|auto_generated|op_3~6_combout\,
	datad => \LessThan0~0_combout\,
	combout => \z~3_combout\);

-- Location: LCCOMB_X4_Y18_N28
\Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\x[0]~input_o\ & ((\x[3]~input_o\) # ((\x[2]~input_o\ & \x[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X4_Y18_N22
\Mult0|auto_generated|op_3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~8_combout\ = ((\Mult0|auto_generated|op_1~4_combout\ $ (\Mult0|auto_generated|le5a\(0) $ (!\Mult0|auto_generated|op_3~7\)))) # (GND)
-- \Mult0|auto_generated|op_3~9\ = CARRY((\Mult0|auto_generated|op_1~4_combout\ & ((\Mult0|auto_generated|le5a\(0)) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|op_1~4_combout\ & (\Mult0|auto_generated|le5a\(0) & 
-- !\Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~4_combout\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~7\,
	combout => \Mult0|auto_generated|op_3~8_combout\,
	cout => \Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X10_Y7_N24
\z~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~4_combout\ = (\LessThan0~0_combout\ & \Mult0|auto_generated|op_3~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \Mult0|auto_generated|op_3~8_combout\,
	combout => \z~4_combout\);

-- Location: LCCOMB_X3_Y18_N16
\Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((!\x[2]~input_o\ & (\x[3]~input_o\ & !\x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X3_Y18_N22
\Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\x[2]~input_o\ & (!\x[3]~input_o\ & !\x[1]~input_o\)) # (!\x[2]~input_o\ & (\x[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X3_Y18_N4
\Mult0|auto_generated|le3a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\x[0]~input_o\ & (\x[2]~input_o\ $ (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[1]~input_o\,
	datad => \x[0]~input_o\,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X4_Y18_N10
\Mult0|auto_generated|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~6_combout\ = (\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|op_1~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)))) # (!\Mult0|auto_generated|le5a\(1) 
-- & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le4a\(3) & ((\Mult0|auto_generated|op_1~5\) # (GND)))))
-- \Mult0|auto_generated|op_1~7\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_1~5\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_1~5\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|op_1~5\,
	combout => \Mult0|auto_generated|op_1~6_combout\,
	cout => \Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X4_Y18_N24
\Mult0|auto_generated|op_3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = (\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_1~6_combout\ & (\Mult0|auto_generated|op_3~9\ & VCC)) # (!\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)))) # 
-- (!\Mult0|auto_generated|le3a\(5) & ((\Mult0|auto_generated|op_1~6_combout\ & (!\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|op_1~6_combout\ & ((\Mult0|auto_generated|op_3~9\) # (GND)))))
-- \Mult0|auto_generated|op_3~11\ = CARRY((\Mult0|auto_generated|le3a\(5) & (!\Mult0|auto_generated|op_1~6_combout\ & !\Mult0|auto_generated|op_3~9\)) # (!\Mult0|auto_generated|le3a\(5) & ((!\Mult0|auto_generated|op_3~9\) # 
-- (!\Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datab => \Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|op_3~9\,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout => \Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X10_Y7_N2
\z~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~5_combout\ = (\LessThan0~0_combout\ & \Mult0|auto_generated|op_3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datad => \Mult0|auto_generated|op_3~10_combout\,
	combout => \z~5_combout\);

-- Location: LCCOMB_X3_Y18_N20
\Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\x[2]~input_o\ & (\x[3]~input_o\ $ (\x[1]~input_o\))) # (!\x[2]~input_o\ & (\x[3]~input_o\ & \x[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X3_Y18_N14
\Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\x[2]~input_o\ & ((\x[3]~input_o\) # (\x[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datad => \x[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X4_Y18_N12
\Mult0|auto_generated|op_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_1~8_combout\ = \Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|op_1~7\ $ (!\Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le4a\(4),
	datad => \Mult0|auto_generated|le5a\(2),
	cin => \Mult0|auto_generated|op_1~7\,
	combout => \Mult0|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X4_Y18_N26
\Mult0|auto_generated|op_3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|op_3~12_combout\ = \Mult0|auto_generated|le3a\(5) $ (\Mult0|auto_generated|op_3~11\ $ (!\Mult0|auto_generated|op_1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	datad => \Mult0|auto_generated|op_1~8_combout\,
	cin => \Mult0|auto_generated|op_3~11\,
	combout => \Mult0|auto_generated|op_3~12_combout\);

-- Location: LCCOMB_X10_Y7_N20
\z~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \z~6_combout\ = (\LessThan0~0_combout\ & \Mult0|auto_generated|op_3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \Mult0|auto_generated|op_3~12_combout\,
	combout => \z~6_combout\);

ww_z(0) <= \z[0]~output_o\;

ww_z(1) <= \z[1]~output_o\;

ww_z(2) <= \z[2]~output_o\;

ww_z(3) <= \z[3]~output_o\;

ww_z(4) <= \z[4]~output_o\;

ww_z(5) <= \z[5]~output_o\;

ww_z(6) <= \z[6]~output_o\;
END structure;


