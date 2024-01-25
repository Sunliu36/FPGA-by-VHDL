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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
-- CREATED		"Wed Mar 15 15:48:54 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY ex01 IS 
	PORT
	(
		pin01 :  IN  STD_LOGIC;
		pin02 :  IN  STD_LOGIC;
		pin03 :  IN  STD_LOGIC;
		pin04 :  IN  STD_LOGIC;
		pin05 :  IN  STD_LOGIC;
		pin06 :  IN  STD_LOGIC;
		pin07 :  IN  STD_LOGIC;
		output01 :  OUT  STD_LOGIC;
		output02 :  OUT  STD_LOGIC;
		output03 :  OUT  STD_LOGIC;
		output04 :  OUT  STD_LOGIC
	);
END ex01;

ARCHITECTURE bdf_type OF ex01 IS 



BEGIN 



output01 <= pin01 AND pin02;


output02 <= pin04 OR pin03;


output03 <= NOT(pin05);



output04 <= pin06 XOR pin07;


END bdf_type;