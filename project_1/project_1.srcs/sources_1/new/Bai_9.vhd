----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 11:27:22 PM
-- Design Name: 
-- Module Name: Bai9 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Bai_9 is
 Port ( CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC_VECTOR(2 downto 0);
           Q_inv : buffer STD_LOGIC_VECTOR(2 downto 0);
           y : out STD_LOGIC);
end Bai_9;

architecture Behavioral of Bai_9 is
component D_FF is
   Port ( D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
           end component;
           
           signal D : STD_LOGIC_VECTOR(2 downto 0);
begin
D(0) <= Q_inv(0);
D(1) <= ( Q_inv(0) and Q_inv(2))or (Q_inv(1) and Q(0));
D(2) <= (Q(1)and Q(0)) or ( Q_inv(1) and Q(2));


DFF1: D_FF port map(D=>D(0),CLK=>CLK,Q=>Q(0),Q_inv=>Q_inv(0));
DFF2: D_FF port map(D=>D(1),CLK=>CLK,Q=>Q(1),Q_inv=>Q_inv(1));
DFF3: D_FF port map(D=>D(2),CLK=>CLK,Q=>Q(2),Q_inv=>Q_inv(2));

y <= Q(1) and Q(2) ;
end Behavioral;