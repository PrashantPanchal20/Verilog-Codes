module shift_resister(d,clk,rst,q);
input d;
input clk;
input rst;
output q;

wire q_net0;
wire q_net1;
wire q_net2;

Dff_pos_clk_synch_rst D1(d,clk,rst,q_net0);
Dff_pos_clk_synch_rst D2(q_net0,clk,rst,q_net1);
Dff_pos_clk_synch_rst D3(q_net1,clk,rst,q_net2);
Dff_pos_clk_synch_rst D4(q_net2,clk,rst,q);

endmodule
