library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity and1 is
    Port ( a,b : in std_logic;
           c : out std_logic);
end and1;

architecture Behavioral of and1 is

begin
	 c<= a and b ;

end Behavioral;
