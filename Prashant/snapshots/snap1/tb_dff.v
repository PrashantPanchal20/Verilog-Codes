
module tb_dff();  
    reg clk;  
    reg D;  
    reg reset;  						
	 wire Q;  
  
    Dff_pos_clk_synch_rst  dff_0_anyname ( D,clk,reset,Q);  
  
    // Generate clock 
	 initial begin 
	  clk = 0;
	 		forever #20 clk = ~clk;	
			parameter freq = 10000 ;
			end
  
    // Testcase  
    initial begin  
	 	reset = 1;
		D <= 0;
		#300;
		reset = 0;
		D <= 1;
		#300;
		D <= 0;
		#300;
		D <= 1;
		
		end  
endmodule
