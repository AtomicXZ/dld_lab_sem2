module myFullAdder(X, Y, cin, sum, cout);
    input X, Y, cin;
    output sum, cout;
    wire xor12;

    assign xor12 = X ^ Y;
    assign sum = xor12 ^ cin;
    assign cout = (X & Y) | (xor12 & cin);
endmodule