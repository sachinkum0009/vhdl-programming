library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity or_tb is
end entity or_tb;

architecture rtl of or_tb is
    -- component to test
    component or_gate
    port (
        a : in std_logic;
        b : in std_logic;
        x : out std_logic
    );
    end component;
    
    -- stimulus signals
    signal a : std_logic;
    signal b : std_logic;
    signal x : std_logic;
    
begin
    -- unit under test

    UUT : or_gate
    port map(
        a => a, 
        b => b,
        x => x
    );

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

end architecture rtl;