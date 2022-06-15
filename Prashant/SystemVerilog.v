// // ------------------------------------String------------------------
// module string_datatype();
//    //declaration
//    string s1="Hello World";
//    string s2 = {"Hi," "," ",s1};
//    bit [31:0]b= '128';
//    string s3 = b;               // sets 128 to s3
//  initial begin
//      //display values
//      $display("String 1 s1 = %0s",s1);
//      $display("String 2 s2 = %0s",s2);
//      $display("String 3 s3 = %0s bit b = %0s",s3,b);
//    end
//  endmodule
//---------------------------------------ENUM DATA TYPES ---------------------------
// module enum_datatype;
//   //declaration
//   enum { red, green, blue, yellow, white, black } Colors;
  
//   //display members of Colors
//   initial begin
//     Colors = Colors.first; 
    
//     for(int i=0;i&amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;6;i++) begin
//        $display("Colors :: Value of  %0s \t is = %0d",Colors.name,Colors);
//        Colors = Colors.next;     
//     end
//   end
// endmodule

module SystemVerilog();
  //declaration of array’s
  int array1[6];               //single dimension array
  int array2[5:0];             //single dimension array
  int array3[2:0][3:0];        //multi dimension array
  int array4[4:0];
 
  initial begin
    //array initialization
    array1 = '{0,1,2,3,4,5};
    array2 = '{0,1,2,3,4,5};
    array3 = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
 
    //displaying array elements
    $display("-------displaying array1-------");
    foreach(array1[i]) $display("\t array1[%0d] = %0d",i,array1[i]);
 
    $display("-------displaying array2-------");
    for(int i=0;i<6;i++) $display("\t array2[%0d] = %0d",i,array2[i]);
 
    $display("-------displaying array3-------");
    foreach(array3[i,j]) $display("\t array3[%0d][%0d] = %0d",i,j,array3[i][j]);
 
    $display("-------displaying uninitialized array4-------");
    for(int i=0;i<5;i++) $display("\t array4[%0d] = %0d",i,array4[i]);
  end
endmodule
