module myAndTB;
    reg input1, input2;
    wire op;
    myAnd myAndTB(.input1(input1), .input2(input2), .op(op));
        initial begin
            $monitor("Input1: %b, Input2: %b, Output: %b", input1, input2, op);
            $dumpfile("dump.vcd"); $dumpvars;
            input1 = 1'b0; input2 = 1'b0; #5;
            input1 = 1'b1; input2 = 1'b0; #5;
            input1 = 1'b0; input2 = 1'b1; #5;
            input1 = 1'b1; input2 = 1'b1; #5;
        end
endmodule