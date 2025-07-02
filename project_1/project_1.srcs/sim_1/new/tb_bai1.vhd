library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity tb_bai1 is
--  Port ( );
end tb_bai1;

architecture Behavioral of tb_bai1 is
component bai_1 is
 Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
           end component;
           signal A : std_logic := '0' ;
           signal B : std_logic := '0' ;
           signal C : std_logic := '0' ;
           signal F: std_logic;
begin
bai1: bai_1 port map (A=>A, B=>B, C=>C, F=>F);
tb: process 
begin
wait for 10ns;
A<='0' ; B<='0' ; C<='1' ;
wait for 10ns;
A<='0' ; B<='1' ; C<='0' ;
wait for 10ns;
A<='0' ; B<='1' ; C<='1' ;
wait for 10ns;
A<='1' ; B<='0' ; C<='0' ;
wait for 10ns;
A<='1' ; B<='0' ; C<='1' ;
wait for 10ns;
A<='1' ; B<='1' ; C<='0' ;
wait for 10ns;
A<='1' ; B<='1' ; C<='1' ;
wait for 10ns;
end process;
end Behavioral;