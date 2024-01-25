Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Debouncing is
    Port(Din, CK:in std_logic;
        Dout: out std_logic);
End Debouncing;

Architecture ARCH of Debouncing is
    Component DFF1
        Port(
            D,CK:in std_logic;
            Q:out std_logic);
    End Component;

    Signal TMP: std_logic_vector(4 downto 0);
Begin
    TMP(0) <= Din;
    Lp1:For I in 1 to 4 Generate
        U1:DFF1 Port Map(TMP(I-1),CK,TMP(I));
    End Generate;
    Dout <= TMP(4) and TMP(3) and TMP(2) and TMP(1);
End ARCH;