library IEEE;
use IEEE.std_logic_1164.all ;
use IEEE.std_logic_unsigned.all ;

Entity bcdadder is
    Port( A: in integer range 0 to 99 ;
          B: in integer range 0 to 99 ;
          y0,y1,y2: out std_logic_vector(3 downto 0) );
    end bcdadder ;

architecture arch of bcdadder is 
begin
    Process(A,B) --要記得加入A,B
    Variable sum: integer range 0 to 200 ;
    Variable tmp: integer range 0 to 9 ;
    Variable output: std_logic_vector(3 downto 0) ;
    begin 
        sum := A + B ;
        tmp := sum rem 10 ;
        digit0: for i in 0 to 3 loop
		  if ((tmp mod 2)=1) then output(i) := '1' ; --
            else output(i) := '0' ;
            end if ;
            tmp:=tmp/2 ;
        end loop ;
        y0 <= output ;


        tmp:=(sum/10) rem 10 ;
        digit1: for i in 0 to 3 loop
            if ((tmp mod 2)=1) then output(i) := '1' ;
            else output(i) := '0' ;
            end if ;
            tmp:=tmp/2 ;
        end loop ;
        y1 <= output ;

        tmp:=sum /100 ;
        digit2: for i in 0 to 3 loop
            if ((tmp mod 2)=1) then output(i) := '1' ;
            else output(i) := '0' ;
            end if ;
            tmp:=tmp/2 ;
        end loop ;
        y2 <= output ;
    end process ; 
end arch ;


