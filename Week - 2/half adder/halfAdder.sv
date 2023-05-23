module myHalfAdder(X, Y, sum, cout);
    input X, Y;
    output sum, cout;

    assign sum = X ^ Y;
    assign cout = X & Y;
endmodule