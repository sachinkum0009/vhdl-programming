library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
-- use IEEE.std_logic_arith.all;
-- use IEEE.std_logic_unsigned.all;

entity myFifo is
    port (
        data_in: in std_logic_vector(7 downto 0);
        wr: in std_logic;
        clk: in std_logic;
        rst: in std_logic;
        en: in std_logic;
        data_out: out std_logic_vector(7 downto 0);
        red: out std_logic
    );
end entity myFifo;


architecture Behavior of myFifo is
    signal wptr, rptr: unsigned(3 downto 0);
    type fifo is array(15 downto 0) of std_logic_vector(7 downto 0);
    signal mem: fifo;
    
begin

    process(clk, rst)
    begin
        if rst = '1' then
            wptr <= "0000";
            rptr <= "0000";
            red <= '0';

        elsif (clk'event and clk='1') then
            if (en='1') then
                if (wr='1') then -- write operation
                    if (wptr < "1111") then
                        mem(to_integer(wptr)) <= data_in;
                        wptr <= wptr + 1;
                    else
                        red <= '1'; -- mem full
                    end if; 
                else -- read operation
                    if (rptr < wptr) then
                        data_out <= mem(to_integer(rptr));
                        rptr <= rptr + 1;
                        red <= '0';
                    else
                        red <= '1'; -- mem empty
                        data_out <= "00000000";
                    end if;
                end if;
            end if;
        end if;
    end process;
end architecture Behavior;