//---------------using pos clk and pos reset---------------
/*module Dff_pos_clk_synch_rst(D,clk,synk_reset,Q);
    input D;
    input clk;
    input synk_reset;
    output Q;
	 reg Q;

	 always@(posedge clk)

	 begin
	 	if(synk_reset == 1'b1)
		Q <= 1'b0;
		else
		Q <= D;
		end
endmodule*/

//------------------using pos clk and negative reset --------------

module Dff_pos_clk_synch_rst(D,clk,synk_reset,Q);
    input D;
    input clk;
    input synk_reset;
    output Q;
	 reg Q;

	 always@(posedge clk)

	 begin
	 	if(synk_reset == 1'b0)
		Q <= 1'b0;
		else
		Q <= D;
		end
endmodule
//--------------------using neg clk and pos reset----------------
/*module Dff_pos_clk_synch_rst(D,clk,synk_reset,Q);
    input D;
    input clk;
    input synk_reset;
    output Q;
	 reg Q;

	 always@(negedge clk)

	 begin
	 	if(synk_reset == 1'b1)
		Q <= 1'b0;
		else
		Q <= D;
		end
endmodule */
//---------------------using neg clk and neg reset ---------------
/*module Dff_pos_clk_synch_rst(D,clk,synk_reset,Q);
    input D;
    input clk;
    input synk_reset;
    output Q;
	 reg Q;

	 always@(negedge clk)

	 begin
	 	if(synk_reset == 1'b0)
		Q <= 1'b0;
		else
		Q <= D;
		end
endmodule		*/

