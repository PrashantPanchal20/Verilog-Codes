library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Encoder_4_1_case_select_stetement is
    Port ( a,b,c,d : in std_logic;
           sel : in std_logic_vector(1 downto 0);
           z : out std_logic);
end Encoder_4_1_case_select_stetement;

architecture Behavioral of Encoder_4_1_case_select_stetement is

begin


end Behavioral;
