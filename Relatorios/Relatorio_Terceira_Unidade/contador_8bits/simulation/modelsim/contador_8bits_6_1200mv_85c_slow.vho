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

-- DATE "11/04/2023 18:03:42"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador_8bits IS
    PORT (
	q : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	clrn : IN std_logic
	);
END contador_8bits;

-- Design Ports Information
-- q[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[6]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clrn	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF contador_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clrn : std_logic;
SIGNAL \clrn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \q[6]~output_o\ : std_logic;
SIGNAL \q[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~21_combout\ : std_logic;
SIGNAL \clrn~input_o\ : std_logic;
SIGNAL \clrn~inputclkctrl_outclk\ : std_logic;
SIGNAL \q[0]~reg0_q\ : std_logic;
SIGNAL \q[1]~7_combout\ : std_logic;
SIGNAL \q[1]~reg0_q\ : std_logic;
SIGNAL \q[1]~8\ : std_logic;
SIGNAL \q[2]~9_combout\ : std_logic;
SIGNAL \q[2]~reg0_q\ : std_logic;
SIGNAL \q[2]~10\ : std_logic;
SIGNAL \q[3]~11_combout\ : std_logic;
SIGNAL \q[3]~reg0_q\ : std_logic;
SIGNAL \q[3]~12\ : std_logic;
SIGNAL \q[4]~13_combout\ : std_logic;
SIGNAL \q[4]~reg0_q\ : std_logic;
SIGNAL \q[4]~14\ : std_logic;
SIGNAL \q[5]~15_combout\ : std_logic;
SIGNAL \q[5]~reg0_q\ : std_logic;
SIGNAL \q[5]~16\ : std_logic;
SIGNAL \q[6]~17_combout\ : std_logic;
SIGNAL \q[6]~reg0_q\ : std_logic;
SIGNAL \q[6]~18\ : std_logic;
SIGNAL \q[7]~19_combout\ : std_logic;
SIGNAL \q[7]~reg0_q\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_clrn <= clrn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clrn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clrn~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X16_Y0_N2
\q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \q[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\q[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \q[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y18_N0
\q[0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[0]~21_combout\ = !\q[0]~reg0_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[0]~reg0_q\,
	combout => \q[0]~21_combout\);

-- Location: IOIBUF_X0_Y11_N15
\clrn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clrn,
	o => \clrn~input_o\);

-- Location: CLKCTRL_G4
\clrn~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clrn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clrn~inputclkctrl_outclk\);

-- Location: FF_X33_Y18_N1
\q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[0]~21_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[0]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N6
\q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[1]~7_combout\ = (\q[1]~reg0_q\ & (\q[0]~reg0_q\ $ (VCC))) # (!\q[1]~reg0_q\ & (\q[0]~reg0_q\ & VCC))
-- \q[1]~8\ = CARRY((\q[1]~reg0_q\ & \q[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[1]~reg0_q\,
	datab => \q[0]~reg0_q\,
	datad => VCC,
	combout => \q[1]~7_combout\,
	cout => \q[1]~8\);

-- Location: FF_X33_Y18_N7
\q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[1]~7_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[1]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N8
\q[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[2]~9_combout\ = (\q[2]~reg0_q\ & (!\q[1]~8\)) # (!\q[2]~reg0_q\ & ((\q[1]~8\) # (GND)))
-- \q[2]~10\ = CARRY((!\q[1]~8\) # (!\q[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[2]~reg0_q\,
	datad => VCC,
	cin => \q[1]~8\,
	combout => \q[2]~9_combout\,
	cout => \q[2]~10\);

-- Location: FF_X33_Y18_N9
\q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[2]~9_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[2]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N10
\q[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[3]~11_combout\ = (\q[3]~reg0_q\ & (\q[2]~10\ $ (GND))) # (!\q[3]~reg0_q\ & (!\q[2]~10\ & VCC))
-- \q[3]~12\ = CARRY((\q[3]~reg0_q\ & !\q[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[3]~reg0_q\,
	datad => VCC,
	cin => \q[2]~10\,
	combout => \q[3]~11_combout\,
	cout => \q[3]~12\);

-- Location: FF_X33_Y18_N11
\q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[3]~11_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[3]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N12
\q[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]~13_combout\ = (\q[4]~reg0_q\ & (!\q[3]~12\)) # (!\q[4]~reg0_q\ & ((\q[3]~12\) # (GND)))
-- \q[4]~14\ = CARRY((!\q[3]~12\) # (!\q[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \q[4]~reg0_q\,
	datad => VCC,
	cin => \q[3]~12\,
	combout => \q[4]~13_combout\,
	cout => \q[4]~14\);

-- Location: FF_X33_Y18_N13
\q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[4]~13_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[4]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N14
\q[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[5]~15_combout\ = (\q[5]~reg0_q\ & (\q[4]~14\ $ (GND))) # (!\q[5]~reg0_q\ & (!\q[4]~14\ & VCC))
-- \q[5]~16\ = CARRY((\q[5]~reg0_q\ & !\q[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[5]~reg0_q\,
	datad => VCC,
	cin => \q[4]~14\,
	combout => \q[5]~15_combout\,
	cout => \q[5]~16\);

-- Location: FF_X33_Y18_N15
\q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[5]~15_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[5]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N16
\q[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~17_combout\ = (\q[6]~reg0_q\ & (!\q[5]~16\)) # (!\q[6]~reg0_q\ & ((\q[5]~16\) # (GND)))
-- \q[6]~18\ = CARRY((!\q[5]~16\) # (!\q[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \q[6]~reg0_q\,
	datad => VCC,
	cin => \q[5]~16\,
	combout => \q[6]~17_combout\,
	cout => \q[6]~18\);

-- Location: FF_X33_Y18_N17
\q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[6]~17_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[6]~reg0_q\);

-- Location: LCCOMB_X33_Y18_N18
\q[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[7]~19_combout\ = \q[6]~18\ $ (!\q[7]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \q[7]~reg0_q\,
	cin => \q[6]~18\,
	combout => \q[7]~19_combout\);

-- Location: FF_X33_Y18_N19
\q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[7]~19_combout\,
	clrn => \clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \q[7]~reg0_q\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;

ww_q(6) <= \q[6]~output_o\;

ww_q(7) <= \q[7]~output_o\;
END structure;


