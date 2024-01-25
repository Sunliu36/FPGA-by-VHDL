Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Encoder8_3 is
	Port( EN:in std_logic;
		A:in std_logic_vector(7 downto 0);
		Y:out std_logic_vector(2 downto 0));
End Encoder8_3;

Architecture ARCH of Encoder8_3 is
      Signal TMP: std_logic_vector(8 downto 0 ) ;
Begin
	TMP <= EN&A;
	with TMP select
	Y <= "111" when  "110000000",
			"110" when "101000000",
			"101" when "100100000",
			"100" when "100010000",
			"011" when "100001000",
			"010" when "100000100",
			"001" when "100000010",
			"000" when others;
			
	
End ARCH;