-- Code your design here
library IEEE;
use IEEE.std_logic_1164.all;

entity two_input_gate is
	port(
    	a : in std_logic;
      b : in std_logic;
      y : out std_logic
      );
end two_input_gate;

architecture output of two_input_gate is
begin
	y <= a or b;
end output;