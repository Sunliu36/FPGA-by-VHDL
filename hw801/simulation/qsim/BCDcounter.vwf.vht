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
-- Generated on "05/03/2023 17:03:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCDcounter
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCDcounter_vhd_vec_tst IS
END BCDcounter_vhd_vec_tst;
ARCHITECTURE BCDcounter_arch OF BCDcounter_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL Y0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT BCDcounter
	PORT (
	CK : IN STD_LOGIC;
	Y0 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y2 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : BCDcounter
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	Y0 => Y0,
	Y1 => Y1,
	Y2 => Y2
	);

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 500 ps;
	CK <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;
END BCDcounter_arch;
