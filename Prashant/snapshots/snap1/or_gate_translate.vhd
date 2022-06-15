-- Xilinx Vhdl netlist produced by netgen application (version G.23)
-- Command       : -intstyle ise -rpw 100 -tpw 0 -ar Structure -xon true -w -ofmt vhdl -sim or_gate.ngd or_gate_translate.vhd 
-- Input file    : or_gate.ngd
-- Output file   : or_gate_translate.vhd
-- Design name   : or_gate
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

entity or_gate is
  port (
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    c : out STD_LOGIC 
  );
end or_gate;

architecture Structure of or_gate is
  signal a_IBUF : STD_LOGIC; 
  signal b_IBUF : STD_LOGIC; 
  signal c_OBUF : STD_LOGIC; 
  signal c_OBUF_GTS_TRI : STD_LOGIC; 
  signal GTS : STD_LOGIC; 
  signal NlwInverterSignal_c_OBUF_GTS_TRI_CTL : STD_LOGIC; 
begin
  c1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => a_IBUF,
      ADR1 => b_IBUF,
      O => c_OBUF
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
  c_OBUF_2 : X_BUF
    port map (
      I => c_OBUF,
      O => c_OBUF_GTS_TRI
    );
  c_OBUF_GTS_TRI_6 : X_TRI
    port map (
      I => c_OBUF_GTS_TRI,
      CTL => NlwInverterSignal_c_OBUF_GTS_TRI_CTL,
      O => c
    );
  NlwInverterBlock_c_OBUF_GTS_TRI_CTL : X_INV
    port map (
      I => GTS,
      O => NlwInverterSignal_c_OBUF_GTS_TRI_CTL
    );
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

