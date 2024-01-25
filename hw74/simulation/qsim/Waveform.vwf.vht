-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/26/2023 17:24:58"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DeMUX1_8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DeMUX1_8_vhd_vec_tst IS
END DeMUX1_8_vhd_vec_tst;
ARCHITECTURE DeMUX1_8_arch OF DeMUX1_8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT DeMUX1_8
	PORT (
	A : IN STD_LOGIC;
	S : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DeMUX1_8
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	S => S,
	Y => Y
	);

-- A
t_prcs_A: PROCESS
BEGIN
	FOR i IN 1 TO 160
	LOOP
		A <= '0';
		WAIT FOR 2500 ps;
		A <= '1';
		WAIT FOR 2500 ps;
	END LOOP;
	A <= '0';
WAIT;
END PROCESS t_prcs_A;
-- S[2]
t_prcs_S_2: PROCESS
BEGIN
	S(2) <= '0';
	WAIT FOR 400000 ps;
	S(2) <= '1';
	WAIT FOR 400000 ps;
	S(2) <= '0';
WAIT;
END PROCESS t_prcs_S_2;
-- S[1]
t_prcs_S_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		S(1) <= '0';
		WAIT FOR 200000 ps;
		S(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	S(1) <= '0';
WAIT;
END PROCESS t_prcs_S_1;
-- S[0]
t_prcs_S_0: PROCESS
BEGIN
LOOP
	S(0) <= '0';
	WAIT FOR 100000 ps;
	S(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_S_0;
END DeMUX1_8_arch;
