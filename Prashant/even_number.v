// module even_number();

// reg [7:0] a;
// reg [7:0] b;

// integer seed,i,j;
// initial begin
//     for (i = 0; i<10;i=i+1 ) begin
//         a = $random;
//         #100
//         b = $random%20;
//     $display("%d = A: %d, B: %d",i,a,b);
//     end
//     $finish;
// end

// endmodule

module even_number();

reg [7:0] a;
reg [1:0] b;

integer i;
initial begin
    for (i = 0; i<=10;i=i+1 ) begin
        a = $random*0 + (i*2);
        #100
        b = $random%20;
    $display("%d = A: %d, B: %d",i,a,b);
    a = i+2;
    end
end
endmodule
