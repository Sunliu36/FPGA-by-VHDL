library IEEE;
Use IEEE.std_logic_1164.all ;

Entity mod12 is
    Port(
        PulseIn: in std_logic;
        Q: out std_logic_vector(3 downto 0));
end mod12 ; --不要忘記,什麼都要end

architecture arch of mod12 is
    Component dff1
        Port(CL,CK,T: in std_logic;
            Q, Qbar: out std_logic) ;
		  end component ;--要記得end component 
        signal CL: std_logic ;
        signal tmp1: std_logic_vector(4 downto 0) ;
        signal tmp2: std_logic_vector(3 downto 0) ;
    begin
        tmp1(0) <= PulseIn ;
        lp1:For I in 0 to 3 Generate --記得for形式就是python，後面記得generate
            u:dff1 Port Map (cl,tmp1(I),'1',tmp2(I),tmp1(I+1));--記得是Port Map(....)
        END generate ; --記得是end generate
        --『for跟port map一定要加標籤！！！』
        CL <= tmp2(2) and tmp2(3) ;
        Q <= tmp2 ;
    end arch ;