library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BCD_TO_7SEGEMENT_DECODER is
    Port ( bcd : in std_logic_vector(3 downto 0);
           seg : out std_logic_vector(6 downto 0));
end BCD_TO_7SEGEMENT_DECODER;

architecture Behavioral of BCD_TO_7SEGEMENT_DECODER is

begin
     with bcd select
	       seg <= "1000000" when x"0",
	              "1100111" when x"1",
			    "1101101" when x"2",
			    "0000011" when x"3",
			    "0100101" when x"4",
			    "0001001" when x"5",
			    "0001000" when x"6",
			    "1100011" when x"7",
			    "0000000" when x"8",
			    "0000001" when x"9",
			    "-------" when others;
end Behavioral;
