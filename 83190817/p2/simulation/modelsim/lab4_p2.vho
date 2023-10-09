-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/08/2023 14:34:37"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	gray2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0)
	);
END gray2;

-- Design Ports Information
-- output[0]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gray2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \nextstate~19_combout\ : std_logic;
SIGNAL \nextstate.one~q\ : std_logic;
SIGNAL \nextstate~23_combout\ : std_logic;
SIGNAL \nextstate.three~q\ : std_logic;
SIGNAL \nextstate~27_combout\ : std_logic;
SIGNAL \nextstate.two~q\ : std_logic;
SIGNAL \nextstate~28_combout\ : std_logic;
SIGNAL \nextstate.six~q\ : std_logic;
SIGNAL \nextstate~24_combout\ : std_logic;
SIGNAL \nextstate.seven~q\ : std_logic;
SIGNAL \nextstate~20_combout\ : std_logic;
SIGNAL \nextstate.five~q\ : std_logic;
SIGNAL \nextstate~31_combout\ : std_logic;
SIGNAL \nextstate.four~q\ : std_logic;
SIGNAL \nextstate~32_combout\ : std_logic;
SIGNAL \nextstate.C~q\ : std_logic;
SIGNAL \nextstate~22_combout\ : std_logic;
SIGNAL \nextstate.D~q\ : std_logic;
SIGNAL \nextstate~26_combout\ : std_logic;
SIGNAL \nextstate.F~q\ : std_logic;
SIGNAL \nextstate~30_combout\ : std_logic;
SIGNAL \nextstate.E~q\ : std_logic;
SIGNAL \nextstate~29_combout\ : std_logic;
SIGNAL \nextstate.A~q\ : std_logic;
SIGNAL \nextstate~25_combout\ : std_logic;
SIGNAL \nextstate.B~q\ : std_logic;
SIGNAL \nextstate~21_combout\ : std_logic;
SIGNAL \nextstate.nine~q\ : std_logic;
SIGNAL \nextstate~33_combout\ : std_logic;
SIGNAL \nextstate.eight~q\ : std_logic;
SIGNAL \nextstate~18_combout\ : std_logic;
SIGNAL \nextstate.zero~q\ : std_logic;
SIGNAL \output~1_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \output~2_combout\ : std_logic;
SIGNAL \output~3_combout\ : std_logic;
SIGNAL \output~4_combout\ : std_logic;
SIGNAL \output~7_combout\ : std_logic;
SIGNAL \output~6_combout\ : std_logic;
SIGNAL \output~5_combout\ : std_logic;
SIGNAL \output~8_combout\ : std_logic;
SIGNAL \output~9_combout\ : std_logic;
SIGNAL \output~10_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X0_Y3_N23
\output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~2_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~4_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~8_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \output~10_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: IOIBUF_X0_Y3_N15
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X2_Y7_N10
\nextstate~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~19_combout\ = (!\nextstate.zero~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.zero~q\,
	datad => \rst~input_o\,
	combout => \nextstate~19_combout\);

-- Location: FF_X2_Y7_N11
\nextstate.one\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.one~q\);

-- Location: LCCOMB_X2_Y7_N2
\nextstate~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~23_combout\ = (!\rst~input_o\ & \nextstate.one~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.one~q\,
	combout => \nextstate~23_combout\);

-- Location: FF_X2_Y7_N3
\nextstate.three\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.three~q\);

-- Location: LCCOMB_X2_Y7_N14
\nextstate~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~27_combout\ = (!\rst~input_o\ & \nextstate.three~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.three~q\,
	combout => \nextstate~27_combout\);

-- Location: FF_X2_Y7_N15
\nextstate.two\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.two~q\);

-- Location: LCCOMB_X2_Y7_N0
\nextstate~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~28_combout\ = (\nextstate.two~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.two~q\,
	datad => \rst~input_o\,
	combout => \nextstate~28_combout\);

-- Location: FF_X2_Y7_N1
\nextstate.six\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.six~q\);

-- Location: LCCOMB_X2_Y7_N8
\nextstate~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~24_combout\ = (!\rst~input_o\ & \nextstate.six~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.six~q\,
	combout => \nextstate~24_combout\);

-- Location: FF_X2_Y7_N9
\nextstate.seven\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.seven~q\);

-- Location: LCCOMB_X2_Y7_N20
\nextstate~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~20_combout\ = (\nextstate.seven~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.seven~q\,
	datad => \rst~input_o\,
	combout => \nextstate~20_combout\);

-- Location: FF_X2_Y7_N21
\nextstate.five\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.five~q\);

-- Location: LCCOMB_X2_Y7_N6
\nextstate~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~31_combout\ = (!\rst~input_o\ & \nextstate.five~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.five~q\,
	combout => \nextstate~31_combout\);

-- Location: FF_X2_Y7_N7
\nextstate.four\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.four~q\);

-- Location: LCCOMB_X2_Y7_N16
\nextstate~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~32_combout\ = (!\rst~input_o\ & \nextstate.four~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.four~q\,
	combout => \nextstate~32_combout\);

-- Location: FF_X2_Y7_N17
\nextstate.C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.C~q\);

-- Location: LCCOMB_X2_Y7_N12
\nextstate~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~22_combout\ = (!\rst~input_o\ & \nextstate.C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.C~q\,
	combout => \nextstate~22_combout\);

-- Location: FF_X2_Y7_N13
\nextstate.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.D~q\);

-- Location: LCCOMB_X2_Y7_N24
\nextstate~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~26_combout\ = (!\rst~input_o\ & \nextstate.D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.D~q\,
	combout => \nextstate~26_combout\);

-- Location: FF_X2_Y7_N25
\nextstate.F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.F~q\);

-- Location: LCCOMB_X2_Y7_N28
\nextstate~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~30_combout\ = (!\rst~input_o\ & \nextstate.F~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.F~q\,
	combout => \nextstate~30_combout\);

-- Location: FF_X2_Y7_N29
\nextstate.E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.E~q\);

-- Location: LCCOMB_X2_Y7_N30
\nextstate~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~29_combout\ = (!\rst~input_o\ & \nextstate.E~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.E~q\,
	combout => \nextstate~29_combout\);

-- Location: FF_X2_Y7_N31
\nextstate.A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.A~q\);

-- Location: LCCOMB_X2_Y7_N26
\nextstate~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~25_combout\ = (\nextstate.A~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.A~q\,
	datad => \rst~input_o\,
	combout => \nextstate~25_combout\);

-- Location: FF_X2_Y7_N27
\nextstate.B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.B~q\);

-- Location: LCCOMB_X2_Y7_N18
\nextstate~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~21_combout\ = (\nextstate.B~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.B~q\,
	datad => \rst~input_o\,
	combout => \nextstate~21_combout\);

-- Location: FF_X2_Y7_N19
\nextstate.nine\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.nine~q\);

-- Location: LCCOMB_X2_Y7_N22
\nextstate~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~33_combout\ = (!\rst~input_o\ & \nextstate.nine~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~input_o\,
	datad => \nextstate.nine~q\,
	combout => \nextstate~33_combout\);

-- Location: FF_X2_Y7_N23
\nextstate.eight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.eight~q\);

-- Location: LCCOMB_X2_Y7_N4
\nextstate~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \nextstate~18_combout\ = (!\nextstate.eight~q\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nextstate.eight~q\,
	datad => \rst~input_o\,
	combout => \nextstate~18_combout\);

-- Location: FF_X2_Y7_N5
\nextstate.zero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \nextstate~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \nextstate.zero~q\);

-- Location: LCCOMB_X1_Y7_N22
\output~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~1_combout\ = (!\nextstate.three~q\ & (!\nextstate.seven~q\ & (!\nextstate.B~q\ & !\nextstate.F~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.three~q\,
	datab => \nextstate.seven~q\,
	datac => \nextstate.B~q\,
	datad => \nextstate.F~q\,
	combout => \output~1_combout\);

-- Location: LCCOMB_X1_Y7_N24
\output~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\nextstate.five~q\) # ((\nextstate.D~q\) # ((\nextstate.one~q\) # (\nextstate.nine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.five~q\,
	datab => \nextstate.D~q\,
	datac => \nextstate.one~q\,
	datad => \nextstate.nine~q\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X1_Y7_N16
\output~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~2_combout\ = (\nextstate.zero~q\ & ((\output~0_combout\) # (!\output~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nextstate.zero~q\,
	datac => \output~1_combout\,
	datad => \output~0_combout\,
	combout => \output~2_combout\);

-- Location: LCCOMB_X1_Y7_N2
\output~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~3_combout\ = (\nextstate.A~q\) # ((\nextstate.two~q\) # ((\nextstate.E~q\) # (\nextstate.six~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.A~q\,
	datab => \nextstate.two~q\,
	datac => \nextstate.E~q\,
	datad => \nextstate.six~q\,
	combout => \output~3_combout\);

-- Location: LCCOMB_X1_Y7_N4
\output~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~4_combout\ = (\nextstate.zero~q\ & (!\nextstate.one~q\ & ((\output~3_combout\) # (!\output~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~1_combout\,
	datab => \nextstate.zero~q\,
	datac => \nextstate.one~q\,
	datad => \output~3_combout\,
	combout => \output~4_combout\);

-- Location: LCCOMB_X1_Y7_N26
\output~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~7_combout\ = (!\nextstate.C~q\ & (!\nextstate.D~q\ & (!\nextstate.E~q\ & !\nextstate.F~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.C~q\,
	datab => \nextstate.D~q\,
	datac => \nextstate.E~q\,
	datad => \nextstate.F~q\,
	combout => \output~7_combout\);

-- Location: LCCOMB_X1_Y7_N8
\output~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~6_combout\ = (\nextstate.four~q\) # ((\nextstate.seven~q\) # ((\nextstate.five~q\) # (\nextstate.six~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.four~q\,
	datab => \nextstate.seven~q\,
	datac => \nextstate.five~q\,
	datad => \nextstate.six~q\,
	combout => \output~6_combout\);

-- Location: LCCOMB_X1_Y7_N18
\output~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~5_combout\ = (!\nextstate.three~q\ & (\nextstate.zero~q\ & (!\nextstate.one~q\ & !\nextstate.two~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.three~q\,
	datab => \nextstate.zero~q\,
	datac => \nextstate.one~q\,
	datad => \nextstate.two~q\,
	combout => \output~5_combout\);

-- Location: LCCOMB_X1_Y7_N28
\output~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~8_combout\ = (\output~5_combout\ & ((\output~6_combout\) # (!\output~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~7_combout\,
	datac => \output~6_combout\,
	datad => \output~5_combout\,
	combout => \output~8_combout\);

-- Location: LCCOMB_X1_Y7_N10
\output~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~9_combout\ = (\nextstate.B~q\) # ((\nextstate.eight~q\) # ((\nextstate.A~q\) # (\nextstate.nine~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nextstate.B~q\,
	datab => \nextstate.eight~q\,
	datac => \nextstate.A~q\,
	datad => \nextstate.nine~q\,
	combout => \output~9_combout\);

-- Location: LCCOMB_X1_Y7_N20
\output~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \output~10_combout\ = (\output~5_combout\ & (!\nextstate.six~q\ & ((\output~9_combout\) # (!\output~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~9_combout\,
	datab => \output~5_combout\,
	datac => \output~7_combout\,
	datad => \nextstate.six~q\,
	combout => \output~10_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;
END structure;


