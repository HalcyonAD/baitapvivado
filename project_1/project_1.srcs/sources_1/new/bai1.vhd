 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bai_1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
end bai_1;
architecture Behavioral of bai_1 is
begin
F <= ((not A nand B) nand (( A nand not B) nand C));
end Behavioral;