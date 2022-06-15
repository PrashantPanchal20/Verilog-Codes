library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Half_Adder is
    Port ( a,b : in std_logic;
           sum,carry : out std_logic);
end Half_Adder;

architecture Structural of Half_Adder is
component XOR1
   PORT(a,b : in std_logic;
          C : out std_logic);
end component;
component AND1
   PORT(a,b : in std_logic;
          C : out std_logic);
end component;
begin
x1:XOR1 port map(a,b,sum);
A1:AND1 port map(a,b,carry);


end Structural;