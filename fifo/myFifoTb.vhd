library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myFifoTb is
end entity myFifoTb;

architecture rtl of myFifoTb is
    component myFifo
    port (
        data_in: in std_logic_vector(7 downto 0);
        wr: in std_logic;
        clk: in std_logic;
        rst: in std_logic;
        en: in std_logic;
        data_out: out std_logic_vector(7 downto 0);
        red: out std_logic
    );
    end component;

    -- stimulus signals - signals mapped to inputs of tested unit
    signal clk: std_logic := '0';
    signal rst: std_logic := '0';
    signal data_in, data_out: std_logic_vector(7 downto 0);
    signal wr, en, red: std_logic;
    
begin
    DUT: myFifo
    port map(
        clk => clk,
        rst => rst,
        wr => wr,
        en => en,
        red => red,
        data_in => data_in,
        data_out => data_out
    );

    clk_gen: process begin
        clk <= '0';
        wait for 250 ns;
        clk <= '1';
        wait for 250 ns;
    end process;

    STIM: process begin
        rst <= '1';
        wait for 1000 ns;

        rst <= '0';
        en <= '1';
        wr <= '1';
        data_in <= "11111111";
        wait for 500 ns;

        en <= '1';
        wr <= '1';
        data_in <= "10101011";
        wait for 500 ns;

        en <= '1';
        wr <= '1';
        data_in <= "11111111";
        wait for 500 ns;

        en <= '1';
        wr <= '1';
        data_in <= "11010101";
        wait for 500 ns;


        en <= '1';
        wr <= '0';
        wait for 500 ns;

        en <= '1';
        wr <= '0';
        wait for 500 ns;

        en <= '1';
        wr <= '0';
        wait for 500 ns;

        en <= '1';
        wr <= '0';
        wait for 500 ns;

        en <= '1';
        wr <= '0';
        wait for 500 ns;

        wait;
    end process;
    
end architecture rtl;