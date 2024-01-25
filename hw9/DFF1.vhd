Library IEEE;
Use IEEE.std_logic_1164.all;

Entity DFF1 is
    Port(D,CK:in std_logic;
         Q:out std_logic);
End DFF1;

Architecture ARCH of DFF1 is
Begin
  Process(CK)
  Begin
    If Rising_Edge(CK) Then Q <= D;
      End If;
    End Process;
End ARCH;