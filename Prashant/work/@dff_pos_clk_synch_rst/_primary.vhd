library verilog;
use verilog.vl_types.all;
entity dff_pos_clk_synch_rst is
    port(
        d               : in     vl_logic;
        clk             : in     vl_logic;
        synk_reset      : in     vl_logic;
        q               : out    vl_logic
    );
end dff_pos_clk_synch_rst;
