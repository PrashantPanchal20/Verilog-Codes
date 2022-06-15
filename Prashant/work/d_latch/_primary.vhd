library verilog;
use verilog.vl_types.all;
entity d_latch is
    port(
        q               : out    vl_logic;
        qn              : out    vl_logic;
        g               : in     vl_logic;
        d               : in     vl_logic
    );
end d_latch;
