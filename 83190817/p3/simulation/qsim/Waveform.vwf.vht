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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/10/2023 12:13:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clk_div
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clk_div_vhd_vec_tst IS
END clk_div_vhd_vec_tst;
ARCHITECTURE clk_div_arch OF clk_div_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk_in : STD_LOGIC;
SIGNAL clk_out : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT clk_div
	PORT (
	clk_in : IN STD_LOGIC;
	clk_out : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clk_div
	PORT MAP (
-- list connections between master ports and signals
	clk_in => clk_in,
	clk_out => clk_out,
	rst => rst
	);

-- clk_in
t_prcs_clk_in: PROCESS
BEGIN
LOOP
	clk_in <= '0';
	WAIT FOR 10000 ps;
	clk_in <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk_in;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END clk_div_arch;
