module myFullAdder(input1, input2, input3, sum, carry);
    input input1, input2, input3;
    output sum, carry;
    wire xor12;

    assign xor12 = input1 ^ input2;
    assign sum = xor12 ^ input3;
    assign carry = (input1 & input2) | (xor12 & input3);
endmodule