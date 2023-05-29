module fullAdderTB;
    reg X, Y, cin;
    wire sum, cout;
    myFullAdder fullAdderTB(.X(X), .Y(Y), .cin(cin), .sum(sum), .cout(cout));
        initial begin
            $monitor("X: %b, Y: %b, cin: %b, sum: %b, cout: %b", X, Y, cin, sum, cout);
            $dumpfile("dump.vcd"); $dumpvars;
            X = 1'b0; Y = 1'b0; cin = 1'b0; #10;
            X = 1'b0; Y = 1'b0; cin = 1'b1; #10;
            X = 1'b0; Y = 1'b1; cin = 1'b0; #10;
            X = 1'b0; Y = 1'b1; cin = 1'b1; #10;
            X = 1'b1; Y = 1'b0; cin = 1'b0; #10;
            X = 1'b1; Y = 1'b0; cin = 1'b1; #10;
            X = 1'b1; Y = 1'b1; cin = 1'b0; #10;
            X = 1'b1; Y = 1'b1; cin = 1'b1; #10;
            $finish;
        end
endmodule