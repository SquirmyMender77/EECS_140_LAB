----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2025 11:00:17 AM
-- Design Name: 
-- Module Name: my_xor6_gate - Behavioral
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

entity my_xor6_gate is
    Port ( U : in STD_LOGIC;
           V : in STD_LOGIC;
           W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           I : out STD_LOGIC);
end my_xor6_gate;

architecture Behavioral of my_xor6_gate is
-- Component Declaration
COMPONENT my_xor2_gate IS
PORT (
A,B : IN STD_LOGIC;
G : OUT STD_LOGIC);
END COMPONENT my_xor3_gate;
COMPONENT my_xor3_gate IS
PORT (
A,B,C : IN STD_LOGIC;
H : OUT STD_LOGIC);
END COMPONENT my_xor3_gate;
-- Signal Declaration
SIGNAL UxorVxorW: STD_LOGIC;
SIGNAL XxorYxorZ: STD_LOGIC;
begin
-- Component Instantiation
UVW: my_xor3_gate
PORT MAP (
A => U,
B => V,
C => W,
H => UxorVxorW);
XYZ: my_xor3_gate
PORT MAP (
A => X,
B => Y,
C => Z,
H => XxorYxorZ);
UVWXYZ: my_xor2_gate
PORT MAP (
A => UxorVxorW,
B => XxorYxorZ,
G => I);

end Behavioral;
