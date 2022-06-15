module happy_number();
    
    integer num=13,temp,result;


    function sum;
        input num;
       // reg sum;
        reg result;

        temp=0;
        //sum=0;
       // begin

        while (num > 0) begin
            temp <= num%10;
            sum <= sum + (temp*temp);
            num <= num/10;
            result <= sum(num);

        end 
       // end
    endfunction

    initial begin

    if (num == 1 || num == 7 || result == 1) begin
        $display("%d is the Happy number.",num);
    end
    else begin 
        $display("%d is not a Happy number.",num);
    end
    end
endmodule