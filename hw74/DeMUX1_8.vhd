Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DeMUX1_8 is
	Port(   S:in std_logic_vector(2 downto 0);
		A:in std_logic;
		Y:out std_logic_vector(7 downto 0));
End DeMUX1_8 ;

Architecture ARCH of DeMUX1_8 is
Begin
	Y(0) <= A when S ="000" Else 'Z';
	Y(1) <= A when S ="001" Else 'Z';
	Y(2) <= A when S ="010" Else 'Z';
	Y(3) <= A when S ="011" Else 'Z';
	Y(4) <= A when S ="100" Else 'Z';
	Y(5) <= A when S ="101" Else 'Z';
	Y(6) <= A when S ="110" Else 'Z';
	Y(7) <= A when S ="111" Else 'Z';
	
			
End ARCH;