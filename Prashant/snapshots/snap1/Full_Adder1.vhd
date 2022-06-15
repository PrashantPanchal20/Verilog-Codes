library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_Adder1 is
    Port ( a,b,c : in std_logic;
           sum,carry : out std_logic);
end Full_Adder1;

architecture Data_Flow_modling of Full_Adder1 is

begin
	sum<= a xor b xor c after 15ns;
	carry<=(a and b) or (b and c) or (c and a) after 10ns;

end Data_Flow_modling;
