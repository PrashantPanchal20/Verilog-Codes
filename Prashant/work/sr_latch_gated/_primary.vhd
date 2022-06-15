library verilog;
use verilog.vl_types.all;
entity sr_latch_gated is
    port(
        q               : out    vl_logic;
        qn              : out    vl_logic;
        g               : in     vl_logic;
        s               : in     vl_logic;
        r               : in     vl_logic
    );
end sr_latch_gated;
