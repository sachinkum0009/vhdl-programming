library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity or_gate is
    port (
        a : in std_logic;
        b : in std_logic;
        x : out std_logic
    );
end entity or_gate;

architecture rtl of or_gate is
    
begin
    
    x <= a or b;
    
end architecture rtl;