module dec_3x8(input en, input [3:0] in, output[15:0] out);

assign out = en ? 1<<in : 0;



endmodule
