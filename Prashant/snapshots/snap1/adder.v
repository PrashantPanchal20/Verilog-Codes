module adder(a,b,sum,carry);
    input a,b;
    output reg sum;
    output reg carry;
	initial begin
			assign sum = a ^ b;
			assign carry = a & b;
			end

endmodule
