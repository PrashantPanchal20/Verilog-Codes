// module D_ff_latch(input d, input en, input rst, output reg q); 
				  
  
//     always @ (en or rst or d)    // working on level clock
//        if (rst == 0)  
//           q <= 0;  
//        else  
//          if(en)
//           q <= d;  
// endmodule 

module D_ff_latch(input d, input en, input rst, output reg q); 
				  
  
    always @ (posedge en or negedge rst)    // working on edge clock
       if (rst == 0)  
          q <= 0;  
       else  
         if(en)
          q <= d;  
endmodule 