Library IEEE;
Use IEEE.std_logic_1164.all;

Entity Mealy_Ex is
    Port(
        Input,CK: in std_logic;
        PState:out integer range 0 to 9;
        Output:out std_logic);
End Mealy_Ex;

Architecture FSM of Mealy_Ex is
    Type states is (S0,S1,S2,S3);
    Signal PS: states := S0;

Begin
    Process(CK)
        Variable NS: states := S0;
    Begin
        If Rising_Edge(CK) Then
            Case PS is
                when S0 =>
                    If Input='1' Then
                        NS := S1;
                        PState <= 1;
                        Output <= '0';
                    Else
                        NS := S3;
                        PState <= 3;
                        Output <= '0';
                    End If;
                when S1 =>
                    If Input='1' Then
                        NS := S2;
                        PState <= 2;
                        Output <= '0';
                    Else
                        NS := S1;
                        PState <= 1;
                        Output <= '0';
                    End If;
                when S2 =>
                    If Input='1' Then
                        NS := S3;
                        PState <= 1;
                        Output <= '0';
                    Else
                        NS := S3;
                        PState <= 1;
                        Output <= '0';
                    End If;
                when S3 =>
                    If Input='1' Then
                        NS := S0;
                        PState <= 0;
                        Output <= '1';
                    Else
                        NS := S1;
                        PState <= 1;
                        Output <= '0';
                    End If;
                when others => null;
            End Case;
        End If;
        PS <= NS;
    End Process;
End FSM;