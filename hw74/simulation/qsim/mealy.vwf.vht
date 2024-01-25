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
-- Generated on "06/07/2023 15:54:08"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mealy
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mealy_vhd_vec_tst IS
END mealy_vhd_vec_tst;
ARCHITECTURE mealy_arch OF mealy_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL Input : STD_LOGIC;
SIGNAL output : STD_LOGIC;
SIGNAL PSnumber : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT mealy
	PORT (
	CK : IN STD_LOGIC;
	Input : IN STD_LOGIC;
	output : BUFFER STD_LOGIC;
	PSnumber : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mealy
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	Input => Input,
	output => output,
	PSnumber => PSnumber
	);

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 50000 ps;
	CK <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;

-- Input
t_prcs_Input: PROCESS
BEGIN
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 50000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 30000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 30000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 40000 ps;
	Input <= '1';
	WAIT FOR 40000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 30000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 30000 ps;
	Input <= '1';
	WAIT FOR 10000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 40000 ps;
	Input <= '0';
	WAIT FOR 40000 ps;
	Input <= '1';
	WAIT FOR 150000 ps;
	Input <= '0';
	WAIT FOR 30000 ps;
	Input <= '1';
	WAIT FOR 40000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 10000 ps;
	Input <= '1';
	WAIT FOR 20000 ps;
	Input <= '0';
	WAIT FOR 20000 ps;
	Input <= '1';
WAIT;
END PROCESS t_prcs_Input;
END mealy_arch;
