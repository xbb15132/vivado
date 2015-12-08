----------------------------------------------------------------------------------
-- Company: univeristy of strathcylde
-- Engineer: Jiahcneg Shi
-- 
-- Create Date: 2015/12/08 18:45:25
-- Design Name: 
-- Module Name: comb_logic - comb_logic
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

entity comb_logic is
    Port ( V : in STD_LOGIC;
           W : in STD_LOGIC;
           X : in STD_LOGIC;
           Y : in STD_LOGIC;
           Z : in STD_LOGIC;
           OP : out STD_LOGIC);
end comb_logic;

architecture comb_logic of comb_logic is
    component AOI 
        port(A,B,C,D : in std_logic;
                   F : out std_logic);
    end component;
    signal intA,intB : std_logic;

begin
    G1 : AOI port map ( A => V, B => W, C => X, D => Y, F => inA );
    G2 : AOI port map ( A => Y, B => X, C => V, D => Z, F => inB );
    OP <= inA AND inB;    

end comb_logic;
