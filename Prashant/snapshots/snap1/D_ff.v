module D_ff(input d, input clr, input clk, output reg q); 
				  
  
    always @ (posedge clk or posedge clr)  
       if (clr)  
          q <= 0;  
       else  
          q <= d;  
endmodule  