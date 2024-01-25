Library IEEE;
Use IEEE.std_logic_1164.all;

Entity MUX8_1 is
	Port(   S:in std_logic_vector(2 downto 0);
		A:in std_logic_vector(7 downto 0);
		Y:out std_logic);
End MUX8_1 ;

Architecture ARCH of MUX8_1 is
Begin
	with S Select
	Y <= A(0) when "000",
	A(1) when "001",
	A(2) when "010",
	A(3) when "011",
	A(4) when "100",
	A(5) when "101",
	A(6) when "110",
	A(7) when others;
			
End ARCH;
