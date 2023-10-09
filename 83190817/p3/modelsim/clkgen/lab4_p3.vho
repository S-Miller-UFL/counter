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

-- DATE "10/09/2023 09:44:18"

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
	clk_out : BUFFER std_logic
	);
END clk_gen;

-- Design Ports Information
-- clk_out	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|count[0]~31_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkdiv|LessThan0~1_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~0_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~2_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~9_combout\ : std_logic;
SIGNAL \clkdiv|count[0]~32\ : std_logic;
SIGNAL \clkdiv|count[1]~33_combout\ : std_logic;
SIGNAL \clkdiv|count[1]~34\ : std_logic;
SIGNAL \clkdiv|count[2]~35_combout\ : std_logic;
SIGNAL \clkdiv|count[2]~36\ : std_logic;
SIGNAL \clkdiv|count[3]~37_combout\ : std_logic;
SIGNAL \clkdiv|count[3]~38\ : std_logic;
SIGNAL \clkdiv|count[4]~39_combout\ : std_logic;
SIGNAL \clkdiv|count[4]~40\ : std_logic;
SIGNAL \clkdiv|count[5]~41_combout\ : std_logic;
SIGNAL \clkdiv|count[5]~42\ : std_logic;
SIGNAL \clkdiv|count[6]~43_combout\ : std_logic;
SIGNAL \clkdiv|count[6]~44\ : std_logic;
SIGNAL \clkdiv|count[7]~45_combout\ : std_logic;
SIGNAL \clkdiv|count[7]~46\ : std_logic;
SIGNAL \clkdiv|count[8]~47_combout\ : std_logic;
SIGNAL \clkdiv|count[8]~48\ : std_logic;
SIGNAL \clkdiv|count[9]~49_combout\ : std_logic;
SIGNAL \clkdiv|count[9]~50\ : std_logic;
SIGNAL \clkdiv|count[10]~51_combout\ : std_logic;
SIGNAL \clkdiv|count[10]~52\ : std_logic;
SIGNAL \clkdiv|count[11]~53_combout\ : std_logic;
SIGNAL \clkdiv|count[11]~54\ : std_logic;
SIGNAL \clkdiv|count[12]~55_combout\ : std_logic;
SIGNAL \clkdiv|count[12]~56\ : std_logic;
SIGNAL \clkdiv|count[13]~57_combout\ : std_logic;
SIGNAL \clkdiv|count[13]~58\ : std_logic;
SIGNAL \clkdiv|count[14]~59_combout\ : std_logic;
SIGNAL \clkdiv|count[14]~60\ : std_logic;
SIGNAL \clkdiv|count[15]~61_combout\ : std_logic;
SIGNAL \clkdiv|count[15]~62\ : std_logic;
SIGNAL \clkdiv|count[16]~63_combout\ : std_logic;
SIGNAL \clkdiv|count[16]~64\ : std_logic;
SIGNAL \clkdiv|count[17]~65_combout\ : std_logic;
SIGNAL \clkdiv|count[17]~66\ : std_logic;
SIGNAL \clkdiv|count[18]~67_combout\ : std_logic;
SIGNAL \clkdiv|count[18]~68\ : std_logic;
SIGNAL \clkdiv|count[19]~69_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~4_combout\ : std_logic;
SIGNAL \clkdiv|count[19]~70\ : std_logic;
SIGNAL \clkdiv|count[20]~71_combout\ : std_logic;
SIGNAL \clkdiv|count[20]~72\ : std_logic;
SIGNAL \clkdiv|count[21]~73_combout\ : std_logic;
SIGNAL \clkdiv|count[21]~74\ : std_logic;
SIGNAL \clkdiv|count[22]~75_combout\ : std_logic;
SIGNAL \clkdiv|count[22]~76\ : std_logic;
SIGNAL \clkdiv|count[23]~77_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~5_combout\ : std_logic;
SIGNAL \clkdiv|count[23]~78\ : std_logic;
SIGNAL \clkdiv|count[24]~79_combout\ : std_logic;
SIGNAL \clkdiv|count[24]~80\ : std_logic;
SIGNAL \clkdiv|count[25]~81_combout\ : std_logic;
SIGNAL \clkdiv|count[25]~82\ : std_logic;
SIGNAL \clkdiv|count[26]~83_combout\ : std_logic;
SIGNAL \clkdiv|count[26]~84\ : std_logic;
SIGNAL \clkdiv|count[27]~85_combout\ : std_logic;
SIGNAL \clkdiv|count[27]~86\ : std_logic;
SIGNAL \clkdiv|count[28]~87_combout\ : std_logic;
SIGNAL \clkdiv|count[28]~88\ : std_logic;
SIGNAL \clkdiv|count[29]~89_combout\ : std_logic;
SIGNAL \clkdiv|count[29]~90\ : std_logic;
SIGNAL \clkdiv|count[30]~91_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~7_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~6_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~8_combout\ : std_logic;
SIGNAL \clkdiv|LessThan0~3_combout\ : std_logic;
SIGNAL \clkdiv|clockout~0_combout\ : std_logic;
SIGNAL \clkdiv|clockout~feeder_combout\ : std_logic;
SIGNAL \clkdiv|clockout~q\ : std_logic;
SIGNAL \clkdiv|clockout~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~31_combout\ : std_logic;
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
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \count[29]~90\ : std_logic;
SIGNAL \count[30]~91_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \button_n~input_o\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \clk_out~0_combout\ : std_logic;
SIGNAL \clk_out~reg0feeder_combout\ : std_logic;
SIGNAL \clk_out~reg0_q\ : std_logic;
SIGNAL count : std_logic_vector(30 DOWNTO 0);
SIGNAL \clkdiv|count\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clk_out~0_combout\ : std_logic;

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

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_clk_out~0_combout\ <= NOT \clk_out~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X0_Y16_N9
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

-- Location: LCCOMB_X50_Y15_N2
\clkdiv|count[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[0]~31_combout\ = \clkdiv|count\(0) $ (VCC)
-- \clkdiv|count[0]~32\ = CARRY(\clkdiv|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(0),
	datad => VCC,
	combout => \clkdiv|count[0]~31_combout\,
	cout => \clkdiv|count[0]~32\);

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

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X50_Y15_N0
\clkdiv|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~1_combout\ = (!\clkdiv|count\(7) & (((!\clkdiv|count\(5) & !\clkdiv|count\(4))) # (!\clkdiv|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(5),
	datab => \clkdiv|count\(6),
	datac => \clkdiv|count\(4),
	datad => \clkdiv|count\(7),
	combout => \clkdiv|LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y14_N24
\clkdiv|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~0_combout\ = (!\clkdiv|count\(13) & (!\clkdiv|count\(12) & (!\clkdiv|count\(10) & !\clkdiv|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datab => \clkdiv|count\(12),
	datac => \clkdiv|count\(10),
	datad => \clkdiv|count\(11),
	combout => \clkdiv|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y14_N22
\clkdiv|LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~2_combout\ = (\clkdiv|LessThan0~0_combout\ & (((\clkdiv|LessThan0~1_combout\) # (!\clkdiv|count\(8))) # (!\clkdiv|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(9),
	datab => \clkdiv|count\(8),
	datac => \clkdiv|LessThan0~1_combout\,
	datad => \clkdiv|LessThan0~0_combout\,
	combout => \clkdiv|LessThan0~2_combout\);

-- Location: LCCOMB_X49_Y14_N0
\clkdiv|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~9_combout\ = ((\clkdiv|count\(15) & (\clkdiv|count\(14) & !\clkdiv|LessThan0~2_combout\))) # (!\clkdiv|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(15),
	datab => \clkdiv|count\(14),
	datac => \clkdiv|LessThan0~2_combout\,
	datad => \clkdiv|LessThan0~8_combout\,
	combout => \clkdiv|LessThan0~9_combout\);

-- Location: FF_X50_Y15_N3
\clkdiv|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[0]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(0));

-- Location: LCCOMB_X50_Y15_N4
\clkdiv|count[1]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[1]~33_combout\ = (\clkdiv|count\(1) & (!\clkdiv|count[0]~32\)) # (!\clkdiv|count\(1) & ((\clkdiv|count[0]~32\) # (GND)))
-- \clkdiv|count[1]~34\ = CARRY((!\clkdiv|count[0]~32\) # (!\clkdiv|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(1),
	datad => VCC,
	cin => \clkdiv|count[0]~32\,
	combout => \clkdiv|count[1]~33_combout\,
	cout => \clkdiv|count[1]~34\);

-- Location: FF_X50_Y15_N5
\clkdiv|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[1]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(1));

-- Location: LCCOMB_X50_Y15_N6
\clkdiv|count[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[2]~35_combout\ = (\clkdiv|count\(2) & (\clkdiv|count[1]~34\ $ (GND))) # (!\clkdiv|count\(2) & (!\clkdiv|count[1]~34\ & VCC))
-- \clkdiv|count[2]~36\ = CARRY((\clkdiv|count\(2) & !\clkdiv|count[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(2),
	datad => VCC,
	cin => \clkdiv|count[1]~34\,
	combout => \clkdiv|count[2]~35_combout\,
	cout => \clkdiv|count[2]~36\);

-- Location: FF_X50_Y15_N7
\clkdiv|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[2]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(2));

-- Location: LCCOMB_X50_Y15_N8
\clkdiv|count[3]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[3]~37_combout\ = (\clkdiv|count\(3) & (!\clkdiv|count[2]~36\)) # (!\clkdiv|count\(3) & ((\clkdiv|count[2]~36\) # (GND)))
-- \clkdiv|count[3]~38\ = CARRY((!\clkdiv|count[2]~36\) # (!\clkdiv|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(3),
	datad => VCC,
	cin => \clkdiv|count[2]~36\,
	combout => \clkdiv|count[3]~37_combout\,
	cout => \clkdiv|count[3]~38\);

-- Location: FF_X50_Y15_N9
\clkdiv|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[3]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(3));

-- Location: LCCOMB_X50_Y15_N10
\clkdiv|count[4]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[4]~39_combout\ = (\clkdiv|count\(4) & (\clkdiv|count[3]~38\ $ (GND))) # (!\clkdiv|count\(4) & (!\clkdiv|count[3]~38\ & VCC))
-- \clkdiv|count[4]~40\ = CARRY((\clkdiv|count\(4) & !\clkdiv|count[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(4),
	datad => VCC,
	cin => \clkdiv|count[3]~38\,
	combout => \clkdiv|count[4]~39_combout\,
	cout => \clkdiv|count[4]~40\);

-- Location: FF_X50_Y15_N11
\clkdiv|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[4]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(4));

-- Location: LCCOMB_X50_Y15_N12
\clkdiv|count[5]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[5]~41_combout\ = (\clkdiv|count\(5) & (!\clkdiv|count[4]~40\)) # (!\clkdiv|count\(5) & ((\clkdiv|count[4]~40\) # (GND)))
-- \clkdiv|count[5]~42\ = CARRY((!\clkdiv|count[4]~40\) # (!\clkdiv|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(5),
	datad => VCC,
	cin => \clkdiv|count[4]~40\,
	combout => \clkdiv|count[5]~41_combout\,
	cout => \clkdiv|count[5]~42\);

-- Location: FF_X50_Y15_N13
\clkdiv|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[5]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(5));

-- Location: LCCOMB_X50_Y15_N14
\clkdiv|count[6]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[6]~43_combout\ = (\clkdiv|count\(6) & (\clkdiv|count[5]~42\ $ (GND))) # (!\clkdiv|count\(6) & (!\clkdiv|count[5]~42\ & VCC))
-- \clkdiv|count[6]~44\ = CARRY((\clkdiv|count\(6) & !\clkdiv|count[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(6),
	datad => VCC,
	cin => \clkdiv|count[5]~42\,
	combout => \clkdiv|count[6]~43_combout\,
	cout => \clkdiv|count[6]~44\);

-- Location: FF_X50_Y15_N15
\clkdiv|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[6]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(6));

-- Location: LCCOMB_X50_Y15_N16
\clkdiv|count[7]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[7]~45_combout\ = (\clkdiv|count\(7) & (!\clkdiv|count[6]~44\)) # (!\clkdiv|count\(7) & ((\clkdiv|count[6]~44\) # (GND)))
-- \clkdiv|count[7]~46\ = CARRY((!\clkdiv|count[6]~44\) # (!\clkdiv|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(7),
	datad => VCC,
	cin => \clkdiv|count[6]~44\,
	combout => \clkdiv|count[7]~45_combout\,
	cout => \clkdiv|count[7]~46\);

-- Location: FF_X50_Y15_N17
\clkdiv|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[7]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(7));

-- Location: LCCOMB_X50_Y15_N18
\clkdiv|count[8]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[8]~47_combout\ = (\clkdiv|count\(8) & (\clkdiv|count[7]~46\ $ (GND))) # (!\clkdiv|count\(8) & (!\clkdiv|count[7]~46\ & VCC))
-- \clkdiv|count[8]~48\ = CARRY((\clkdiv|count\(8) & !\clkdiv|count[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(8),
	datad => VCC,
	cin => \clkdiv|count[7]~46\,
	combout => \clkdiv|count[8]~47_combout\,
	cout => \clkdiv|count[8]~48\);

-- Location: FF_X50_Y15_N19
\clkdiv|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[8]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(8));

-- Location: LCCOMB_X50_Y15_N20
\clkdiv|count[9]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[9]~49_combout\ = (\clkdiv|count\(9) & (!\clkdiv|count[8]~48\)) # (!\clkdiv|count\(9) & ((\clkdiv|count[8]~48\) # (GND)))
-- \clkdiv|count[9]~50\ = CARRY((!\clkdiv|count[8]~48\) # (!\clkdiv|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(9),
	datad => VCC,
	cin => \clkdiv|count[8]~48\,
	combout => \clkdiv|count[9]~49_combout\,
	cout => \clkdiv|count[9]~50\);

-- Location: FF_X50_Y15_N21
\clkdiv|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[9]~49_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(9));

-- Location: LCCOMB_X50_Y15_N22
\clkdiv|count[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[10]~51_combout\ = (\clkdiv|count\(10) & (\clkdiv|count[9]~50\ $ (GND))) # (!\clkdiv|count\(10) & (!\clkdiv|count[9]~50\ & VCC))
-- \clkdiv|count[10]~52\ = CARRY((\clkdiv|count\(10) & !\clkdiv|count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(10),
	datad => VCC,
	cin => \clkdiv|count[9]~50\,
	combout => \clkdiv|count[10]~51_combout\,
	cout => \clkdiv|count[10]~52\);

-- Location: FF_X50_Y15_N23
\clkdiv|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[10]~51_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(10));

-- Location: LCCOMB_X50_Y15_N24
\clkdiv|count[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[11]~53_combout\ = (\clkdiv|count\(11) & (!\clkdiv|count[10]~52\)) # (!\clkdiv|count\(11) & ((\clkdiv|count[10]~52\) # (GND)))
-- \clkdiv|count[11]~54\ = CARRY((!\clkdiv|count[10]~52\) # (!\clkdiv|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(11),
	datad => VCC,
	cin => \clkdiv|count[10]~52\,
	combout => \clkdiv|count[11]~53_combout\,
	cout => \clkdiv|count[11]~54\);

-- Location: FF_X50_Y15_N25
\clkdiv|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[11]~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(11));

-- Location: LCCOMB_X50_Y15_N26
\clkdiv|count[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[12]~55_combout\ = (\clkdiv|count\(12) & (\clkdiv|count[11]~54\ $ (GND))) # (!\clkdiv|count\(12) & (!\clkdiv|count[11]~54\ & VCC))
-- \clkdiv|count[12]~56\ = CARRY((\clkdiv|count\(12) & !\clkdiv|count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(12),
	datad => VCC,
	cin => \clkdiv|count[11]~54\,
	combout => \clkdiv|count[12]~55_combout\,
	cout => \clkdiv|count[12]~56\);

-- Location: FF_X50_Y15_N27
\clkdiv|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[12]~55_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(12));

-- Location: LCCOMB_X50_Y15_N28
\clkdiv|count[13]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[13]~57_combout\ = (\clkdiv|count\(13) & (!\clkdiv|count[12]~56\)) # (!\clkdiv|count\(13) & ((\clkdiv|count[12]~56\) # (GND)))
-- \clkdiv|count[13]~58\ = CARRY((!\clkdiv|count[12]~56\) # (!\clkdiv|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(13),
	datad => VCC,
	cin => \clkdiv|count[12]~56\,
	combout => \clkdiv|count[13]~57_combout\,
	cout => \clkdiv|count[13]~58\);

-- Location: FF_X49_Y14_N31
\clkdiv|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \clkdiv|count[13]~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(13));

-- Location: LCCOMB_X50_Y15_N30
\clkdiv|count[14]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[14]~59_combout\ = (\clkdiv|count\(14) & (\clkdiv|count[13]~58\ $ (GND))) # (!\clkdiv|count\(14) & (!\clkdiv|count[13]~58\ & VCC))
-- \clkdiv|count[14]~60\ = CARRY((\clkdiv|count\(14) & !\clkdiv|count[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(14),
	datad => VCC,
	cin => \clkdiv|count[13]~58\,
	combout => \clkdiv|count[14]~59_combout\,
	cout => \clkdiv|count[14]~60\);

-- Location: FF_X50_Y15_N31
\clkdiv|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[14]~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(14));

-- Location: LCCOMB_X50_Y14_N0
\clkdiv|count[15]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[15]~61_combout\ = (\clkdiv|count\(15) & (!\clkdiv|count[14]~60\)) # (!\clkdiv|count\(15) & ((\clkdiv|count[14]~60\) # (GND)))
-- \clkdiv|count[15]~62\ = CARRY((!\clkdiv|count[14]~60\) # (!\clkdiv|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(15),
	datad => VCC,
	cin => \clkdiv|count[14]~60\,
	combout => \clkdiv|count[15]~61_combout\,
	cout => \clkdiv|count[15]~62\);

-- Location: FF_X50_Y14_N1
\clkdiv|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[15]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(15));

-- Location: LCCOMB_X50_Y14_N2
\clkdiv|count[16]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[16]~63_combout\ = (\clkdiv|count\(16) & (\clkdiv|count[15]~62\ $ (GND))) # (!\clkdiv|count\(16) & (!\clkdiv|count[15]~62\ & VCC))
-- \clkdiv|count[16]~64\ = CARRY((\clkdiv|count\(16) & !\clkdiv|count[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(16),
	datad => VCC,
	cin => \clkdiv|count[15]~62\,
	combout => \clkdiv|count[16]~63_combout\,
	cout => \clkdiv|count[16]~64\);

-- Location: FF_X50_Y14_N3
\clkdiv|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[16]~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(16));

-- Location: LCCOMB_X50_Y14_N4
\clkdiv|count[17]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[17]~65_combout\ = (\clkdiv|count\(17) & (!\clkdiv|count[16]~64\)) # (!\clkdiv|count\(17) & ((\clkdiv|count[16]~64\) # (GND)))
-- \clkdiv|count[17]~66\ = CARRY((!\clkdiv|count[16]~64\) # (!\clkdiv|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(17),
	datad => VCC,
	cin => \clkdiv|count[16]~64\,
	combout => \clkdiv|count[17]~65_combout\,
	cout => \clkdiv|count[17]~66\);

-- Location: FF_X50_Y14_N5
\clkdiv|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[17]~65_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(17));

-- Location: LCCOMB_X50_Y14_N6
\clkdiv|count[18]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[18]~67_combout\ = (\clkdiv|count\(18) & (\clkdiv|count[17]~66\ $ (GND))) # (!\clkdiv|count\(18) & (!\clkdiv|count[17]~66\ & VCC))
-- \clkdiv|count[18]~68\ = CARRY((\clkdiv|count\(18) & !\clkdiv|count[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(18),
	datad => VCC,
	cin => \clkdiv|count[17]~66\,
	combout => \clkdiv|count[18]~67_combout\,
	cout => \clkdiv|count[18]~68\);

-- Location: FF_X50_Y14_N7
\clkdiv|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[18]~67_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(18));

-- Location: LCCOMB_X50_Y14_N8
\clkdiv|count[19]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[19]~69_combout\ = (\clkdiv|count\(19) & (!\clkdiv|count[18]~68\)) # (!\clkdiv|count\(19) & ((\clkdiv|count[18]~68\) # (GND)))
-- \clkdiv|count[19]~70\ = CARRY((!\clkdiv|count[18]~68\) # (!\clkdiv|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(19),
	datad => VCC,
	cin => \clkdiv|count[18]~68\,
	combout => \clkdiv|count[19]~69_combout\,
	cout => \clkdiv|count[19]~70\);

-- Location: FF_X50_Y14_N9
\clkdiv|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[19]~69_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(19));

-- Location: LCCOMB_X49_Y14_N10
\clkdiv|LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~4_combout\ = (!\clkdiv|count\(17) & (!\clkdiv|count\(19) & (!\clkdiv|count\(18) & !\clkdiv|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(17),
	datab => \clkdiv|count\(19),
	datac => \clkdiv|count\(18),
	datad => \clkdiv|count\(16),
	combout => \clkdiv|LessThan0~4_combout\);

-- Location: LCCOMB_X50_Y14_N10
\clkdiv|count[20]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[20]~71_combout\ = (\clkdiv|count\(20) & (\clkdiv|count[19]~70\ $ (GND))) # (!\clkdiv|count\(20) & (!\clkdiv|count[19]~70\ & VCC))
-- \clkdiv|count[20]~72\ = CARRY((\clkdiv|count\(20) & !\clkdiv|count[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(20),
	datad => VCC,
	cin => \clkdiv|count[19]~70\,
	combout => \clkdiv|count[20]~71_combout\,
	cout => \clkdiv|count[20]~72\);

-- Location: FF_X50_Y14_N11
\clkdiv|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[20]~71_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(20));

-- Location: LCCOMB_X50_Y14_N12
\clkdiv|count[21]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[21]~73_combout\ = (\clkdiv|count\(21) & (!\clkdiv|count[20]~72\)) # (!\clkdiv|count\(21) & ((\clkdiv|count[20]~72\) # (GND)))
-- \clkdiv|count[21]~74\ = CARRY((!\clkdiv|count[20]~72\) # (!\clkdiv|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(21),
	datad => VCC,
	cin => \clkdiv|count[20]~72\,
	combout => \clkdiv|count[21]~73_combout\,
	cout => \clkdiv|count[21]~74\);

-- Location: FF_X50_Y14_N13
\clkdiv|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[21]~73_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(21));

-- Location: LCCOMB_X50_Y14_N14
\clkdiv|count[22]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[22]~75_combout\ = (\clkdiv|count\(22) & (\clkdiv|count[21]~74\ $ (GND))) # (!\clkdiv|count\(22) & (!\clkdiv|count[21]~74\ & VCC))
-- \clkdiv|count[22]~76\ = CARRY((\clkdiv|count\(22) & !\clkdiv|count[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(22),
	datad => VCC,
	cin => \clkdiv|count[21]~74\,
	combout => \clkdiv|count[22]~75_combout\,
	cout => \clkdiv|count[22]~76\);

-- Location: FF_X50_Y14_N15
\clkdiv|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[22]~75_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(22));

-- Location: LCCOMB_X50_Y14_N16
\clkdiv|count[23]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[23]~77_combout\ = (\clkdiv|count\(23) & (!\clkdiv|count[22]~76\)) # (!\clkdiv|count\(23) & ((\clkdiv|count[22]~76\) # (GND)))
-- \clkdiv|count[23]~78\ = CARRY((!\clkdiv|count[22]~76\) # (!\clkdiv|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(23),
	datad => VCC,
	cin => \clkdiv|count[22]~76\,
	combout => \clkdiv|count[23]~77_combout\,
	cout => \clkdiv|count[23]~78\);

-- Location: FF_X50_Y14_N17
\clkdiv|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[23]~77_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(23));

-- Location: LCCOMB_X49_Y14_N20
\clkdiv|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~5_combout\ = (!\clkdiv|count\(22) & (!\clkdiv|count\(21) & (!\clkdiv|count\(20) & !\clkdiv|count\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(22),
	datab => \clkdiv|count\(21),
	datac => \clkdiv|count\(20),
	datad => \clkdiv|count\(23),
	combout => \clkdiv|LessThan0~5_combout\);

-- Location: LCCOMB_X50_Y14_N18
\clkdiv|count[24]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[24]~79_combout\ = (\clkdiv|count\(24) & (\clkdiv|count[23]~78\ $ (GND))) # (!\clkdiv|count\(24) & (!\clkdiv|count[23]~78\ & VCC))
-- \clkdiv|count[24]~80\ = CARRY((\clkdiv|count\(24) & !\clkdiv|count[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(24),
	datad => VCC,
	cin => \clkdiv|count[23]~78\,
	combout => \clkdiv|count[24]~79_combout\,
	cout => \clkdiv|count[24]~80\);

-- Location: FF_X50_Y14_N19
\clkdiv|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[24]~79_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(24));

-- Location: LCCOMB_X50_Y14_N20
\clkdiv|count[25]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[25]~81_combout\ = (\clkdiv|count\(25) & (!\clkdiv|count[24]~80\)) # (!\clkdiv|count\(25) & ((\clkdiv|count[24]~80\) # (GND)))
-- \clkdiv|count[25]~82\ = CARRY((!\clkdiv|count[24]~80\) # (!\clkdiv|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(25),
	datad => VCC,
	cin => \clkdiv|count[24]~80\,
	combout => \clkdiv|count[25]~81_combout\,
	cout => \clkdiv|count[25]~82\);

-- Location: FF_X50_Y14_N21
\clkdiv|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[25]~81_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(25));

-- Location: LCCOMB_X50_Y14_N22
\clkdiv|count[26]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[26]~83_combout\ = (\clkdiv|count\(26) & (\clkdiv|count[25]~82\ $ (GND))) # (!\clkdiv|count\(26) & (!\clkdiv|count[25]~82\ & VCC))
-- \clkdiv|count[26]~84\ = CARRY((\clkdiv|count\(26) & !\clkdiv|count[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(26),
	datad => VCC,
	cin => \clkdiv|count[25]~82\,
	combout => \clkdiv|count[26]~83_combout\,
	cout => \clkdiv|count[26]~84\);

-- Location: FF_X50_Y14_N23
\clkdiv|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[26]~83_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(26));

-- Location: LCCOMB_X50_Y14_N24
\clkdiv|count[27]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[27]~85_combout\ = (\clkdiv|count\(27) & (!\clkdiv|count[26]~84\)) # (!\clkdiv|count\(27) & ((\clkdiv|count[26]~84\) # (GND)))
-- \clkdiv|count[27]~86\ = CARRY((!\clkdiv|count[26]~84\) # (!\clkdiv|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(27),
	datad => VCC,
	cin => \clkdiv|count[26]~84\,
	combout => \clkdiv|count[27]~85_combout\,
	cout => \clkdiv|count[27]~86\);

-- Location: FF_X50_Y14_N25
\clkdiv|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[27]~85_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(27));

-- Location: LCCOMB_X50_Y14_N26
\clkdiv|count[28]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[28]~87_combout\ = (\clkdiv|count\(28) & (\clkdiv|count[27]~86\ $ (GND))) # (!\clkdiv|count\(28) & (!\clkdiv|count[27]~86\ & VCC))
-- \clkdiv|count[28]~88\ = CARRY((\clkdiv|count\(28) & !\clkdiv|count[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(28),
	datad => VCC,
	cin => \clkdiv|count[27]~86\,
	combout => \clkdiv|count[28]~87_combout\,
	cout => \clkdiv|count[28]~88\);

-- Location: FF_X50_Y14_N27
\clkdiv|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[28]~87_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(28));

-- Location: LCCOMB_X50_Y14_N28
\clkdiv|count[29]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[29]~89_combout\ = (\clkdiv|count\(29) & (!\clkdiv|count[28]~88\)) # (!\clkdiv|count\(29) & ((\clkdiv|count[28]~88\) # (GND)))
-- \clkdiv|count[29]~90\ = CARRY((!\clkdiv|count[28]~88\) # (!\clkdiv|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkdiv|count\(29),
	datad => VCC,
	cin => \clkdiv|count[28]~88\,
	combout => \clkdiv|count[29]~89_combout\,
	cout => \clkdiv|count[29]~90\);

-- Location: FF_X50_Y14_N29
\clkdiv|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[29]~89_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(29));

-- Location: LCCOMB_X50_Y14_N30
\clkdiv|count[30]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|count[30]~91_combout\ = \clkdiv|count\(30) $ (!\clkdiv|count[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(30),
	cin => \clkdiv|count[29]~90\,
	combout => \clkdiv|count[30]~91_combout\);

-- Location: FF_X50_Y14_N31
\clkdiv|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|count[30]~91_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \clkdiv|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|count\(30));

-- Location: LCCOMB_X49_Y14_N26
\clkdiv|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~7_combout\ = (!\clkdiv|count\(30) & (!\clkdiv|count\(28) & !\clkdiv|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(30),
	datac => \clkdiv|count\(28),
	datad => \clkdiv|count\(29),
	combout => \clkdiv|LessThan0~7_combout\);

-- Location: LCCOMB_X49_Y14_N16
\clkdiv|LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~6_combout\ = (!\clkdiv|count\(25) & (!\clkdiv|count\(27) & (!\clkdiv|count\(26) & !\clkdiv|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|count\(25),
	datab => \clkdiv|count\(27),
	datac => \clkdiv|count\(26),
	datad => \clkdiv|count\(24),
	combout => \clkdiv|LessThan0~6_combout\);

-- Location: LCCOMB_X49_Y14_N12
\clkdiv|LessThan0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~8_combout\ = (\clkdiv|LessThan0~4_combout\ & (\clkdiv|LessThan0~5_combout\ & (\clkdiv|LessThan0~7_combout\ & \clkdiv|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|LessThan0~4_combout\,
	datab => \clkdiv|LessThan0~5_combout\,
	datac => \clkdiv|LessThan0~7_combout\,
	datad => \clkdiv|LessThan0~6_combout\,
	combout => \clkdiv|LessThan0~8_combout\);

-- Location: LCCOMB_X49_Y14_N28
\clkdiv|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|LessThan0~3_combout\ = (!\clkdiv|count\(15)) # (!\clkdiv|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkdiv|count\(14),
	datad => \clkdiv|count\(15),
	combout => \clkdiv|LessThan0~3_combout\);

-- Location: LCCOMB_X49_Y14_N14
\clkdiv|clockout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clkdiv|clockout~0_combout\ = \clkdiv|clockout~q\ $ ((((!\clkdiv|LessThan0~3_combout\ & !\clkdiv|LessThan0~2_combout\)) # (!\clkdiv|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkdiv|LessThan0~8_combout\,
	datab => \clkdiv|LessThan0~3_combout\,
	datac => \clkdiv|LessThan0~2_combout\,
	datad => \clkdiv|clockout~q\,
	combout => \clkdiv|clockout~0_combout\);

-- Location: LCCOMB_X49_Y14_N18
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

-- Location: FF_X49_Y14_N19
\clkdiv|clockout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \clkdiv|clockout~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkdiv|clockout~q\);

-- Location: CLKCTRL_G15
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

-- Location: LCCOMB_X14_Y17_N2
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

-- Location: FF_X14_Y17_N3
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[0]~31_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X14_Y17_N4
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

-- Location: FF_X14_Y17_N5
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[1]~33_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X14_Y17_N6
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

-- Location: FF_X14_Y17_N7
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[2]~35_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X14_Y17_N8
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

-- Location: FF_X14_Y17_N9
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[3]~37_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X14_Y17_N10
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

-- Location: FF_X14_Y17_N11
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[4]~39_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X14_Y17_N12
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

-- Location: FF_X14_Y17_N13
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[5]~41_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X14_Y17_N14
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

-- Location: FF_X14_Y17_N15
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[6]~43_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X14_Y17_N16
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

-- Location: FF_X14_Y17_N17
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[7]~45_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X14_Y17_N18
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

-- Location: FF_X14_Y17_N19
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[8]~47_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X14_Y17_N20
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

-- Location: FF_X14_Y17_N21
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[9]~49_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X14_Y17_N22
\count[10]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[10]~51_combout\ = (count(10) & (\count[9]~50\ $ (GND))) # (!count(10) & (!\count[9]~50\ & VCC))
-- \count[10]~52\ = CARRY((count(10) & !\count[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datad => VCC,
	cin => \count[9]~50\,
	combout => \count[10]~51_combout\,
	cout => \count[10]~52\);

-- Location: FF_X14_Y17_N23
\count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[10]~51_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(10));

-- Location: LCCOMB_X14_Y17_N24
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

-- Location: FF_X14_Y17_N25
\count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[11]~53_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(11));

-- Location: LCCOMB_X14_Y17_N26
\count[12]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \count[12]~55_combout\ = (count(12) & (\count[11]~54\ $ (GND))) # (!count(12) & (!\count[11]~54\ & VCC))
-- \count[12]~56\ = CARRY((count(12) & !\count[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(12),
	datad => VCC,
	cin => \count[11]~54\,
	combout => \count[12]~55_combout\,
	cout => \count[12]~56\);

-- Location: FF_X14_Y17_N27
\count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[12]~55_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(12));

-- Location: LCCOMB_X14_Y17_N28
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

-- Location: FF_X15_Y16_N17
\count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[13]~57_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(13));

-- Location: LCCOMB_X14_Y17_N30
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

-- Location: FF_X15_Y16_N27
\count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	asdata => \count[14]~59_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(14));

-- Location: LCCOMB_X14_Y16_N0
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

-- Location: FF_X14_Y16_N1
\count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[15]~61_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(15));

-- Location: LCCOMB_X14_Y16_N2
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

-- Location: FF_X14_Y16_N3
\count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[16]~63_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(16));

-- Location: LCCOMB_X14_Y16_N4
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

-- Location: FF_X14_Y16_N5
\count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[17]~65_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(17));

-- Location: LCCOMB_X14_Y16_N6
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

-- Location: FF_X14_Y16_N7
\count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[18]~67_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(18));

-- Location: LCCOMB_X14_Y16_N8
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

-- Location: FF_X14_Y16_N9
\count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[19]~69_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(19));

-- Location: LCCOMB_X14_Y16_N10
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

-- Location: FF_X14_Y16_N11
\count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[20]~71_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(20));

-- Location: LCCOMB_X14_Y16_N12
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

-- Location: FF_X14_Y16_N13
\count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[21]~73_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(21));

-- Location: LCCOMB_X14_Y16_N14
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

-- Location: FF_X14_Y16_N15
\count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[22]~75_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(22));

-- Location: LCCOMB_X14_Y16_N16
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

-- Location: FF_X14_Y16_N17
\count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[23]~77_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(23));

-- Location: LCCOMB_X14_Y16_N18
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

-- Location: FF_X14_Y16_N19
\count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[24]~79_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(24));

-- Location: LCCOMB_X14_Y16_N20
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

-- Location: FF_X14_Y16_N21
\count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[25]~81_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(25));

-- Location: LCCOMB_X14_Y16_N22
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

-- Location: FF_X14_Y16_N23
\count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[26]~83_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(26));

-- Location: LCCOMB_X14_Y16_N24
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

-- Location: FF_X14_Y16_N25
\count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[27]~85_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(27));

-- Location: LCCOMB_X14_Y16_N26
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

-- Location: FF_X14_Y16_N27
\count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[28]~87_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(28));

-- Location: LCCOMB_X14_Y16_N28
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

-- Location: FF_X14_Y16_N29
\count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[29]~89_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(29));

-- Location: LCCOMB_X15_Y16_N8
\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (count(27)) # ((count(26)) # ((count(25)) # (count(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(27),
	datab => count(26),
	datac => count(25),
	datad => count(24),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X14_Y16_N30
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

-- Location: FF_X14_Y16_N31
\count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \count[30]~91_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \ALT_INV_clk_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(30));

-- Location: LCCOMB_X15_Y16_N6
\Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (count(29)) # ((count(28)) # ((\Equal0~8_combout\) # (count(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(29),
	datab => count(28),
	datac => \Equal0~8_combout\,
	datad => count(30),
	combout => \Equal0~9_combout\);

-- Location: IOIBUF_X0_Y16_N15
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

-- Location: LCCOMB_X15_Y16_N4
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (count(20)) # (count(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(20),
	datad => count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X15_Y16_N18
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (count(19)) # ((count(17)) # ((count(18)) # (count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(19),
	datab => count(17),
	datac => count(18),
	datad => count(16),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X15_Y16_N30
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (count(22)) # ((\Equal0~6_combout\) # ((count(23)) # (\Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	datab => \Equal0~6_combout\,
	datac => count(23),
	datad => \Equal0~5_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X15_Y16_N22
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(2)) # ((count(1)) # ((count(0)) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(0),
	datad => count(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X14_Y17_N0
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (((count(4)) # (!count(7))) # (!count(6))) # (!count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(6),
	datac => count(4),
	datad => count(7),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y16_N14
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (count(15)) # ((count(13)) # ((count(14)) # (count(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(15),
	datab => count(13),
	datac => count(14),
	datad => count(12),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X15_Y16_N28
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (count(11)) # ((count(10)) # ((!count(9)) # (!count(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(11),
	datab => count(10),
	datac => count(8),
	datad => count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X15_Y16_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\Equal0~3_combout\) # (\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X15_Y16_N0
\clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~0_combout\ = (!\button_n~input_o\ & ((\Equal0~9_combout\) # ((\Equal0~7_combout\) # (\Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \button_n~input_o\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~4_combout\,
	combout => \clk_out~0_combout\);

-- Location: LCCOMB_X15_Y16_N12
\clk_out~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_out~reg0feeder_combout\ = \clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_out~0_combout\,
	combout => \clk_out~reg0feeder_combout\);

-- Location: FF_X15_Y16_N13
\clk_out~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkdiv|clockout~clkctrl_outclk\,
	d => \clk_out~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
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


