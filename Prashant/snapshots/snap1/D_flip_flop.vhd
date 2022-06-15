library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity d_flip_flop is
    Port ( a,clk : in std_logic;
           b : out std_logic);
end d_flip_flop;

architecture Behavioral of d_flip_flop is

begin
   process(clk)
      begin
         if (a'event and clk='1') then
	        b <= a;
         end if;
   end process;
end Behavioral;
