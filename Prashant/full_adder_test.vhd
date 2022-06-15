
-- VHDL Test Bench Created from source file full_adder.vhd -- 20:19:29 12/25/2019
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends 
-- that these types always be used for the top-level I/O of a design in order 
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--
Library IEEE;
USE IEEE.Std_logic_1164.all;
-- fpga4student.com 
-- FPGA projects, VHDL projects, Verilog projects 
-- VHDL code for full adder 
-- Testbench code of the structural code for full adder 
entity Full_Adder_Structural_VHDL is
end Full_Adder_Structural_VHDL;
 
architecture  behavioral of Full_Adder_Structural_VHDL is
 component Full_Adder_Structural_VHDL 
   port( 
  A,B, Cin : in std_logic;  
  S, Cout : out std_logic
  );  
 end component; 
 signal A,B,Cin: std_logic:='0';
 signal S,Cout: std_logic;
begin   
 structural_adder: Full_Adder_Structural_VHDL port map 
   (
    A => A,
    B => B,
    Cin => Cin,
    S => S,
    Cout => Cout);
  process
  begin
   A <= '0';
   B <= '0';
   Cin <= '0';
   wait for 100 ns;
   A <= '0';
   B <= '0';
   Cin <= '1';
   wait for 100 ns;   
   A <= '0';
   B <= '1';
   Cin <= '0';
   wait for 100 ns;
   A <= '0';
   B <= '1';
   Cin <= '1';
   wait for 100 ns;
   A <= '1';
   B <= '0';
   Cin <= '0';
   wait for 100 ns;
   A <= '1';
   B <= '0';
   Cin <= '1';
   wait for 100 ns;
   A <= '1';
   B <= '1';
   Cin <= '0';
   wait for 100 ns;   
   A <= '1';
   B <= '1';
   Cin <= '1';
   wait for 100 ns;   
  end process;
END STRUCTURAL;