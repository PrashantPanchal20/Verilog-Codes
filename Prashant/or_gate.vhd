library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity or_gate is
    Port ( a : in std_logic;
           b : in std_logic;
           c : out std_logic);
end or_gate;

architecture Dataflow_modling of or_gate is

begin
	c<= a or b;

end Dataflow_modling;
