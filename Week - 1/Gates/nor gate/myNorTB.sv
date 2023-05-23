module myNorTB;
    reg input1, input2;
    wire op;
    myNor myNorTB(.input1(input1), .input2(input2), .op(op));
        initial begin
            $monitor(input1, input2, op);

            input1 = 1'b0;
            input2 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Output: %b", input1, input2, op);

            input1 = 1'b1;
            input2 = 1'b0;
            #1 $display("Input1: %b, Input2: %b, Output: %b", input1, input2, op);

            input1 = 1'b0;
            input2 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Output: %b", input1, input2, op);

            input1 = 1'b1;
            input2 = 1'b1;
            #1 $display("Input1: %b, Input2: %b, Output: %b", input1, input2, op);
        end
endmodule