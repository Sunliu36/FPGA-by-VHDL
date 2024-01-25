library IEEE ;
USE IEEE.std_logic_1164.all ; --std_logic_1164不要忘

Entity dff1 is 
    Port(
        CL,CK,T :in std_logic ;
        Q,Qbar: out std_logic );
end dff1 ;

architecture arch of dff1 is --arch後是of (entity name)
begin --在process上面
    Process(CL,CK)
      Variable tmp: std_logic ;
      begin
      
        If CL='1' THEN tmp := '0' ;
        elsif Rising_Edge(ck) then
            If t='1' then tmp := not tmp ;
            Else null ; 
            End If ;--所有end後面都要加括號
        End If ;
        Q <= tmp ;
        Qbar <= not tmp ;
    End Process ;

END arch ;
