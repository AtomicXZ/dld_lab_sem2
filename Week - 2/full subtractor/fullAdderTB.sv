module fullAdderTB;
    reg input1, input2, input3;
    wire sum, carry;
    myFullAdder fullAdderTB(.input1(input1), .input2(input2), .input3(input3), .sum(sum), .carry(carry));
        initial begin
            $dumpfile("dump.vcd");
            $dumpvars(1);

            input1 = 1'b0;
            input2 = 1'b0;
            input3 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b0;
            input2 = 1'b0;
            input3 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b0;
            input2 = 1'b1;
            input3 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b0;
            input2 = 1'b1;
            input3 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b1;
            input2 = 1'b0;
            input3 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b1;
            input2 = 1'b0;
            input3 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b1;
            input2 = 1'b1;
            input3 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);

            input1 = 1'b1;
            input2 = 1'b1;
            input3 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Input3 (c-in): %b, Sum: %b, Carry: %b", input1, input2, input3, sum, carry);
        end
endmodule