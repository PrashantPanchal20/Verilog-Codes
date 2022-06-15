library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Multiplexer_41 is
    Port ( a,b,c,d : in std_logic;
           sel : in std_logic_vector(1 downto 0);
           y : out std_logic);
end Multiplexer_41;

architecture Behavioral of Multiplexer_41 is

begin
process(sel,a,b,c,d)
 begin
   if   (sel="00") then 
          y<=a;
   elsif(sel="01") then
          y<=b;
   elsif(sel="10") then
          y<=c;
   else  y<=d;
   end if;
end process;
end Behavioral;
