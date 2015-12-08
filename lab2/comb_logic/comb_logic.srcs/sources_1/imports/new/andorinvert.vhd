----------------------------------------------------------------------------------
-- Company: University of Strathclyde
-- Engineer: Jiacheng Shi
-- 
-- Create Date: 02.12.2015 11:17:04
-- Design Name: 
-- Module Name: AOI - V1
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

entity AOI is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end AOI;

architecture V1 of AOI is

begin
    F<=not((A and B)or(C and D));

end V1;

architecture V3 of AOI is
    signal I1,I2,I3: std_logic;
begin
    I1<= A and B after 2 ns;
    I2<= C and D after 2 ns;
    I3<= I1 or I2 after 2 ns;
    F<= not I3 after 1 ns;
end V3;
