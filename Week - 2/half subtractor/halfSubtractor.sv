module myhalfSubtractor(X, Y, diff, bout);
    input X, Y;
    output reg diff, bout;

    always @(X or Y)
    begin
        diff = X ^ Y;
        bout = (~X) & Y;
    end
endmodule