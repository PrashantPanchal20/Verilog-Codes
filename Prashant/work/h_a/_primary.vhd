library verilog;
use verilog.vl_types.all;
entity h_a is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        s               : out    vl_logic;
        c               : out    vl_logic
    );
end h_a;
