module halfSubtractorTB;
    reg X, Y;
    wire diff, bout;
    myhalfSubtractor halfSubtractorTB(.X(X), .Y(Y), .diff(diff), .bout(bout));
        initial begin
            $monitor("X: %b, Y: %b, diff: %b, bout: %b", X, Y, diff, bout);
            X = 1'b0;
            Y = 1'b0;
            #10;

            X = 1'b1;
            Y = 1'b0;
            #10;

            X = 1'b0;
            Y = 1'b1;
            #10;

            X = 1'b1;
            Y = 1'b1;
            #10;

            $monitor;
        end
endmodule