library IEEE;
use IEEE.std_logic_1164.all ;

entity mealy is
    Port(
        Input,CK: in std_logic ;
        PSnumber: out integer range 0 to 3 ;
        output: out std_logic );
end mealy ;

Architecture FSM of mealy is 
    Type state is (s0,s1,s2,s3) ; -- type後用 is ...
    signal ps: state := s0 ; --signal between arch and begin

begin
    Process(CK)
    Variable ns: state := s0 ;
    begin 
        if Rising_Edge(ck) then
          case ps is --這is too
            when s0 => --case後用when...=>
                if input = '1' then 
                    ns:=s1 ;
                    PSnumber<=1;
                    output<='0';
                else   
                   ns:=s3 ;
                   PSnumber<=3;
                   output<='0';
                end if ;
            when s1 => --case後用when...is
                    if input = '1' then 
                        ns:=s2 ;
                        PSnumber<=2;
                        output<='1';
                    else   
                       ns:=s1 ;
                       PSnumber<=1;
                       output<='0';
                    end if ;
            when s2 => --case後用when...is
                        if input = '1' then 
                            ns:=s3 ;
                            PSnumber<=3;
                            output<='0';
                        else   
                           ns:=s1 ;
                           PSnumber<=1;
                           output<='0';
                        end if ;
            when s3 => --case後用when...is
                            if input = '1' then 
                                ns:=s0 ;
                                PSnumber<=0;
                                output<='1';
                            else   
                               ns:=s1 ;
                               PSnumber<=1;
                               output<='0';
                            end if ;
            when others => null ; --記得用=>
        end case ;
        end if ;
        ps <= ns ; --在endif後,且用<=
    end process;
end FSM ;

                