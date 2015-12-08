----------------------------------------------------------------------------------
-- Company: university of strathclyde
-- Engineer: Jiacheng Shi
-- 
-- Create Date: 2015/12/08 19:23:41
-- Design Name: 
-- Module Name: comb_logic_TB - arch
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

entity comb_logic_TB is

end comb_logic_TB;

architecture arch of comb_logic_TB is
    component comb_logic_component
        port ( V,W,X,Y,Z : in std_logic;
                    OP : out std_logic);
    end component;
    for G1 : comb_logic_component use entity work.comb_logic(comb_logic);

begin
    G1 : comb_logic_component port map ( V => V,W => W, X => X, Y => Y, Z => Z, OP => OP );
    stimuli: process
    begin
    V <= '0'; W <='0'; X <='0'; Y <='0'; Z <='0'; wait for 10 NS;
    V <= '0'; W <='0'; X <='0'; Y <='0'; Z <='1'; wait for 10 NS;
    V <= '0'; W <='0'; X <='0'; Y <='1'; Z <='0'; wait for 10 NS;
    V <= '0'; W <='0'; X <='1'; Y <='0'; Z <='0'; wait for 10 NS;
    V <= '0'; W <='1'; X <='0'; Y <='0'; Z <='0'; wait for 10 NS;
    V <= '1'; W <='0'; X <='0'; Y <='0'; Z <='0'; wait for 10 NS;
    V <= '1'; W <='0'; X <='1'; Y <='0'; Z <='1'; wait for 10 NS;
    V <= '0'; W <='1'; X <='0'; Y <='1'; Z <='0'; wait for 10 NS;
    V <= '1'; W <='1'; X <='1'; Y <='1'; Z <='1'; wait for 10 NS;
    wait;
    end process;  

end arch;
