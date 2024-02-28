library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Mux_4x1 is
  Port ( 
         Input   : in std_logic_vector(3 downto 0);
         Sel     : in std_logic_vector(1 downto 0);
         Output  : out std_logic);
end Mux_4x1;

architecture ARC of Mux_4x1 is

signal z : std_logic_vector(5 downto 0);
begin
    z(0) <= not Sel(0);
    z(1) <= not Sel(1);
    z(2) <= Input(0) and z(0) and z(1);
    z(3) <= Input(1) and Sel(0) and z(1);
    z(4) <= Input(2) and Sel(1) and z(0);
    z(5) <= Input(3) and Sel(1) and Sel(0);
    Output <= z(2) or z(3) or z(4) or z(5);
end ARC;
