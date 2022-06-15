library verilog;
use verilog.vl_types.all;
entity jk_ff_edge_trigger is
    port(
        q               : out    vl_logic;
        qn              : out    vl_logic;
        c               : in     vl_logic;
        j               : in     vl_logic;
        k               : in     vl_logic;
        resetn          : in     vl_logic
    );
end jk_ff_edge_trigger;
