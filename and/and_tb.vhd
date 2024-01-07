-- Code your testbench here
library IEEE;
use IEEE.std_logic_1164.all;

entity two_input_gate_tb is
end two_input_gate_tb;

architecture tb_architecture of two_input_gate_tb is
	-- components declaration of the tested unit:
    component two_input_gate
    port(
    	a : in std_logic;
        b : in std_logic;
        y : out std_logic
        );
    end component;
    
    -- stimuls signal - signals mapped to the inputs of tested unit
    signal a : std_logic;
    signal b : std_logic;
    -- observed signals - signals mappet to the output of tested unit
    signal y : std_logic;

begin
	-- unit under test port
    UUT : two_input_gate
    	port map(
        	a => a,
            b => b,
            y => y
        );
    
    -- stimulus
    STIM: process
    begin
    	a <= '0';
        b <= '0';
        
        wait for 50 ns;
        a <= '1';
        b <= '0';
        
        wait for 50 ns;
        a <= '0';
        b <= '1';
        
        wait for 50 ns;
        a <= '1';
        b <= '1';
        
        wait for 50 ns;
        wait;
    end process;
end architecture;

