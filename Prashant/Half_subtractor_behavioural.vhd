library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Half_subtractor_behavioural is
    Port ( A : in std_logic_VECTOR(1 DOWNTO 0);
           D,B : out std_logic);
end Half_subtractor_behavioural;

architecture Behavioral of Half_subtractor_behavioural is

begin
  D <= '0' when ( A = "00" ) else
       '0' when ( A = "11") else 
       '1';

  B <= '1' when ( A = "01" ) else
       '0';  
    --D<= "0";
    --BW<= "0";
    -- if (A,B)="0,1" then
    --D<="0";
    --BW<="1"; 
    --elsif (A,B)="1,0" then 
    --D<="1";
    --BW<="0";
    --else --(A,B)="1,1" then
    --D<="0";
    --BW<="0";
    --end if;

end Behavioral;
