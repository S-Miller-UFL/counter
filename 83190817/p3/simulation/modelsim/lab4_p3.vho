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

-- DATE "10/10/2023 13:13:42"

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

ENTITY 	clk_gen IS
    PORT (
	clk50MHz : IN std_logic;
	rst : IN std_logic;
	button_n : IN std_logic;
	clk_out : OUT std_logic
	);
END clk_gen;

-- Design Ports Information
-- clk_out	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_button_n : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkdiv|clockout~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|Add0~31\ : std_logic;
SIGNAL \clkdiv|Add0~32_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \clkdiv|Add0~33\ : std_logic;
SIGNAL \clkdiv|Add0~34_combout\ : std_logic;
SIGNAL \clkdiv|Add0~35\ : std_logic;
SIGNAL \clkdiv|Add0~36_combout\ : std_logic;
SIGNAL \clkdiv|Add0~37\ : std_logic;
SIGNAL \clkdiv|Add0~38_combout\ : std_logic;
SIGNAL \clkdiv|Add0~39\ : std_logic;
SIGNAL \clkdiv|Add0~40_combout\ : std_logic;
SIGNAL \clkdiv|Add0~41\ : std_logic;
SIGNAL \clkdiv|Add0~42_combout\ : std_logic;
SIGNAL \clkdiv|Add0~43\ : std_logic;
SIGNAL \clkdiv|Add0~44_combout\ : std_logic;
SIGNAL \clkdiv|Add0~45\ : std_logic;
SIGNAL \clkdiv|Add0~46_combout\ : std_logic;
SIGNAL \clkdiv|Add0~47\ : std_logic;
SIGNAL \clkdiv|Add0~48_combout\ : std_logic;
SIGNAL \clkdiv|Add0~49\ : std_logic;
SIGNAL \clkdiv|Add0~50_combout\ : std_logic;
SIGNAL \clkdiv|Add0~51\ : std_logic;
SIGNAL \clkdiv|Add0~52_combout\ : std_logic;
SIGNAL \clkdiv|Add0~53\ : std_logic;
SIGNAL \clkdiv|Add0~54_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~55\ : std_logic;
SIGNAL \clkdiv|Add0~56_combout\ : std_logic;
SIGNAL \clkdiv|Add0~57\ : std_logic;
SIGNAL \clkdiv|Add0~58_combout\ : std_logic;
SIGNAL \clkdiv|Add0~59\ : std_logic;
SIGNAL \clkdiv|Add0~60_combout\ : std_logic;
SIGNAL \clkdiv|Add0~61\ : std_logic;
SIGNAL \clkdiv|Add0~62_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~0_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~2_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~3_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~0_combout\ : std_logic;
SIGNAL \clkdiv|count~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~1\ : std_logic;
SIGNAL \clkdiv|Add0~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~3\ : std_logic;
SIGNAL \clkdiv|Add0~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~5\ : std_logic;
SIGNAL \clkdiv|Add0~6_combout\ : std_logic;
SIGNAL \clkdiv|Add0~7\ : std_logic;
SIGNAL \clkdiv|Add0~8_combout\ : std_logic;
SIGNAL \clkdiv|count~5_combout\ : std_logic;
SIGNAL \clkdiv|Add0~9\ : std_logic;
SIGNAL \clkdiv|Add0~10_combout\ : std_logic;
SIGNAL \clkdiv|Add0~11\ : std_logic;
SIGNAL \clkdiv|Add0~12_combout\ : std_logic;
SIGNAL \clkdiv|count~4_combout\ : std_logic;
SIGNAL \clkdiv|Add0~13\ : std_logic;
SIGNAL \clkdiv|Add0~14_combout\ : std_logic;
SIGNAL \clkdiv|Add0~15\ : std_logic;
SIGNAL \clkdiv|Add0~16_combout\ : std_logic;
SIGNAL \clkdiv|count~3_combout\ : std_logic;
SIGNAL \clkdiv|Add0~17\ : std_logic;
SIGNAL \clkdiv|Add0~18_combout\ : std_logic;
SIGNAL \clkdiv|count~2_combout\ : std_logic;
SIGNAL \clkdiv|Add0~19\ : std_logic;
SIGNAL \clkdiv|Add0~20_combout\ : std_logic;
SIGNAL \clkdiv|Add0~21\ : std_logic;
SIGNAL \clkdiv|Add0~22_combout\ : std_logic;
SIGNAL \clkdiv|Add0~23\ : std_logic;
SIGNAL \clkdiv|Add0~24_combout\ : std_logic;
SIGNAL \clkdiv|Add0~25\ : std_logic;
SIGNAL \clkdiv|Add0~26_combout\ : std_logic;
SIGNAL \clkdiv|Add0~27\ : std_logic;
SIGNAL \clkdiv|Add0~28_combout\ : std_logic;
SIGNAL \clkdiv|count~1_combout\ : std_logic;
SIGNAL \clkdiv|Add0~29\ : std_logic;
SIGNAL \clkdiv|Add0~30_combout\ : std_logic;
SIGNAL \clkdiv|count~0_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~5_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~6_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~7_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~8_combout\ : std_logic;
SIGNAL \clkdiv|Equal0~9_combout\ : std_logic;
SIGNAL \clkdiv|clockout~0_combout\ : std_logic;
SIGNAL \clkdiv|clockout~feeder_combout\ : std_logic;
SIGNAL \clkdiv|clockout~q\ : std_logic;
SIGNAL \clkdiv|clockout~clkctrl_outclk\ : std_logic;
SIGNAL \button_n~input_o\ : std_logic;
SIGNAL \count[0]~32_combout\ : std_logic;
SIGNAL \count[0]~34_combout\ : std_logic;
SIGNAL \count[0]~33\ : std_logic;
SIGNAL \count[1]~35_combout\ : std_logic;
SIGNAL \count[1]~36\ : std_logic;
SIGNAL \count[2]~37_combout\ : std_logic;
SIGNAL \count[2]~38\ : std_logic;
SIGNAL \count[3]~39_combout\ : std_logic;
SIGNAL \count[3]~40\ : std_logic;
SIGNAL \count[4]~41_combout\ : std_logic;
SIGNAL \count[4]~42\ : std_logic;
SIGNAL \count[5]~43_combout\ : std_logic;
SIGNAL \count[5]~44\ : std_logic;
SIGNAL \count[6]~45_combout\ : std_logic;
SIGNAL \count[6]~46\ : std_logic;
SIGNAL \count[7]~47_combout\ : std_logic;
SIGNAL \count[7]~48\ : std_logic;
SIGNAL \count[8]~49_combout\ : std_logic;
SIGNAL \count[8]~50\ : std_logic;
SIGNAL \count[9]~51_combout\ : std_logic;
SIGNAL \count[9]~52\ : std_logic;
SIGNAL \count[10]~53_combout\ : std_logic;
SIGNAL \count[10]~54\ : std_logic;
SIGNAL \count[11]~55_combout\ : std_logic;
SIGNAL \count[11]~56\ : std_logic;
SIGNAL \count[12]~57_combout\ : std_logic;
SIGNAL \count[12]~58\ : std_logic;
SIGNAL \count[13]~59_combout\ : std_logic;
SIGNAL \count[13]~60\ : std_logic;
SIGNAL \count[14]~61_combout\ : std_logic;
SIGNAL \count[14]~62\ : std_logic;
SIGNAL \count[15]~63_combout\ : std_logic;
SIGNAL \count[15]~64\ : std_logic;
SIGNAL \count[16]~65_combout\ : std_logic;
SIGNAL \count[16]~66\ : std_logic;
SIGNAL \count[17]~67_combout\ : std_logic;
SIGNAL \count[17]~68\ : std_logic;
SIGNAL \count[18]~69_combout\ : std_logic;
SIGNAL \count[18]~70\ : std_logic;
SIGNAL \count[19]~71_combout\ : std_logic;
SIGNAL \count[19]~72\ : std_logic;
SIGNAL \count[20]~73_combout\ : std_logic;
SIGNAL \count[20]~74\ : std_logic;
SIGNAL \count[21]~75_combout\ : std_logic;
SIGNAL \count[21]~76\ : std_logic;
SIGNAL \count[22]~77_combout\ : std_logic;
SIGNAL \count[22]~78\ : std_logic;
SIGNAL \count[23]~79_combout\ : std_logic;
SIGNAL \count[23]~80\ : std_logic;
SIGNAL \count[24]~81_combout\ : std_logic;
SIGNAL \count[24]~82\ : std_logic;
SIGNAL \count[25]~83_combout\ : std_logic;
SIGNAL \count[25]~84\ : std_logic;
SIGNAL \count[26]~85_combout\ : std_logic;
SIGNAL \count[26]~86\ : std_logic;
SIGNAL \count[27]~87_combout\ : std_logic;
SIGNAL \count[27]~88\ : std_logic;
SIGNAL \count[28]~89_combout\ : std_logic;
SIGNAL \count[28]~90\ : std_logic;
SIGNAL \count[29]~91_combout\ : std_logic;
SIGNAL \count[29]~92\ : std_logic;
SIGNAL \count[30]~93_combout\ : std_logic;
SIGNAL \count[30]~94\ : std_logic;
SIGNAL \count[31]~95_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \clk_out~0_combout\ : std_logic;
SIGNAL \clk_out~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(31 DOWNTO 0);
SIGNAL \clkdiv|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
ww_button_n <= button_n;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkdiv|clockout~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkdiv|clockout~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
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

-- Location: IOOBUF_X46_Y54_N2
\clk_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_out~reg0_q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G3
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y46_N30
\clkdiv|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~30_combout\ = (\clkdiv|count\(15) & (!\clkdiv|Add0~29\)) # (!\clkdiv|count\(15) & ((\clkdiv|Add0~29\) # (GND)))
-- \clkdiv|Add0~31\ = CARRY((!\clkdiv|Add0~29\) # (!\clkdiv|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(15),
	datad => VCC,
	cin => \clkdiv|Add0~29\,
	combout => \clkdiv|Add0~30_combout\,
	cout => \clkdiv|Add0~31\);

-- Location: LCCOMB_X46_Y45_N0
\clkdiv|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~32_combout\ = (\clkdiv|count\(16) & (\clkdiv|Add0~31\ $ (GND))) # (!\clkdiv|count\(16) & (!\clkdiv|Add0~31\ & VCC))
-- \clkdiv|Add0~33\ = CARRY((\clkdiv|count\(16) & !\clkdiv|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(16),
	datad => VCC,
	cin => \clkdiv|Add0~31\,
	combout => \clkdiv|Add0~32_combout\,
	cout => \clkdiv|Add0~33\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: FF_X46_Y45_N1
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X46_Y45_N2
\clkdiv|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~34_combout\ = (\clkdiv|count\(17) & (!\clkdiv|Add0~33\)) # (!\clkdiv|count\(17) & ((\clkdiv|Add0~33\) # (GND)))
-- \clkdiv|Add0~35\ = CARRY((!\clkdiv|Add0~33\) # (!\clkdiv|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(17),
	datad => VCC,
	cin => \clkdiv|Add0~33\,
	combout => \clkdiv|Add0~34_combout\,
	cout => \clkdiv|Add0~35\);

-- Location: FF_X46_Y45_N3
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X46_Y45_N4
\clkdiv|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~36_combout\ = (\clkdiv|count\(18) & (\clkdiv|Add0~35\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|Add0~35\ & VCC))
-- \clkdiv|Add0~37\ = CARRY((\clkdiv|count\(18) & !\clkdiv|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|Add0~35\,
	combout => \clkdiv|Add0~36_combout\,
	cout => \clkdiv|Add0~37\);

-- Location: FF_X46_Y45_N5
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: LCCOMB_X46_Y45_N6
\clkdiv|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~38_combout\ = (\clkdiv|count\(19) & (!\clkdiv|Add0~37\)) # (!\clkdiv|count\(19) & ((\clkdiv|Add0~37\) # (GND)))
-- \clkdiv|Add0~39\ = CARRY((!\clkdiv|Add0~37\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|Add0~37\,
	combout => \clkdiv|Add0~38_combout\,
	cout => \clkdiv|Add0~39\);

-- Location: FF_X46_Y45_N7
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X46_Y45_N8
\clkdiv|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~40_combout\ = (\clkdiv|count\(20) & (\clkdiv|Add0~39\ $ (GND))) # (!\clkdiv|count\(20) & (!\clkdiv|Add0~39\ & VCC))
-- \clkdiv|Add0~41\ = CARRY((\clkdiv|count\(20) & !\clkdiv|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(20),
	datad => VCC,
	cin => \clkdiv|Add0~39\,
	combout => \clkdiv|Add0~40_combout\,
	cout => \clkdiv|Add0~41\);

-- Location: FF_X46_Y45_N9
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X46_Y45_N10
\clkdiv|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~42_combout\ = (\clkdiv|count\(21) & (!\clkdiv|Add0~41\)) # (!\clkdiv|count\(21) & ((\clkdiv|Add0~41\) # (GND)))
-- \clkdiv|Add0~43\ = CARRY((!\clkdiv|Add0~41\) # (!\clkdiv|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(21),
	datad => VCC,
	cin => \clkdiv|Add0~41\,
	combout => \clkdiv|Add0~42_combout\,
	cout => \clkdiv|Add0~43\);

-- Location: FF_X46_Y45_N11
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X46_Y45_N12
\clkdiv|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~44_combout\ = (\clkdiv|count\(22) & (\clkdiv|Add0~43\ $ (GND))) # (!\clkdiv|count\(22) & (!\clkdiv|Add0~43\ & VCC))
-- \clkdiv|Add0~45\ = CARRY((\clkdiv|count\(22) & !\clkdiv|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(22),
	datad => VCC,
	cin => \clkdiv|Add0~43\,
	combout => \clkdiv|Add0~44_combout\,
	cout => \clkdiv|Add0~45\);

-- Location: FF_X46_Y45_N13
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X46_Y45_N14
\clkdiv|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~46_combout\ = (\clkdiv|count\(23) & (!\clkdiv|Add0~45\)) # (!\clkdiv|count\(23) & ((\clkdiv|Add0~45\) # (GND)))
-- \clkdiv|Add0~47\ = CARRY((!\clkdiv|Add0~45\) # (!\clkdiv|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(23),
	datad => VCC,
	cin => \clkdiv|Add0~45\,
	combout => \clkdiv|Add0~46_combout\,
	cout => \clkdiv|Add0~47\);

-- Location: FF_X46_Y45_N15
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X46_Y45_N16
\clkdiv|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~48_combout\ = (\clkdiv|count\(24) & (\clkdiv|Add0~47\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|Add0~47\ & VCC))
-- \clkdiv|Add0~49\ = CARRY((\clkdiv|count\(24) & !\clkdiv|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|Add0~47\,
	combout => \clkdiv|Add0~48_combout\,
	cout => \clkdiv|Add0~49\);

-- Location: FF_X46_Y45_N17
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X46_Y45_N18
\clkdiv|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~50_combout\ = (\clkdiv|count\(25) & (!\clkdiv|Add0~49\)) # (!\clkdiv|count\(25) & ((\clkdiv|Add0~49\) # (GND)))
-- \clkdiv|Add0~51\ = CARRY((!\clkdiv|Add0~49\) # (!\clkdiv|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(25),
	datad => VCC,
	cin => \clkdiv|Add0~49\,
	combout => \clkdiv|Add0~50_combout\,
	cout => \clkdiv|Add0~51\);

-- Location: FF_X46_Y45_N19
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X46_Y45_N20
\clkdiv|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~52_combout\ = (\clkdiv|count\(26) & (\clkdiv|Add0~51\ $ (GND))) # (!\clkdiv|count\(26) & (!\clkdiv|Add0~51\ & VCC))
-- \clkdiv|Add0~53\ = CARRY((\clkdiv|count\(26) & !\clkdiv|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(26),
	datad => VCC,
	cin => \clkdiv|Add0~51\,
	combout => \clkdiv|Add0~52_combout\,
	cout => \clkdiv|Add0~53\);

-- Location: FF_X46_Y45_N21
\clkdiv|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(26));

-- Location: LCCOMB_X46_Y45_N22
\clkdiv|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~54_combout\ = (\clkdiv|count\(27) & (!\clkdiv|Add0~53\)) # (!\clkdiv|count\(27) & ((\clkdiv|Add0~53\) # (GND)))
-- \clkdiv|Add0~55\ = CARRY((!\clkdiv|Add0~53\) # (!\clkdiv|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(27),
	datad => VCC,
	cin => \clkdiv|Add0~53\,
	combout => \clkdiv|Add0~54_combout\,
	cout => \clkdiv|Add0~55\);

-- Location: FF_X46_Y45_N23
\clkdiv|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(27));

-- Location: LCCOMB_X45_Y45_N30
\clkdiv|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~1_combout\ = (!\clkdiv|count\(26) & (!\clkdiv|count\(24) & (!\clkdiv|count\(25) & !\clkdiv|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(26),
	datab => \clkdiv|count\(24),
	datac => \clkdiv|count\(25),
	datad => \clkdiv|count\(27),
	combout => \clkdiv|Equal0~1_combout\);

-- Location: LCCOMB_X46_Y45_N24
\clkdiv|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~56_combout\ = (\clkdiv|count\(28) & (\clkdiv|Add0~55\ $ (GND))) # (!\clkdiv|count\(28) & (!\clkdiv|Add0~55\ & VCC))
-- \clkdiv|Add0~57\ = CARRY((\clkdiv|count\(28) & !\clkdiv|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(28),
	datad => VCC,
	cin => \clkdiv|Add0~55\,
	combout => \clkdiv|Add0~56_combout\,
	cout => \clkdiv|Add0~57\);

-- Location: FF_X46_Y45_N25
\clkdiv|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(28));

-- Location: LCCOMB_X46_Y45_N26
\clkdiv|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~58_combout\ = (\clkdiv|count\(29) & (!\clkdiv|Add0~57\)) # (!\clkdiv|count\(29) & ((\clkdiv|Add0~57\) # (GND)))
-- \clkdiv|Add0~59\ = CARRY((!\clkdiv|Add0~57\) # (!\clkdiv|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(29),
	datad => VCC,
	cin => \clkdiv|Add0~57\,
	combout => \clkdiv|Add0~58_combout\,
	cout => \clkdiv|Add0~59\);

-- Location: FF_X46_Y45_N27
\clkdiv|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(29));

-- Location: LCCOMB_X46_Y45_N28
\clkdiv|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~60_combout\ = (\clkdiv|count\(30) & (\clkdiv|Add0~59\ $ (GND))) # (!\clkdiv|count\(30) & (!\clkdiv|Add0~59\ & VCC))
-- \clkdiv|Add0~61\ = CARRY((\clkdiv|count\(30) & !\clkdiv|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(30),
	datad => VCC,
	cin => \clkdiv|Add0~59\,
	combout => \clkdiv|Add0~60_combout\,
	cout => \clkdiv|Add0~61\);

-- Location: FF_X46_Y45_N29
\clkdiv|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(30));

-- Location: LCCOMB_X46_Y45_N30
\clkdiv|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~62_combout\ = \clkdiv|count\(31) $ (\clkdiv|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	cin => \clkdiv|Add0~61\,
	combout => \clkdiv|Add0~62_combout\);

-- Location: FF_X46_Y45_N31
\clkdiv|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(31));

-- Location: LCCOMB_X45_Y45_N8
\clkdiv|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~0_combout\ = (!\clkdiv|count\(31) & (!\clkdiv|count\(28) & (!\clkdiv|count\(29) & !\clkdiv|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(31),
	datab => \clkdiv|count\(28),
	datac => \clkdiv|count\(29),
	datad => \clkdiv|count\(30),
	combout => \clkdiv|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y45_N4
\clkdiv|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~2_combout\ = (!\clkdiv|count\(23) & (!\clkdiv|count\(21) & (!\clkdiv|count\(22) & !\clkdiv|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(23),
	datab => \clkdiv|count\(21),
	datac => \clkdiv|count\(22),
	datad => \clkdiv|count\(20),
	combout => \clkdiv|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y45_N10
\clkdiv|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~3_combout\ = (!\clkdiv|count\(19) & (!\clkdiv|count\(16) & (!\clkdiv|count\(17) & !\clkdiv|count\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(19),
	datab => \clkdiv|count\(16),
	datac => \clkdiv|count\(17),
	datad => \clkdiv|count\(18),
	combout => \clkdiv|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y45_N0
\clkdiv|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~4_combout\ = (\clkdiv|Equal0~1_combout\ & (\clkdiv|Equal0~0_combout\ & (\clkdiv|Equal0~2_combout\ & \clkdiv|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~1_combout\,
	datab => \clkdiv|Equal0~0_combout\,
	datac => \clkdiv|Equal0~2_combout\,
	datad => \clkdiv|Equal0~3_combout\,
	combout => \clkdiv|Equal0~4_combout\);

-- Location: LCCOMB_X46_Y46_N0
\clkdiv|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~0_combout\ = \clkdiv|count\(0) $ (VCC)
-- \clkdiv|Add0~1\ = CARRY(\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|Add0~0_combout\,
	cout => \clkdiv|Add0~1\);

-- Location: LCCOMB_X45_Y46_N6
\clkdiv|count~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~6_combout\ = (\clkdiv|Add0~0_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Add0~0_combout\,
	datac => \clkdiv|Equal0~9_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|count~6_combout\);

-- Location: FF_X46_Y46_N19
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \clkdiv|count~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X46_Y46_N2
\clkdiv|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~2_combout\ = (\clkdiv|count\(1) & (!\clkdiv|Add0~1\)) # (!\clkdiv|count\(1) & ((\clkdiv|Add0~1\) # (GND)))
-- \clkdiv|Add0~3\ = CARRY((!\clkdiv|Add0~1\) # (!\clkdiv|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(1),
	datad => VCC,
	cin => \clkdiv|Add0~1\,
	combout => \clkdiv|Add0~2_combout\,
	cout => \clkdiv|Add0~3\);

-- Location: FF_X46_Y46_N3
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X46_Y46_N4
\clkdiv|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~4_combout\ = (\clkdiv|count\(2) & (\clkdiv|Add0~3\ $ (GND))) # (!\clkdiv|count\(2) & (!\clkdiv|Add0~3\ & VCC))
-- \clkdiv|Add0~5\ = CARRY((\clkdiv|count\(2) & !\clkdiv|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(2),
	datad => VCC,
	cin => \clkdiv|Add0~3\,
	combout => \clkdiv|Add0~4_combout\,
	cout => \clkdiv|Add0~5\);

-- Location: FF_X46_Y46_N5
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X46_Y46_N6
\clkdiv|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~6_combout\ = (\clkdiv|count\(3) & (!\clkdiv|Add0~5\)) # (!\clkdiv|count\(3) & ((\clkdiv|Add0~5\) # (GND)))
-- \clkdiv|Add0~7\ = CARRY((!\clkdiv|Add0~5\) # (!\clkdiv|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datad => VCC,
	cin => \clkdiv|Add0~5\,
	combout => \clkdiv|Add0~6_combout\,
	cout => \clkdiv|Add0~7\);

-- Location: FF_X46_Y46_N7
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: LCCOMB_X46_Y46_N8
\clkdiv|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~8_combout\ = (\clkdiv|count\(4) & (\clkdiv|Add0~7\ $ (GND))) # (!\clkdiv|count\(4) & (!\clkdiv|Add0~7\ & VCC))
-- \clkdiv|Add0~9\ = CARRY((\clkdiv|count\(4) & !\clkdiv|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(4),
	datad => VCC,
	cin => \clkdiv|Add0~7\,
	combout => \clkdiv|Add0~8_combout\,
	cout => \clkdiv|Add0~9\);

-- Location: LCCOMB_X45_Y46_N14
\clkdiv|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~5_combout\ = (\clkdiv|Add0~8_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~8_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|count~5_combout\);

-- Location: FF_X45_Y46_N15
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X46_Y46_N10
\clkdiv|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~10_combout\ = (\clkdiv|count\(5) & (!\clkdiv|Add0~9\)) # (!\clkdiv|count\(5) & ((\clkdiv|Add0~9\) # (GND)))
-- \clkdiv|Add0~11\ = CARRY((!\clkdiv|Add0~9\) # (!\clkdiv|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(5),
	datad => VCC,
	cin => \clkdiv|Add0~9\,
	combout => \clkdiv|Add0~10_combout\,
	cout => \clkdiv|Add0~11\);

-- Location: FF_X46_Y46_N11
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X46_Y46_N12
\clkdiv|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~12_combout\ = (\clkdiv|count\(6) & (\clkdiv|Add0~11\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|Add0~11\ & VCC))
-- \clkdiv|Add0~13\ = CARRY((\clkdiv|count\(6) & !\clkdiv|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|Add0~11\,
	combout => \clkdiv|Add0~12_combout\,
	cout => \clkdiv|Add0~13\);

-- Location: LCCOMB_X45_Y46_N16
\clkdiv|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~4_combout\ = (\clkdiv|Add0~12_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~12_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|count~4_combout\);

-- Location: FF_X45_Y46_N17
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: LCCOMB_X46_Y46_N14
\clkdiv|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~14_combout\ = (\clkdiv|count\(7) & (!\clkdiv|Add0~13\)) # (!\clkdiv|count\(7) & ((\clkdiv|Add0~13\) # (GND)))
-- \clkdiv|Add0~15\ = CARRY((!\clkdiv|Add0~13\) # (!\clkdiv|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(7),
	datad => VCC,
	cin => \clkdiv|Add0~13\,
	combout => \clkdiv|Add0~14_combout\,
	cout => \clkdiv|Add0~15\);

-- Location: FF_X46_Y46_N15
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X46_Y46_N16
\clkdiv|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~16_combout\ = (\clkdiv|count\(8) & (\clkdiv|Add0~15\ $ (GND))) # (!\clkdiv|count\(8) & (!\clkdiv|Add0~15\ & VCC))
-- \clkdiv|Add0~17\ = CARRY((\clkdiv|count\(8) & !\clkdiv|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(8),
	datad => VCC,
	cin => \clkdiv|Add0~15\,
	combout => \clkdiv|Add0~16_combout\,
	cout => \clkdiv|Add0~17\);

-- Location: LCCOMB_X45_Y46_N8
\clkdiv|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~3_combout\ = (\clkdiv|Add0~16_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~16_combout\,
	combout => \clkdiv|count~3_combout\);

-- Location: FF_X45_Y46_N9
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X46_Y46_N18
\clkdiv|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~18_combout\ = (\clkdiv|count\(9) & (!\clkdiv|Add0~17\)) # (!\clkdiv|count\(9) & ((\clkdiv|Add0~17\) # (GND)))
-- \clkdiv|Add0~19\ = CARRY((!\clkdiv|Add0~17\) # (!\clkdiv|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(9),
	datad => VCC,
	cin => \clkdiv|Add0~17\,
	combout => \clkdiv|Add0~18_combout\,
	cout => \clkdiv|Add0~19\);

-- Location: LCCOMB_X45_Y46_N24
\clkdiv|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~2_combout\ = (\clkdiv|Add0~18_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~18_combout\,
	combout => \clkdiv|count~2_combout\);

-- Location: FF_X45_Y46_N25
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X46_Y46_N20
\clkdiv|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~20_combout\ = (\clkdiv|count\(10) & (\clkdiv|Add0~19\ $ (GND))) # (!\clkdiv|count\(10) & (!\clkdiv|Add0~19\ & VCC))
-- \clkdiv|Add0~21\ = CARRY((\clkdiv|count\(10) & !\clkdiv|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(10),
	datad => VCC,
	cin => \clkdiv|Add0~19\,
	combout => \clkdiv|Add0~20_combout\,
	cout => \clkdiv|Add0~21\);

-- Location: FF_X46_Y46_N21
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X46_Y46_N22
\clkdiv|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~22_combout\ = (\clkdiv|count\(11) & (!\clkdiv|Add0~21\)) # (!\clkdiv|count\(11) & ((\clkdiv|Add0~21\) # (GND)))
-- \clkdiv|Add0~23\ = CARRY((!\clkdiv|Add0~21\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|Add0~21\,
	combout => \clkdiv|Add0~22_combout\,
	cout => \clkdiv|Add0~23\);

-- Location: FF_X46_Y46_N23
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X46_Y46_N24
\clkdiv|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~24_combout\ = (\clkdiv|count\(12) & (\clkdiv|Add0~23\ $ (GND))) # (!\clkdiv|count\(12) & (!\clkdiv|Add0~23\ & VCC))
-- \clkdiv|Add0~25\ = CARRY((\clkdiv|count\(12) & !\clkdiv|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(12),
	datad => VCC,
	cin => \clkdiv|Add0~23\,
	combout => \clkdiv|Add0~24_combout\,
	cout => \clkdiv|Add0~25\);

-- Location: FF_X46_Y46_N25
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: LCCOMB_X46_Y46_N26
\clkdiv|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~26_combout\ = (\clkdiv|count\(13) & (!\clkdiv|Add0~25\)) # (!\clkdiv|count\(13) & ((\clkdiv|Add0~25\) # (GND)))
-- \clkdiv|Add0~27\ = CARRY((!\clkdiv|Add0~25\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|Add0~25\,
	combout => \clkdiv|Add0~26_combout\,
	cout => \clkdiv|Add0~27\);

-- Location: FF_X46_Y46_N27
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: LCCOMB_X46_Y46_N28
\clkdiv|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Add0~28_combout\ = (\clkdiv|count\(14) & (\clkdiv|Add0~27\ $ (GND))) # (!\clkdiv|count\(14) & (!\clkdiv|Add0~27\ & VCC))
-- \clkdiv|Add0~29\ = CARRY((\clkdiv|count\(14) & !\clkdiv|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(14),
	datad => VCC,
	cin => \clkdiv|Add0~27\,
	combout => \clkdiv|Add0~28_combout\,
	cout => \clkdiv|Add0~29\);

-- Location: LCCOMB_X45_Y46_N18
\clkdiv|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~1_combout\ = (\clkdiv|Add0~28_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Equal0~4_combout\,
	datad => \clkdiv|Add0~28_combout\,
	combout => \clkdiv|count~1_combout\);

-- Location: FF_X45_Y46_N19
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X45_Y46_N30
\clkdiv|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count~0_combout\ = (\clkdiv|Add0~30_combout\ & ((!\clkdiv|Equal0~4_combout\) # (!\clkdiv|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|Equal0~9_combout\,
	datac => \clkdiv|Add0~30_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|count~0_combout\);

-- Location: FF_X45_Y46_N31
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X45_Y46_N10
\clkdiv|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~5_combout\ = (\clkdiv|count\(15) & (\clkdiv|count\(14) & (!\clkdiv|count\(12) & !\clkdiv|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(15),
	datab => \clkdiv|count\(14),
	datac => \clkdiv|count\(12),
	datad => \clkdiv|count\(13),
	combout => \clkdiv|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y46_N28
\clkdiv|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~6_combout\ = (!\clkdiv|count\(10) & (\clkdiv|count\(9) & (\clkdiv|count\(8) & !\clkdiv|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(10),
	datab => \clkdiv|count\(9),
	datac => \clkdiv|count\(8),
	datad => \clkdiv|count\(11),
	combout => \clkdiv|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y46_N22
\clkdiv|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~7_combout\ = (!\clkdiv|count\(7) & (\clkdiv|count\(6) & (\clkdiv|count\(4) & !\clkdiv|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(7),
	datab => \clkdiv|count\(6),
	datac => \clkdiv|count\(4),
	datad => \clkdiv|count\(5),
	combout => \clkdiv|Equal0~7_combout\);

-- Location: LCCOMB_X45_Y46_N20
\clkdiv|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~8_combout\ = (!\clkdiv|count\(3) & (!\clkdiv|count\(0) & (!\clkdiv|count\(2) & !\clkdiv|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(3),
	datab => \clkdiv|count\(0),
	datac => \clkdiv|count\(2),
	datad => \clkdiv|count\(1),
	combout => \clkdiv|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y46_N4
\clkdiv|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|Equal0~9_combout\ = (\clkdiv|Equal0~5_combout\ & (\clkdiv|Equal0~6_combout\ & (\clkdiv|Equal0~7_combout\ & \clkdiv|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|Equal0~5_combout\,
	datab => \clkdiv|Equal0~6_combout\,
	datac => \clkdiv|Equal0~7_combout\,
	datad => \clkdiv|Equal0~8_combout\,
	combout => \clkdiv|Equal0~9_combout\);

-- Location: LCCOMB_X45_Y46_N26
\clkdiv|clockout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|clockout~0_combout\ = \clkdiv|clockout~q\ $ (((\clkdiv|Equal0~9_combout\ & \clkdiv|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|clockout~q\,
	datac => \clkdiv|Equal0~9_combout\,
	datad => \clkdiv|Equal0~4_combout\,
	combout => \clkdiv|clockout~0_combout\);

-- Location: LCCOMB_X45_Y46_N12
\clkdiv|clockout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|clockout~feeder_combout\ = \clkdiv|clockout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|clockout~0_combout\,
	combout => \clkdiv|clockout~feeder_combout\);

-- Location: FF_X45_Y46_N13
\clkdiv|clockout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|clockout~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|clockout~q\);

-- Location: CLKCTRL_G12
\clkdiv|clockout~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkdiv|clockout~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkdiv|clockout~clkctrl_outclk\);

-- Location: IOIBUF_X46_Y54_N15
\button_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_n,
	o => \button_n~input_o\);

-- Location: LCCOMB_X46_Y48_N0
\count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~32_combout\ = count(0) $ (VCC)
-- \count[0]~33\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~32_combout\,
	cout => \count[0]~33\);

-- Location: LCCOMB_X47_Y48_N30
\count[0]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[0]~34_combout\ = (\button_n~input_o\) # (!\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n~input_o\,
	datad => \Equal0~10_combout\,
	combout => \count[0]~34_combout\);

-- Location: FF_X46_Y48_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[0]~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X46_Y48_N2
\count[1]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[1]~35_combout\ = (count(1) & (!\count[0]~33\)) # (!count(1) & ((\count[0]~33\) # (GND)))
-- \count[1]~36\ = CARRY((!\count[0]~33\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \count[0]~33\,
	combout => \count[1]~35_combout\,
	cout => \count[1]~36\);

-- Location: FF_X46_Y48_N3
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[1]~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X46_Y48_N4
\count[2]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[2]~37_combout\ = (count(2) & (\count[1]~36\ $ (GND))) # (!count(2) & (!\count[1]~36\ & VCC))
-- \count[2]~38\ = CARRY((count(2) & !\count[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => VCC,
	cin => \count[1]~36\,
	combout => \count[2]~37_combout\,
	cout => \count[2]~38\);

-- Location: FF_X46_Y48_N5
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[2]~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X46_Y48_N6
\count[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[3]~39_combout\ = (count(3) & (!\count[2]~38\)) # (!count(3) & ((\count[2]~38\) # (GND)))
-- \count[3]~40\ = CARRY((!\count[2]~38\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datad => VCC,
	cin => \count[2]~38\,
	combout => \count[3]~39_combout\,
	cout => \count[3]~40\);

-- Location: FF_X46_Y48_N7
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[3]~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X46_Y48_N8
\count[4]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[4]~41_combout\ = (count(4) & (\count[3]~40\ $ (GND))) # (!count(4) & (!\count[3]~40\ & VCC))
-- \count[4]~42\ = CARRY((count(4) & !\count[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~40\,
	combout => \count[4]~41_combout\,
	cout => \count[4]~42\);

-- Location: FF_X46_Y48_N9
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[4]~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X46_Y48_N10
\count[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[5]~43_combout\ = (count(5) & (!\count[4]~42\)) # (!count(5) & ((\count[4]~42\) # (GND)))
-- \count[5]~44\ = CARRY((!\count[4]~42\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datad => VCC,
	cin => \count[4]~42\,
	combout => \count[5]~43_combout\,
	cout => \count[5]~44\);

-- Location: FF_X46_Y48_N11
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[5]~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X46_Y48_N12
\count[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[6]~45_combout\ = (count(6) & (\count[5]~44\ $ (GND))) # (!count(6) & (!\count[5]~44\ & VCC))
-- \count[6]~46\ = CARRY((count(6) & !\count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(6),
	datad => VCC,
	cin => \count[5]~44\,
	combout => \count[6]~45_combout\,
	cout => \count[6]~46\);

-- Location: FF_X46_Y48_N13
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[6]~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X46_Y48_N14
\count[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[7]~47_combout\ = (count(7) & (!\count[6]~46\)) # (!count(7) & ((\count[6]~46\) # (GND)))
-- \count[7]~48\ = CARRY((!\count[6]~46\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \count[6]~46\,
	combout => \count[7]~47_combout\,
	cout => \count[7]~48\);

-- Location: FF_X46_Y48_N15
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[7]~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X46_Y48_N16
\count[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[8]~49_combout\ = (count(8) & (\count[7]~48\ $ (GND))) # (!count(8) & (!\count[7]~48\ & VCC))
-- \count[8]~50\ = CARRY((count(8) & !\count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~48\,
	combout => \count[8]~49_combout\,
	cout => \count[8]~50\);

-- Location: FF_X46_Y48_N17
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[8]~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X46_Y48_N18
\count[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[9]~51_combout\ = (count(9) & (!\count[8]~50\)) # (!count(9) & ((\count[8]~50\) # (GND)))
-- \count[9]~52\ = CARRY((!\count[8]~50\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \count[8]~50\,
	combout => \count[9]~51_combout\,
	cout => \count[9]~52\);

-- Location: FF_X46_Y48_N19
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[9]~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X46_Y48_N20
\count[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~53_combout\ = (count(10) & (\count[9]~52\ $ (GND))) # (!count(10) & (!\count[9]~52\ & VCC))
-- \count[10]~54\ = CARRY((count(10) & !\count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	datad => VCC,
	cin => \count[9]~52\,
	combout => \count[10]~53_combout\,
	cout => \count[10]~54\);

-- Location: FF_X46_Y48_N21
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[10]~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X46_Y48_N22
\count[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[11]~55_combout\ = (count(11) & (!\count[10]~54\)) # (!count(11) & ((\count[10]~54\) # (GND)))
-- \count[11]~56\ = CARRY((!\count[10]~54\) # (!count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datad => VCC,
	cin => \count[10]~54\,
	combout => \count[11]~55_combout\,
	cout => \count[11]~56\);

-- Location: FF_X46_Y48_N23
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[11]~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X46_Y48_N24
\count[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~57_combout\ = (count(12) & (\count[11]~56\ $ (GND))) # (!count(12) & (!\count[11]~56\ & VCC))
-- \count[12]~58\ = CARRY((count(12) & !\count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	datad => VCC,
	cin => \count[11]~56\,
	combout => \count[12]~57_combout\,
	cout => \count[12]~58\);

-- Location: FF_X46_Y48_N25
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[12]~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X46_Y48_N26
\count[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[13]~59_combout\ = (count(13) & (!\count[12]~58\)) # (!count(13) & ((\count[12]~58\) # (GND)))
-- \count[13]~60\ = CARRY((!\count[12]~58\) # (!count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datad => VCC,
	cin => \count[12]~58\,
	combout => \count[13]~59_combout\,
	cout => \count[13]~60\);

-- Location: FF_X46_Y48_N27
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[13]~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X46_Y48_N28
\count[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[14]~61_combout\ = (count(14) & (\count[13]~60\ $ (GND))) # (!count(14) & (!\count[13]~60\ & VCC))
-- \count[14]~62\ = CARRY((count(14) & !\count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	datad => VCC,
	cin => \count[13]~60\,
	combout => \count[14]~61_combout\,
	cout => \count[14]~62\);

-- Location: FF_X46_Y48_N29
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[14]~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X46_Y48_N30
\count[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[15]~63_combout\ = (count(15) & (!\count[14]~62\)) # (!count(15) & ((\count[14]~62\) # (GND)))
-- \count[15]~64\ = CARRY((!\count[14]~62\) # (!count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datad => VCC,
	cin => \count[14]~62\,
	combout => \count[15]~63_combout\,
	cout => \count[15]~64\);

-- Location: FF_X46_Y48_N31
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[15]~63_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X46_Y47_N0
\count[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[16]~65_combout\ = (count(16) & (\count[15]~64\ $ (GND))) # (!count(16) & (!\count[15]~64\ & VCC))
-- \count[16]~66\ = CARRY((count(16) & !\count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(16),
	datad => VCC,
	cin => \count[15]~64\,
	combout => \count[16]~65_combout\,
	cout => \count[16]~66\);

-- Location: FF_X46_Y47_N1
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[16]~65_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X46_Y47_N2
\count[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[17]~67_combout\ = (count(17) & (!\count[16]~66\)) # (!count(17) & ((\count[16]~66\) # (GND)))
-- \count[17]~68\ = CARRY((!\count[16]~66\) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(17),
	datad => VCC,
	cin => \count[16]~66\,
	combout => \count[17]~67_combout\,
	cout => \count[17]~68\);

-- Location: FF_X46_Y47_N3
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[17]~67_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X46_Y47_N4
\count[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[18]~69_combout\ = (count(18) & (\count[17]~68\ $ (GND))) # (!count(18) & (!\count[17]~68\ & VCC))
-- \count[18]~70\ = CARRY((count(18) & !\count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(18),
	datad => VCC,
	cin => \count[17]~68\,
	combout => \count[18]~69_combout\,
	cout => \count[18]~70\);

-- Location: FF_X47_Y48_N25
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[18]~69_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X46_Y47_N6
\count[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[19]~71_combout\ = (count(19) & (!\count[18]~70\)) # (!count(19) & ((\count[18]~70\) # (GND)))
-- \count[19]~72\ = CARRY((!\count[18]~70\) # (!count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	datad => VCC,
	cin => \count[18]~70\,
	combout => \count[19]~71_combout\,
	cout => \count[19]~72\);

-- Location: FF_X47_Y48_N7
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[19]~71_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X46_Y47_N8
\count[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[20]~73_combout\ = (count(20) & (\count[19]~72\ $ (GND))) # (!count(20) & (!\count[19]~72\ & VCC))
-- \count[20]~74\ = CARRY((count(20) & !\count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(20),
	datad => VCC,
	cin => \count[19]~72\,
	combout => \count[20]~73_combout\,
	cout => \count[20]~74\);

-- Location: FF_X47_Y48_N21
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[20]~73_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X46_Y47_N10
\count[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[21]~75_combout\ = (count(21) & (!\count[20]~74\)) # (!count(21) & ((\count[20]~74\) # (GND)))
-- \count[21]~76\ = CARRY((!\count[20]~74\) # (!count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	datad => VCC,
	cin => \count[20]~74\,
	combout => \count[21]~75_combout\,
	cout => \count[21]~76\);

-- Location: FF_X47_Y48_N3
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[21]~75_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X46_Y47_N12
\count[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[22]~77_combout\ = (count(22) & (\count[21]~76\ $ (GND))) # (!count(22) & (!\count[21]~76\ & VCC))
-- \count[22]~78\ = CARRY((count(22) & !\count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datad => VCC,
	cin => \count[21]~76\,
	combout => \count[22]~77_combout\,
	cout => \count[22]~78\);

-- Location: FF_X47_Y48_N29
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[22]~77_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X46_Y47_N14
\count[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[23]~79_combout\ = (count(23) & (!\count[22]~78\)) # (!count(23) & ((\count[22]~78\) # (GND)))
-- \count[23]~80\ = CARRY((!\count[22]~78\) # (!count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	datad => VCC,
	cin => \count[22]~78\,
	combout => \count[23]~79_combout\,
	cout => \count[23]~80\);

-- Location: FF_X47_Y47_N1
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[23]~79_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X46_Y47_N16
\count[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[24]~81_combout\ = (count(24) & (\count[23]~80\ $ (GND))) # (!count(24) & (!\count[23]~80\ & VCC))
-- \count[24]~82\ = CARRY((count(24) & !\count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(24),
	datad => VCC,
	cin => \count[23]~80\,
	combout => \count[24]~81_combout\,
	cout => \count[24]~82\);

-- Location: FF_X46_Y47_N17
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[24]~81_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X46_Y47_N18
\count[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[25]~83_combout\ = (count(25) & (!\count[24]~82\)) # (!count(25) & ((\count[24]~82\) # (GND)))
-- \count[25]~84\ = CARRY((!\count[24]~82\) # (!count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(25),
	datad => VCC,
	cin => \count[24]~82\,
	combout => \count[25]~83_combout\,
	cout => \count[25]~84\);

-- Location: FF_X46_Y47_N19
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[25]~83_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X46_Y47_N20
\count[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[26]~85_combout\ = (count(26) & (\count[25]~84\ $ (GND))) # (!count(26) & (!\count[25]~84\ & VCC))
-- \count[26]~86\ = CARRY((count(26) & !\count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(26),
	datad => VCC,
	cin => \count[25]~84\,
	combout => \count[26]~85_combout\,
	cout => \count[26]~86\);

-- Location: FF_X46_Y47_N21
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[26]~85_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X46_Y47_N22
\count[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[27]~87_combout\ = (count(27) & (!\count[26]~86\)) # (!count(27) & ((\count[26]~86\) # (GND)))
-- \count[27]~88\ = CARRY((!\count[26]~86\) # (!count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datad => VCC,
	cin => \count[26]~86\,
	combout => \count[27]~87_combout\,
	cout => \count[27]~88\);

-- Location: FF_X46_Y47_N23
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[27]~87_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X46_Y47_N24
\count[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[28]~89_combout\ = (count(28) & (\count[27]~88\ $ (GND))) # (!count(28) & (!\count[27]~88\ & VCC))
-- \count[28]~90\ = CARRY((count(28) & !\count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(28),
	datad => VCC,
	cin => \count[27]~88\,
	combout => \count[28]~89_combout\,
	cout => \count[28]~90\);

-- Location: FF_X46_Y47_N25
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[28]~89_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X46_Y47_N26
\count[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[29]~91_combout\ = (count(29) & (!\count[28]~90\)) # (!count(29) & ((\count[28]~90\) # (GND)))
-- \count[29]~92\ = CARRY((!\count[28]~90\) # (!count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datad => VCC,
	cin => \count[28]~90\,
	combout => \count[29]~91_combout\,
	cout => \count[29]~92\);

-- Location: FF_X46_Y47_N27
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[29]~91_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X46_Y47_N28
\count[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[30]~93_combout\ = (count(30) & (\count[29]~92\ $ (GND))) # (!count(30) & (!\count[29]~92\ & VCC))
-- \count[30]~94\ = CARRY((count(30) & !\count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(30),
	datad => VCC,
	cin => \count[29]~92\,
	combout => \count[30]~93_combout\,
	cout => \count[30]~94\);

-- Location: FF_X46_Y47_N29
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[30]~93_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X46_Y47_N30
\count[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[31]~95_combout\ = count(31) $ (\count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(31),
	cin => \count[30]~94\,
	combout => \count[31]~95_combout\);

-- Location: FF_X46_Y47_N31
\count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[31]~95_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \count[0]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(31));

-- Location: LCCOMB_X47_Y48_N22
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (count(29)) # ((count(31)) # ((count(30)) # (count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(31),
	datac => count(30),
	datad => count(28),
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X47_Y48_N8
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(24)) # ((count(27)) # ((count(26)) # (count(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(24),
	datab => count(27),
	datac => count(26),
	datad => count(25),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X47_Y48_N28
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(20)) # (count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	datad => count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X47_Y48_N24
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(19)) # ((count(16)) # ((count(18)) # (count(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(16),
	datac => count(18),
	datad => count(17),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X47_Y48_N14
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(23)) # ((\Equal0~6_combout\) # ((count(22)) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(23),
	datab => \Equal0~6_combout\,
	datac => count(22),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X47_Y48_N26
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (count(4)) # (((!count(7)) # (!count(5))) # (!count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datab => count(6),
	datac => count(5),
	datad => count(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X47_Y48_N18
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(13)) # ((count(15)) # ((count(12)) # (count(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(13),
	datab => count(15),
	datac => count(12),
	datad => count(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X47_Y48_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(0)) # ((count(2)) # ((count(1)) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X47_Y48_N12
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ((count(10)) # ((count(11)) # (!count(9)))) # (!count(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(8),
	datab => count(10),
	datac => count(11),
	datad => count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X47_Y48_N0
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\) # ((\Equal0~3_combout\) # ((\Equal0~0_combout\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X47_Y48_N16
\Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~9_combout\) # ((\Equal0~8_combout\) # ((\Equal0~7_combout\) # (\Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X47_Y48_N10
\clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~0_combout\ = (!\button_n~input_o\ & !\Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n~input_o\,
	datad => \Equal0~10_combout\,
	combout => \clk_out~0_combout\);

-- Location: FF_X47_Y48_N11
\clk_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \clk_out~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out~reg0_q\);

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


