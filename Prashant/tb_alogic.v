module tb_a_logic;
reg a,b,c,d,e;
wire z;

alogic u0(a,b,c,d,e,z);
integer i;

initial begin
    a <= 0;
    b <= 0;
    c <= 0;
    d <= 0;
    e <= 0;

    $monitor("a = %0b, b = %0b, c = %0b, d=%0b, e=%0b",a,b,c,d,e);
    //bc it is a 5 i/p module so here will be 32 combination of input so use for loop
  
   for (i = 0; i < 32 ; i = i+1) 
   begin
     {a,b,c,d,e} = i;
       // #10
   end
end
endmodule