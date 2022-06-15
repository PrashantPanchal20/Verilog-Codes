library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Full_adder_using_half_adder is
    Port ( a,b,c : in std_logic;
           sum,carry : out std_logic);
end Full_adder_using_half_adder;

architecture structural of Full_adder_using_half_adder is

select (s1,s2,s3 : out std_logic);
begin
component HA1
    Port ( a,b : in std_logic;
           sum,carry : out std_logic);
end component;
component HA2
    Port ( a,b : in std_logic;
           sum,carry : out std_logic);
end component;
component or1
    Port ( a : in std_logic;
           b : in std_logic;
           c : out std_logic);
end component;
begin 
X1:half_adder port map(a,b,s1,s2);
X2:half_adder port map(s1,c,sum,s3);
X1:or_gate port map(s2,s3,carry);
end structural;
