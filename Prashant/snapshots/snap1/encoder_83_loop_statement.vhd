library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity encoder_83_loop_statement is
    Port ( A : in std_logic_vector(7 downto 0);
           Y : out std_logic_vector(2 downto 0));
end encoder_83_loop_statement;

architecture Behavioral of encoder_83_loop_statement is

begin
    process(A)
    variable N: integer range 0 to 7;
    variable Test: unsigned(7 downto 0);
   begin
    Test:="00000001";
    for N in 0 to 7 loop
         if(A = Test) then 
	      Y<=To_unsigned(N,3);
	    exit;
         end if;
	    Test<= shift_left(Test,1);
       end loop;
    end process;
 end Behavioral;
