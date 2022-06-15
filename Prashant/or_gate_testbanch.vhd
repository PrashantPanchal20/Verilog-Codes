
-- VHDL Test Bench Created from source file or_gate.vhd -- 13:43:33 12/12/2019
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY or_gate_or_gate_testbanch_vhd_tb IS
END or_gate_or_gate_testbanch_vhd_tb;

ARCHITECTURE behavior OF or_gate_or_gate_testbanch_vhd_tb IS 

	COMPONENT or_gate
	PORT(a : IN std_logic;
		b : IN std_logic;          
		c : OUT std_logic);
	END COMPONENT;

	SIGNAL a :  std_logic;
	SIGNAL b :  std_logic;
	SIGNAL c :  std_logic;

BEGIN

	uut: or_gate PORT MAP(
		a => a,
		b => b,
		c => c);


-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      wait; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
