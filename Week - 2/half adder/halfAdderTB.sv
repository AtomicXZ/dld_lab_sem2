module halfAdderTB;
    reg X, Y;
    wire sum, cout;
    myHalfAdder halfAdderTB(.X(X), .Y(Y), .sum(sum), .cout(cout));
        initial begin
            $monitor("X: %b, Y: %b, sum: %b, cout: %b", X, Y, sum, cout);
            $dumpfile("dump.vcd"); $dumpvars;
            X = 1'b0; Y = 1'b0; #10;
            X = 1'b1; Y = 1'b0; #10;
            X = 1'b0; Y = 1'b1; #10;
            X = 1'b1; Y = 1'b1; #10;
            $finish;
        end
endmodule