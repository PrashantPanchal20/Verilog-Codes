library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Case_sel is
    Port ( a,b,c,d : in std_logic;
           sel : in std_logic_vector(1 downto 0);
           y : out std_logic);
end Case_sel;

architecture Behavioral of Case_sel is

begin
     process(a,b,c,d,sel)
 begin
     case sel is 
	when "00" => y<=a;
	when "01" => y<=b;
	when "10" => y<=c;
	when "11" => y<=d;
	when others => y<= '0';
    end case;
    end process;
end Behavioral;
