----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2025 10:53:00 AM
-- Design Name: 
-- Module Name: my_xor2_gate - Behavioral
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

entity my_xor2_gate is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           G : out STD_LOGIC);
end my_xor2_gate;

architecture Behavioral of my_xor2_gate is

begin
G <= (A AND (NOT B)) OR ((NOT A) AND B);

end Behavioral;
