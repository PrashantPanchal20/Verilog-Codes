//----------------------using pos clk pos reset------------------------
/*module Dff_pos_clk_Asynch_rst(D,clk,asynk_reset,Q);
    input D;
    input clk;
    input asynk_reset;
    output Q;
	 reg Q;

	 always@(posedge clk or posedge asynk_reset)
	 begin
	 if(asynk_reset == 1'b1)
	 Q <= 1'b0;
	 else
	 Q <= D;
	 end
endmodule  */
//---------------------using positive clk and neg edge of reset----------------

/*module Dff_pos_clk_Asynch_rst(D,clk,asynk_reset,Q);
    input D;
    input clk;
    input asynk_reset;
    output Q;
	 reg Q;

	 always@(posedge clk or negedge asynk_reset)
	 begin
	 if(asynk_reset == 1'b0)
	 Q <= 1'b0;
	 else
	 Q <= D;
	 end
endmodule	  */
//-----------------using neg clk end neg ret--------------

/*module Dff_pos_clk_Asynch_rst(D,clk,asynk_reset,Q);
    input D;
    input clk;
    input asynk_reset;
    output Q;
	 reg Q;

	 always@(negedge clk or negedge asynk_reset)
	 begin
	 if(asynk_reset == 1'b0)
	 Q <= 1'b0;
	 else
	 Q <= D;
	 end
endmodule*/

//-----------------using neg clk end pos reset--------------

module Dff_pos_clk_Asynch_rst(D,clk,asynk_reset,Q);
    input D;
    input clk;
    input asynk_reset;
    output Q;
	 reg Q;

	 always@(negedge clk or posedge asynk_reset)
	 begin
	 if(asynk_reset == 1'b1)
	 Q <= 1'b0;
	 else
	 Q <= D;
	 end
endmodule


