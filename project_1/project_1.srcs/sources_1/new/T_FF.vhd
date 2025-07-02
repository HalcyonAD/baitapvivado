library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
    Port (
        T   : in  STD_LOGIC;
        CLK : in  STD_LOGIC;
        Q   : out STD_LOGIC
    );
end T_FF;

architecture Behavioral of T_FF is
    signal Q_reg : STD_LOGIC := '0';
begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            if T = '0' then
                Q_reg <= Q_reg;
            elsif T = '1' then
                Q_reg <= not Q_reg;
            end if;
        end if;
    end process;

    Q <= Q_reg;
end Behavioral;
