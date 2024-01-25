-- Library IEEE ;
-- Use IEEE.std_logic_1164.all ;

-- Use IEEE.std.logic_1164.all ;
-- Use IEEEE.std.logic_1164.all;

-- Entity entityname is
--     Port( sigal1:in std_logic_vector(up downto bottom) ;
    
    
    
--     )
-- END entityname ;

-- Architecture ARCH of DeMUX1_8 is
--     declaration...
-- Begin
--     Y(0)<=A when S = "000" Else 'Z' ;

library IEEE ;
use IEEE.std.logic_1164.all ;

entity en is
    Port (S:in std_logic_vector(2 downto 0) ;
          A:in std_logic ;
          Y:out std_logic_vector(7 downto 0) ;
    ) ;
END en ;

Architecture arch of en is

Begin 
    Y(0)<= A when S = '000' else 'z' ;


END arch ;