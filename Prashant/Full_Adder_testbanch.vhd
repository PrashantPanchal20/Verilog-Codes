
-- VHDL Test Bench Created from source file full_adder.vhd -- 15:38:45 12/25/2019
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY full_adder_tb IS
END full_adder_tb;
ARCHITECTURE full_adder_tb OF full_adder_tb IS 
    COMPONENT fulladder
    PORT(
         a : IN  bit;
         b : IN  bit;
         c : IN  bit;
         sum : OUT  bit;
         carry : OUT  bit
        );
    END COMPONENT;

   signal a : bit := '0';
   signal b : bit := '0';
   signal c : bit := '0';
   signal sum : bit;
   signal carry : bit;

BEGIN
   uut: fulladder PORT MAP (
          a => a,
          b => b,
          c => c,
          sum => sum,
          carry => carry
        );
   stim_proc: process
   begin  

 a <= '0';
 b <= '0';
 c <= '0';
  wait for 50 ns;

 a <= '0';
 b <= '0';
 c <= '1';
  wait for 50 ns;

 a <= '0';
 b <= '1';
 c <= '0';
  wait for 50 ns;

 a <= '0';
 b <= '1';
 c <= '1';
  wait for 50 ns;

 a <= '1';
 b <= '0';
 c <= '0';
  wait for 50 ns;

 a <= '1';
 b <= '0';
 c <= '1';
  wait for 50 ns;

 a <= '1';
 b <= '1';
 c <= '0';
  wait for 50 ns;

 a <= '1';
 b <= '1';
 c <= '1'; 
  wait;
  
 end process;

END;

