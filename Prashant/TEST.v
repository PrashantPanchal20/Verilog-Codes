//-----------------------------Write/Display Task ----------------------
/*module test;

initial begin 
$display ("This end with a new line");
$write ("This does not");
$write("like this . To start new line , use new line char");
$display ("This always start on a new line!");
end

endmodule*/
//-----------------------------Verilog strobes-----------------------------
// module tb;
// initial begin 
// reg [7:0] a;
// reg [7:0] b;

// a = 8'h2D;
// b = 8'h2D;

// #10
// b <= a+1;

//---------------------int /real/ time ----------------------------
// module testbench;

// integer a;
// real b;
// time c;
// reg [8*11:1] str = "Hello_world";
// initial begin
//     a = 32'hcafe_1234;
//     b = 0.123456789;
//     #20
//     c = $time;
//     $display("This is the value of intiger a =  %0h",a);
//     $display("b = %0f",b);
//     $display("c = %0t",c);
//     $display("str = %s",str);
//     $display("str2 = %s",str2);
//     $display("str3 = %s",str3);
// end
// endmodule

//------------------------------------String , System Verilog-------------------------
// module testbench;
// reg [8*11:1] str = "Hello_World";
// reg [8*5:1] str2 = "Hello_world";
// reg [8*20:1] str3 = "Hello_world";

// initial begin
// $display("Display is a task of system verilog it is only work in bw intial begin "); 
// $display("str = %s",str);      
// $display("str2 = %s",str2);
// $display("str3 = %s",str3);
// end
// endmodule

// -------------------------------------Scalar and vector -----------------------------
// module test;
// reg [31:0] data;                     // confusion Try again
// integer i;

// initial begin
//     data=32'hFACE_CAFE;

//     for (i =0 ; i < 4 ; i++ ) begin
//         $display("data[8*%0d +: 8] = 0 x %0h", i, data[8*i +: 8]); //data[8*0+8 : 8*0]
//     end                                                            //first is start bit and second is width
//     //working init
// $display ("data[7:0] = 0 x %0h",data[7:0]);
// $display ("data[15:8] = 0 x %0h",data[15:8]);                    
// $display ("data[23:16] = 0 x %0h",data[23:16]);
// $display ("data[31:24] = 0 x %0h",data[31:24]);
// end
// endmodule
//---------------------------------------------Arrays -------------------------------------------------------
// module test;

// reg [7:0] mem1;
// reg [7:0] mem2[0:3];        //8-bit wide vecter array with depth 4
// reg [15:0] mem3[0:3][0:1];  //16-bit wide vecter 2D array with row=4 and column=2

// initial begin
//   integer i;

//   mem1=8'ha9;
//   $display("mem1 = 0 x %0h",mem1);

//   mem2[0] = 8'haa;
//   mem2[1] = 8'hbb;
//   mem2[2] = 8'hcc;                                     // some error
//   mem2[3] = 8'hdd;

//   for (i = 0 ; i < 4 ; i++) begin
//       $display("mem2[%0d] = 0 x %0h",i,mem2[i]);
//   end

// end
// endmodule
//==========================================module creation ==================================
// shift register----------
//=============================combinational logic with assign =============================
//logic and tb

//==============================Verilog operators==========================
// module des;

// reg [7:0] data1;
// reg [7:0] data2;                         //more operator are check after

// initial begin
//     data1 = 45;
//     data2 = 9;

//     $display("Add += %d",data1+data2);
//     $display("Minus -= %d",data1-data2);
//     $display("Mul *= %d",data1*data2);
//     $display("Div /= %d",data1/data2);
//     $display("Mod % = %d",data1%data2);
//     $display("Power **= %d",data2**2);
// end
// endmodule
//==============================================Always block=====Dff,tff,always@()===============
//==============================Sequence detecter """ 1011 "===============================================

module det_1011(input clk, input rstn, input in, output out);

parameter IDLE = 0,
            S1 = 1,
            S10 = 2,
            S101 = 3,
            S1011 = 4;
reg [4:0] cur_state , next_state;

assign out = cur_state == S1011 ? 1 : 0;

always @(posedge clk) begin

    if (rstn == 0)
        cur_state <= IDLE;
    else
        cur_state <= next_state;
    end
always @(cur_state or in) begin
    case (cur_state)
    IDLE : begin
        if (in)
            next_state = S1;
        else next_state = IDLE;
        end
    S1 : begin
        if (in)
            next_state = IDLE;
        else next_state = S10 ;
        end
    S10 : begin
        if (in)
            next_state = S101;
        else next_state = IDLE;            
        end
    S101 : begin
        if (in)
            next_state = S1011;
        else next_state = IDLE;
        end
    S1011 : begin
        next_state = IDLE;
        end 
    endcase
end
endmodule





