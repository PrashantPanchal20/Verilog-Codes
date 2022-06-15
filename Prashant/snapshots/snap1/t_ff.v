module t_ff(T,clk,rstn,q);
    input T;
    input clk;
    input rstn;
    output reg q;

	 always@(posedge clk)
	 if(!rstn)
	 	q <= 0;
    else 
	 	if(T)
		q <= ~q;
	 else 
	 	q <= q;

endmodule
