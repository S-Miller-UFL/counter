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

-- DATE "10/09/2023 10:06:03"

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

ENTITY 	clk_div IS
    PORT (
	clk_in : IN std_logic;
	clk_out : OUT std_logic;
	rst : IN std_logic
	);
END clk_div;

-- Design Ports Information
-- clk_out	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_in	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_div IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_in : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_in~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk_in~input_o\ : std_logic;
SIGNAL \clk_in~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~31_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \count[0]~32\ : std_logic;
SIGNAL \count[1]~33_combout\ : std_logic;
SIGNAL \count[1]~34\ : std_logic;
SIGNAL \count[2]~35_combout\ : std_logic;
SIGNAL \count[2]~36\ : std_logic;
SIGNAL \count[3]~37_combout\ : std_logic;
SIGNAL \count[3]~38\ : std_logic;
SIGNAL \count[4]~39_combout\ : std_logic;
SIGNAL \count[4]~40\ : std_logic;
SIGNAL \count[5]~41_combout\ : std_logic;
SIGNAL \count[5]~42\ : std_logic;
SIGNAL \count[6]~43_combout\ : std_logic;
SIGNAL \count[6]~44\ : std_logic;
SIGNAL \count[7]~45_combout\ : std_logic;
SIGNAL \count[7]~46\ : std_logic;
SIGNAL \count[8]~47_combout\ : std_logic;
SIGNAL \count[8]~48\ : std_logic;
SIGNAL \count[9]~49_combout\ : std_logic;
SIGNAL \count[9]~50\ : std_logic;
SIGNAL \count[10]~51_combout\ : std_logic;
SIGNAL \count[10]~52\ : std_logic;
SIGNAL \count[11]~53_combout\ : std_logic;
SIGNAL \count[11]~54\ : std_logic;
SIGNAL \count[12]~55_combout\ : std_logic;
SIGNAL \count[12]~56\ : std_logic;
SIGNAL \count[13]~57_combout\ : std_logic;
SIGNAL \count[13]~58\ : std_logic;
SIGNAL \count[14]~59_combout\ : std_logic;
SIGNAL \count[14]~60\ : std_logic;
SIGNAL \count[15]~61_combout\ : std_logic;
SIGNAL \count[15]~62\ : std_logic;
SIGNAL \count[16]~63_combout\ : std_logic;
SIGNAL \count[16]~64\ : std_logic;
SIGNAL \count[17]~65_combout\ : std_logic;
SIGNAL \count[17]~66\ : std_logic;
SIGNAL \count[18]~67_combout\ : std_logic;
SIGNAL \count[18]~68\ : std_logic;
SIGNAL \count[19]~69_combout\ : std_logic;
SIGNAL \count[19]~70\ : std_logic;
SIGNAL \count[20]~71_combout\ : std_logic;
SIGNAL \count[20]~72\ : std_logic;
SIGNAL \count[21]~73_combout\ : std_logic;
SIGNAL \count[21]~74\ : std_logic;
SIGNAL \count[22]~75_combout\ : std_logic;
SIGNAL \count[22]~76\ : std_logic;
SIGNAL \count[23]~77_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \count[23]~78\ : std_logic;
SIGNAL \count[24]~79_combout\ : std_logic;
SIGNAL \count[24]~80\ : std_logic;
SIGNAL \count[25]~81_combout\ : std_logic;
SIGNAL \count[25]~82\ : std_logic;
SIGNAL \count[26]~83_combout\ : std_logic;
SIGNAL \count[26]~84\ : std_logic;
SIGNAL \count[27]~85_combout\ : std_logic;
SIGNAL \count[27]~86\ : std_logic;
SIGNAL \count[28]~87_combout\ : std_logic;
SIGNAL \count[28]~88\ : std_logic;
SIGNAL \count[29]~89_combout\ : std_logic;
SIGNAL \count[29]~90\ : std_logic;
SIGNAL \count[30]~91_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \clockout~0_combout\ : std_logic;
SIGNAL \clockout~q\ : std_logic;
SIGNAL count : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_in <= clk_in;
clk_out <= ww_clk_out;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk_in~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_in~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X18_Y0_N9
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clockout~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_in,
	o => \clk_in~input_o\);

-- Location: CLKCTRL_G3
\clk_in~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_in~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_in~inputclkctrl_outclk\);

-- Location: LCCOMB_X20_Y9_N2
\count[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~31_combout\ = count(0) $ (VCC)
-- \count[0]~32\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~31_combout\,
	cout => \count[0]~32\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X20_Y9_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[0]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X20_Y9_N4
\count[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~33_combout\ = (count(1) & (!\count[0]~32\)) # (!count(1) & ((\count[0]~32\) # (GND)))
-- \count[1]~34\ = CARRY((!\count[0]~32\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~32\,
	combout => \count[1]~33_combout\,
	cout => \count[1]~34\);

-- Location: FF_X20_Y9_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[1]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X20_Y9_N6
\count[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~35_combout\ = (count(2) & (\count[1]~34\ $ (GND))) # (!count(2) & (!\count[1]~34\ & VCC))
-- \count[2]~36\ = CARRY((count(2) & !\count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~34\,
	combout => \count[2]~35_combout\,
	cout => \count[2]~36\);

-- Location: FF_X20_Y9_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[2]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X20_Y9_N8
\count[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~37_combout\ = (count(3) & (!\count[2]~36\)) # (!count(3) & ((\count[2]~36\) # (GND)))
-- \count[3]~38\ = CARRY((!\count[2]~36\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~36\,
	combout => \count[3]~37_combout\,
	cout => \count[3]~38\);

-- Location: FF_X20_Y9_N9
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[3]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X20_Y9_N10
\count[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[4]~39_combout\ = (count(4) & (\count[3]~38\ $ (GND))) # (!count(4) & (!\count[3]~38\ & VCC))
-- \count[4]~40\ = CARRY((count(4) & !\count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \count[3]~38\,
	combout => \count[4]~39_combout\,
	cout => \count[4]~40\);

-- Location: FF_X20_Y9_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[4]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X20_Y9_N12
\count[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[5]~41_combout\ = (count(5) & (!\count[4]~40\)) # (!count(5) & ((\count[4]~40\) # (GND)))
-- \count[5]~42\ = CARRY((!\count[4]~40\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~40\,
	combout => \count[5]~41_combout\,
	cout => \count[5]~42\);

-- Location: FF_X20_Y9_N13
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[5]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X20_Y9_N14
\count[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[6]~43_combout\ = (count(6) & (\count[5]~42\ $ (GND))) # (!count(6) & (!\count[5]~42\ & VCC))
-- \count[6]~44\ = CARRY((count(6) & !\count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~42\,
	combout => \count[6]~43_combout\,
	cout => \count[6]~44\);

-- Location: FF_X20_Y9_N15
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[6]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X20_Y9_N16
\count[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[7]~45_combout\ = (count(7) & (!\count[6]~44\)) # (!count(7) & ((\count[6]~44\) # (GND)))
-- \count[7]~46\ = CARRY((!\count[6]~44\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~44\,
	combout => \count[7]~45_combout\,
	cout => \count[7]~46\);

-- Location: FF_X20_Y9_N17
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[7]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X20_Y9_N18
\count[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[8]~47_combout\ = (count(8) & (\count[7]~46\ $ (GND))) # (!count(8) & (!\count[7]~46\ & VCC))
-- \count[8]~48\ = CARRY((count(8) & !\count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~46\,
	combout => \count[8]~47_combout\,
	cout => \count[8]~48\);

-- Location: FF_X20_Y9_N19
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[8]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X20_Y9_N20
\count[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[9]~49_combout\ = (count(9) & (!\count[8]~48\)) # (!count(9) & ((\count[8]~48\) # (GND)))
-- \count[9]~50\ = CARRY((!\count[8]~48\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~48\,
	combout => \count[9]~49_combout\,
	cout => \count[9]~50\);

-- Location: FF_X20_Y9_N21
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[9]~49_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X20_Y9_N22
\count[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~51_combout\ = (count(10) & (\count[9]~50\ $ (GND))) # (!count(10) & (!\count[9]~50\ & VCC))
-- \count[10]~52\ = CARRY((count(10) & !\count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~50\,
	combout => \count[10]~51_combout\,
	cout => \count[10]~52\);

-- Location: FF_X20_Y9_N23
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[10]~51_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X20_Y9_N24
\count[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[11]~53_combout\ = (count(11) & (!\count[10]~52\)) # (!count(11) & ((\count[10]~52\) # (GND)))
-- \count[11]~54\ = CARRY((!\count[10]~52\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	datad => VCC,
	cin => \count[10]~52\,
	combout => \count[11]~53_combout\,
	cout => \count[11]~54\);

-- Location: FF_X20_Y9_N25
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[11]~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X20_Y9_N26
\count[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~55_combout\ = (count(12) & (\count[11]~54\ $ (GND))) # (!count(12) & (!\count[11]~54\ & VCC))
-- \count[12]~56\ = CARRY((count(12) & !\count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~54\,
	combout => \count[12]~55_combout\,
	cout => \count[12]~56\);

-- Location: FF_X20_Y9_N27
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[12]~55_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X20_Y9_N28
\count[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[13]~57_combout\ = (count(13) & (!\count[12]~56\)) # (!count(13) & ((\count[12]~56\) # (GND)))
-- \count[13]~58\ = CARRY((!\count[12]~56\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	datad => VCC,
	cin => \count[12]~56\,
	combout => \count[13]~57_combout\,
	cout => \count[13]~58\);

-- Location: FF_X20_Y9_N29
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[13]~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X20_Y9_N30
\count[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[14]~59_combout\ = (count(14) & (\count[13]~58\ $ (GND))) # (!count(14) & (!\count[13]~58\ & VCC))
-- \count[14]~60\ = CARRY((count(14) & !\count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(14),
	datad => VCC,
	cin => \count[13]~58\,
	combout => \count[14]~59_combout\,
	cout => \count[14]~60\);

-- Location: FF_X20_Y9_N31
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[14]~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X20_Y8_N0
\count[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[15]~61_combout\ = (count(15) & (!\count[14]~60\)) # (!count(15) & ((\count[14]~60\) # (GND)))
-- \count[15]~62\ = CARRY((!\count[14]~60\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	datad => VCC,
	cin => \count[14]~60\,
	combout => \count[15]~61_combout\,
	cout => \count[15]~62\);

-- Location: FF_X20_Y8_N1
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[15]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X20_Y8_N2
\count[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~63_combout\ = (count(16) & (\count[15]~62\ $ (GND))) # (!count(16) & (!\count[15]~62\ & VCC))
-- \count[16]~64\ = CARRY((count(16) & !\count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~62\,
	combout => \count[16]~63_combout\,
	cout => \count[16]~64\);

-- Location: FF_X20_Y8_N3
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[16]~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X20_Y8_N4
\count[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[17]~65_combout\ = (count(17) & (!\count[16]~64\)) # (!count(17) & ((\count[16]~64\) # (GND)))
-- \count[17]~66\ = CARRY((!\count[16]~64\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~64\,
	combout => \count[17]~65_combout\,
	cout => \count[17]~66\);

-- Location: FF_X20_Y8_N5
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[17]~65_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X20_Y8_N6
\count[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[18]~67_combout\ = (count(18) & (\count[17]~66\ $ (GND))) # (!count(18) & (!\count[17]~66\ & VCC))
-- \count[18]~68\ = CARRY((count(18) & !\count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~66\,
	combout => \count[18]~67_combout\,
	cout => \count[18]~68\);

-- Location: FF_X20_Y8_N7
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[18]~67_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X20_Y8_N8
\count[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[19]~69_combout\ = (count(19) & (!\count[18]~68\)) # (!count(19) & ((\count[18]~68\) # (GND)))
-- \count[19]~70\ = CARRY((!\count[18]~68\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~68\,
	combout => \count[19]~69_combout\,
	cout => \count[19]~70\);

-- Location: FF_X20_Y8_N9
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[19]~69_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X20_Y8_N10
\count[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[20]~71_combout\ = (count(20) & (\count[19]~70\ $ (GND))) # (!count(20) & (!\count[19]~70\ & VCC))
-- \count[20]~72\ = CARRY((count(20) & !\count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~70\,
	combout => \count[20]~71_combout\,
	cout => \count[20]~72\);

-- Location: FF_X20_Y8_N11
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[20]~71_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X20_Y8_N12
\count[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[21]~73_combout\ = (count(21) & (!\count[20]~72\)) # (!count(21) & ((\count[20]~72\) # (GND)))
-- \count[21]~74\ = CARRY((!\count[20]~72\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(21),
	datad => VCC,
	cin => \count[20]~72\,
	combout => \count[21]~73_combout\,
	cout => \count[21]~74\);

-- Location: FF_X20_Y8_N13
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[21]~73_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X20_Y8_N14
\count[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[22]~75_combout\ = (count(22) & (\count[21]~74\ $ (GND))) # (!count(22) & (!\count[21]~74\ & VCC))
-- \count[22]~76\ = CARRY((count(22) & !\count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(22),
	datad => VCC,
	cin => \count[21]~74\,
	combout => \count[22]~75_combout\,
	cout => \count[22]~76\);

-- Location: FF_X20_Y8_N15
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[22]~75_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X20_Y8_N16
\count[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[23]~77_combout\ = (count(23) & (!\count[22]~76\)) # (!count(23) & ((\count[22]~76\) # (GND)))
-- \count[23]~78\ = CARRY((!\count[22]~76\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~76\,
	combout => \count[23]~77_combout\,
	cout => \count[23]~78\);

-- Location: FF_X20_Y8_N17
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[23]~77_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X19_Y9_N30
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (!count(23) & (!count(21) & (!count(20) & !count(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => count(21),
	datac => count(20),
	datad => count(22),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X19_Y9_N8
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!count(16) & (!count(17) & (!count(19) & !count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	datab => count(17),
	datac => count(19),
	datad => count(18),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y8_N18
\count[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[24]~79_combout\ = (count(24) & (\count[23]~78\ $ (GND))) # (!count(24) & (!\count[23]~78\ & VCC))
-- \count[24]~80\ = CARRY((count(24) & !\count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~78\,
	combout => \count[24]~79_combout\,
	cout => \count[24]~80\);

-- Location: FF_X20_Y8_N19
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[24]~79_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X20_Y8_N20
\count[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[25]~81_combout\ = (count(25) & (!\count[24]~80\)) # (!count(25) & ((\count[24]~80\) # (GND)))
-- \count[25]~82\ = CARRY((!\count[24]~80\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~80\,
	combout => \count[25]~81_combout\,
	cout => \count[25]~82\);

-- Location: FF_X20_Y8_N21
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[25]~81_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X20_Y8_N22
\count[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[26]~83_combout\ = (count(26) & (\count[25]~82\ $ (GND))) # (!count(26) & (!\count[25]~82\ & VCC))
-- \count[26]~84\ = CARRY((count(26) & !\count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(26),
	datad => VCC,
	cin => \count[25]~82\,
	combout => \count[26]~83_combout\,
	cout => \count[26]~84\);

-- Location: FF_X20_Y8_N23
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[26]~83_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X20_Y8_N24
\count[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[27]~85_combout\ = (count(27) & (!\count[26]~84\)) # (!count(27) & ((\count[26]~84\) # (GND)))
-- \count[27]~86\ = CARRY((!\count[26]~84\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(27),
	datad => VCC,
	cin => \count[26]~84\,
	combout => \count[27]~85_combout\,
	cout => \count[27]~86\);

-- Location: FF_X20_Y8_N25
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[27]~85_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X20_Y8_N26
\count[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[28]~87_combout\ = (count(28) & (\count[27]~86\ $ (GND))) # (!count(28) & (!\count[27]~86\ & VCC))
-- \count[28]~88\ = CARRY((count(28) & !\count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(28),
	datad => VCC,
	cin => \count[27]~86\,
	combout => \count[28]~87_combout\,
	cout => \count[28]~88\);

-- Location: FF_X20_Y8_N27
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[28]~87_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X20_Y8_N28
\count[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[29]~89_combout\ = (count(29) & (!\count[28]~88\)) # (!count(29) & ((\count[28]~88\) # (GND)))
-- \count[29]~90\ = CARRY((!\count[28]~88\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(29),
	datad => VCC,
	cin => \count[28]~88\,
	combout => \count[29]~89_combout\,
	cout => \count[29]~90\);

-- Location: FF_X20_Y8_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[29]~89_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X20_Y8_N30
\count[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[30]~91_combout\ = count(30) $ (!\count[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	cin => \count[29]~90\,
	combout => \count[30]~91_combout\);

-- Location: FF_X20_Y8_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \count[30]~91_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X19_Y9_N12
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (!count(24) & (!count(26) & (!count(27) & !count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(26),
	datac => count(27),
	datad => count(25),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X19_Y9_N14
\LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (!count(30) & (!count(29) & (!count(28) & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(30),
	datab => count(29),
	datac => count(28),
	datad => \LessThan0~6_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X20_Y9_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!count(10) & (!count(11) & (!count(12) & !count(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(11),
	datac => count(12),
	datad => count(13),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y9_N18
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!count(7) & (((!count(4) & !count(5))) # (!count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(6),
	datac => count(5),
	datad => count(7),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\ & (((\LessThan0~1_combout\) # (!count(8))) # (!count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(8),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y9_N6
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ((\LessThan0~2_combout\) # (!count(15))) # (!count(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datac => count(15),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y9_N16
\LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (((!\LessThan0~3_combout\) # (!\LessThan0~7_combout\)) # (!\LessThan0~4_combout\)) # (!\LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~7_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X19_Y9_N28
\clockout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clockout~0_combout\ = \clockout~q\ $ (\LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clockout~q\,
	datad => \LessThan0~8_combout\,
	combout => \clockout~0_combout\);

-- Location: FF_X19_Y9_N29
clockout : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_in~inputclkctrl_outclk\,
	d => \clockout~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clockout~q\);

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

ww_clk_out <= \clk_out~output_o\;
END structure;


