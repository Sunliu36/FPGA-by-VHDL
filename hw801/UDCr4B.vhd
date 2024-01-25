Library IEEE;

Use IEEE.std_logic_1164.all;



Entity UDCr4B is

	Port(CL, UD, PulseIn:in std_logic;

		Q:out std_logic_vector(3 downto 0));

End UDCr4B;



Architecture ARCH of UDCr4B is 

	Component DFF1

		Port(CL,CK,T:in std_logic;

			Q, Qbar:out std_logic);

	End Component;

	Signal TMP: std_logic_vector(4 downto 0);

 Begin

	TMP(0) <= PulseIn;

	LP1: For I in 0 to 3 Generate

		U : DFF1 Port Map (CL, TMP(I) xor UD,  '1', Q(I), TMP(I+1));

	End Generate;

End ARCH;