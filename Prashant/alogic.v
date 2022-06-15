// module alogic(a,b,c,d,e,z);
// input a,b,c,d,e;
// output z;
// assign z = ((a & b) | (c ^ d) & ~e);
// endmodule

//---------------------------------using always block------------------
module alogic(a,b,c,d,e,z);
input a,b,c,d,e;
output reg z;

always @(a or b or c or d or e) begin
    z = ((a & b) | (c ^ d) & ~e);
end
endmodule