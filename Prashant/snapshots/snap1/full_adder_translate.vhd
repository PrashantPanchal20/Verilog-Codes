-- Xilinx Vhdl netlist produced by netgen application (version G.23)
-- Command       : -intstyle ise -rpw 100 -tpw 0 -ar Structure -xon true -w -ofmt vhdl -sim full_adder.ngd full_adder_translate.vhd 
-- Input file    : full_adder.ngd
-- Output file   : full_adder_translate.vhd
-- Design name   : full_adder
-- # of Entities : 1
-- Xilinx        : C:/Xilinx
-- Device        : 2s15cs144-6

-- This vhdl netlist is a simulation model and uses simulation 
-- primitives which may not represent the true implementation of the 
-- device, however the netlist is functionally correct and should not 
-- be modified. This file cannot be synthesized and should only be used 
-- with supported simulation tools.

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity full_adder is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : in STD_LOGIC := 'X'; 
    carry : out STD_LOGIC; 
    sum : out STD_LOGIC 
  );
end full_adder;

architecture Structure of full_adder is
  signal carry_OBUF : STD_LOGIC; 
  signal a_IBUF : STD_LOGIC; 
  signal b_IBUF : STD_LOGIC; 
  signal c_IBUF : STD_LOGIC; 
  signal sum_OBUF : STD_LOGIC; 
  signal carry_OBUF_GTS_TRI : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal sum_OBUF_GTS_TRI : STD_LOGIC; 
  signal NlwInverterSignal_carry_OBUF_GTS_TRI_CTL : STD_LOGIC; 
  signal NlwInverterSignal_sum_OBUF_GTS_TRI_CTL : STD_LOGIC; 
begin
  H2_x1_Mxor_c_Result1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => c_IBUF,
      ADR1 => b_IBUF,
      ADR2 => a_IBUF,
      O => sum_OBUF
    );
  O1_c1 : X_LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      ADR0 => b_IBUF,
      ADR1 => c_IBUF,
      ADR2 => a_IBUF,
      O => carry_OBUF
    );
  a_IBUF_0 : X_BUF
    port map (
      I => a,
      O => a_IBUF
    );
  b_IBUF_1 : X_BUF
    port map (
      I => b,
      O => b_IBUF
    );
  c_IBUF_2 : X_BUF
    port map (
      I => c,
      O => c_IBUF
    );
  carry_OBUF_3 : X_BUF
    port map (
      I => carry_OBUF,
      O => carry_OBUF_GTS_TRI
    );
  sum_OBUF_4 : X_BUF
    port map (
      I => sum_OBUF,
      O => sum_OBUF_GTS_TRI
    );
  carry_OBUF_GTS_TRI_10 : X_TRI
    port map (
      I => carry_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_carry_OBUF_GTS_TRI_CTL,
      O => carry
    );
  sum_OBUF_GTS_TRI_11 : X_TRI
    port map (
      I => sum_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_sum_OBUF_GTS_TRI_CTL,
      O => sum
    );
  NlwInverterBlock_carry_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_carry_OBUF_GTS_TRI_CTL
    );
  NlwInverterBlock_sum_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_sum_OBUF_GTS_TRI_CTL
    );
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

