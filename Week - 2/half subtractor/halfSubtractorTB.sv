module halfSubtractorTB;
    reg X, Y;
    wire diff, bout;
    myhalfSubtractor halfSubtractorTB(.X(X), .Y(Y), .diff(diff), .bout(bout));
        initial begin
            $monitor("X: %b, Y: %b, diff: %b, bout: %b", X, Y, diff, bout);
            $dumpfile("dump.vcd"); $dumpvars;
            X = 1'b0; Y = 1'b0; #10;
            X = 1'b1; Y = 1'b0; #10;
            X = 1'b0; Y = 1'b1; #10;
            X = 1'b1; Y = 1'b1; #10;
            $finish;
        end
endmodule