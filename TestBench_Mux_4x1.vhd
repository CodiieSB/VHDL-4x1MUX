library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity TestBench_Mux_4x1 is
end TestBench_Mux_4x1;

architecture ARC of TestBench_Mux_4x1 is
component Mux_4x1 
    port(
          Input  : in std_logic_vector(3 downto 0);
          Sel    : in std_logic_vector(1 downto 0);
          Output : out std_logic);
end component;

signal Input  : std_logic_vector(3 downto 0);
signal Sel    : std_logic_vector(1 downto 0);
signal Output : std_logic;

begin
    dev : Mux_4x1 
    port map 
    (Input => Input,
     Sel => Sel,
     Output => Output);
    
    stim : process 
    begin 
        Sel(0) <= '0';
        Sel(1) <= '0';
        Input(0) <= '1';
        Input(1) <= '0';
        Input(2) <= '0';
        Input(3) <= '0';
        wait for 20ns;
        
        Sel(0) <= '0';
        Sel(1) <= '1';
        Input(0) <= '0';
        Input(1) <= '1';
        Input(2) <= '0';
        Input(3) <= '0';
        wait for 20ns;
        
        Sel(0) <= '1';
        Sel(1) <= '0';
        Input(0) <= '0';
        Input(1) <= '0';
        Input(2) <= '1';
        Input(3) <= '0';
        wait for 20ns;
        
        Sel(0) <= '1';
        Sel(1) <= '1';
        Input(0) <= '0';
        Input(1) <= '0';
        Input(2) <= '0';
        Input(3) <= '1';
        wait for 20ns;
        wait;
        
    end process;
end ARC;