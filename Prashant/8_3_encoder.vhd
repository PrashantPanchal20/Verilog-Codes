library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder_83 is
    Port ( A : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(2 downto 0));
end encoder_83;

architecture Behavioral of encoder_83 is

begin
   process(A)
    begin
	    if A="00000001" then Y<="000";
	    elsif A="00000010" then Y<="001";
	    elsif A="00000100" then Y<="010";
	    elsif A="00001000" then Y<="011";
	    elsif A="00010000" then Y<="100";
	    elsif A="00100000" then Y<="101";
	    elsif A="01000000" then Y<="110";
	    elsif A="10000000" then Y<="111";
	    end if;
     end process;
    end Behavioral;
