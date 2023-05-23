module myXor(input1, input2, op);
    input input1, input2;
    output reg op;
    
    always @(input1, input2)
    begin
        if (input1 != input2)
            op = 1;
        else
            op = 0;
    end
endmodule