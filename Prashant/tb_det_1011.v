module tb_det_1011;

reg clk,in,rstn;
wire out;
reg[1:0]1_dly;
reg tb_in;
integer loop = 1;

always #10 clk = ~clk;

det_1011 u0(clk,rstn,in,out);

initial begin
clk <= 0;
in <= 0;
rstn <= 0;

repeat (5)@(posedge clk);
rstn <= 1;

@(posedge clk) in <= 1;
@(posedge clk) in <= 0;
@(posedge clk) in <= 1;
@(posedge clk) in <= 1;
@(posedge clk) in <= 0;
@(posedge clk) in <= 0;
@(posedge clk) in <= 1;
@(posedge clk) in <= 1;
@(posedge clk) in <= 0;
@(posedge clk) in <= 1;
@(posedge clk) in <= 1;    //pattern complete

for (int i=0; i<loop ; i+1) begin
    1_dly = $random;
    repeat(1_dly)@(posedge clk);
    tb_in = $random;
    in <= tb_in;
end
#100 $finish;
end
endmodule