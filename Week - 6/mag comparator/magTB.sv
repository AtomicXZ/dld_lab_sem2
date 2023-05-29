module testbench();

    magComparator mag (.A(A), .B(B), .eq(eq), .isG(isG), .isS(isS));

    reg [3:0]A;
    reg [3:0]B;

    wire eq;
    wire isG;
    wire isS;

    initial begin
        $monitor("A = %d, B = %d, eq = %d, isG = %d, isS = %d", A, B, eq, isG, isS);
        $dumpfile("dump.vcd"); $dumpvars;
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0001; B = 4'b0000; #10;
        A = 4'b0111; B = 4'b1000; #10;
        A = 4'b0111; B = 4'b0010; #10;
        A = 4'b0111; B = 4'b0100; #10;
        A = 4'b0100; B = 4'b0100; #10;
        A = 4'b1101; B = 4'b1111; #10;
    end

endmodule
