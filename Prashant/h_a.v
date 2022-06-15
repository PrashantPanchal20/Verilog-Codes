module h_gg(a,b,s,c);
input a;
input b;
output s;
output c;
reg s;
reg c;
always@(a,b)
begin
 s= a^b;
 c=a&b;
end

endmodule
