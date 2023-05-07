module mux8X1_tb;
    reg [7:0]in;
    reg [2:0]sel;
    wire out;

    mux8X1 uut (.in(in), .sel(sel), .out(out));

    initial begin
        $monitor("in: %b | sel: %b | out: %b", in, sel, out);
            in = 'b1; sel = 'b0; #10;
            in = 'b0; sel = 'b0; #10;
            in = 'b10; sel = 'b1; #10;
            in = 'b0; sel = 'b1; #10;
            in = 'b100; sel = 'b10; #10;
            in = 'b0; sel = 'b10; #10;
            in = 'b1000; sel = 'b11; #10;
            in = 'b0; sel = 'b11; #10;
            in = 'b10000; sel = 'b100; #10;
            in = 'b0; sel = 'b100; #10;
            in = 'b100000; sel = 'b101; #10;
            in = 'b0; sel = 'b101; #10;
            in = 'b1000000; sel = 'b110; #10;
            in = 'b0; sel = 'b110; #10;
            in = 'b10000000; sel = 'b111; #10;
            in = 'b0; sel = 'b111; #10;
        $finish;
    end
endmodule
