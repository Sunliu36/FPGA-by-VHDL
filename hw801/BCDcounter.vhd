Library IEEE;

Use IEEE.std_logic_1164.all;

Use IEEE.std_logic_unsigned.all;



Entity BCDcounter is

	Generic(n:integer range 0 to 999:=168);

	Port(CK:in std_logic;

		Y2,Y1,Y0: out std_logic_vector(3 downto 0));

End BCDcounter;



Architecture ARCH of BCDcounter is

	Signal Tmp2, Tmp1, Tmp0: integer range 0 to 9;

	Signal n2,n1,n0: std_logic_vector(3 downto 0);

Begin

	Tmp2 <= n/100;

	Tmp1 <= (n/10) rem 10;

	Tmp0 <= n rem 10;

	Process(Tmp2,Tmp1,Tmp0)

	Variable Output:std_logic_vector(3 downto 0);

	Variable A:integer range 0 to 9;

	Begin

		A:=Tmp0;

		Dig0: For I in 0 to 3 Loop

				If ((A mod 2)=1) Then Output(I) := '1';

				Else Output(I) := '0';

				End If;

				A := A/2;

			End Loop;

		n0 <= output;

		

		A:=Tmp1;

		Dig1:For I in 0 to 3 Loop

				If ((A mod 2)=1) Then Output(I):='1';

				Else Output(I):='0';

				End If;

				A := A/2;

			End Loop;

		n1 <= output;

	

		A:=Tmp2;

		Dig2:For I in 0 to 3 Loop

				If ((A mod 2)=1) Then Output(I):='1';

				Else Output(I):='0';

				End If;

				A := A/2;

			End Loop;

		n2 <= output;

	End Process;



	BCDcount:Process(CK)

		Variable Digit2:std_logic_vector(3 downto 0) := "0000";

		Variable Digit1:std_logic_vector(3 downto 0) := "0000";
		
		Variable Digit0:std_logic_vector(3 downto 0) := "0000";

		Begin

		If Rising_Edge(CK) Then 

			Digit0 := Digit0 + '1';

			If (Digit0=n0) and (Digit1=n1) and (Digit2=n2) Then

				Digit0 := "0000";

				Digit1 := "0000";

				Digit2 := "0000";

			Elsif Digit0="1010" Then

				Digit0 := "0000";

				Digit1 := Digit1 + '1';

				If Digit1 = "1010" Then

					Digit1 := "0000";

					Digit2 := Digit2 + '1';

				End If;

			End If;

		End If;

		Y0 <= Digit0;

		Y1 <= Digit1;

		Y2 <= Digit2;

	End Process BCDcount;

End ARCH;