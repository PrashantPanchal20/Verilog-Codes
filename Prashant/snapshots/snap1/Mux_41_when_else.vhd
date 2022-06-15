library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_41_when_else is
    Port ( a,b,c,d : in std_logic;
           sel : in std_logic_vector(1 downto 0);
           y : out std_logic);
end Mux_41_when_else;

architecture Behavioral of Mux_41_when_else is
begin
  y <= a when sel="00" else
       b when sel="01" else
 	  c when sel="10" else
	  d when sel="11"; 
end Behavioral;
