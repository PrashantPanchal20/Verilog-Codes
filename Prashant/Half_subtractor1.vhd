library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Half_subtractor1 is
    Port ( a,b : in std_logic;
           diff,borrow : out std_logic);
end Half_subtractor1;

architecture dataflow of Half_subtractor1 is

begin
	 diff<= (a xor b);
	 borrow<=((not a) and b);

end dataflow;
