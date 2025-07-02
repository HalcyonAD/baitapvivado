
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bai6 is
end tb_bai6;
architecture Behavioral of tb_bai6 is

   
    component bai6
        Port (
            clk    : in  STD_LOGIC;
            Q      : buffer STD_LOGIC_VECTOR(2 downto 0);
            Q_inv  : buffer STD_LOGIC_VECTOR(2 downto 0);
            y      : out STD_LOGIC
        );
    end component;
    
    signal clk_tb    : STD_LOGIC := '0';
    signal Q_tb      : STD_LOGIC_VECTOR(2 downto 0);
    signal Q_inv_tb  : STD_LOGIC_VECTOR(2 downto 0);
    signal y_tb      : STD_LOGIC;

begin

    
    uut: bai6
        port map (
            clk    => clk_tb,
            Q      => Q_tb,
            Q_inv  => Q_inv_tb,
            y      => y_tb
        );

   
    clk_process: process
    begin
        while true loop
            clk_tb <= '0';
            wait for 10 ns;
            clk_tb <= '1';
            wait for 10 ns;
        end loop;
    end process;

    
    stim_proc: process
    begin
        wait for 200 ns;
        wait;
    end process;

end Behavioral;
