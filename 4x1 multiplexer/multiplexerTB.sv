module mux4X1_tb;
    reg [3:0]in;
    reg [1:0]sel;
    wire out;

    mux4X1 uut (.in(in), .sel(sel), .out(out));

    initial begin
        $monitor("in: %b | sel: %b | out: %b", in, sel, out);
        in = 4'b0001; sel = 2'b00; #10;
        in = 4'b0000; sel = 2'b00; #10;
        in = 4'b0010; sel = 2'b01; #10;
        in = 4'b0100; sel = 2'b10; #10;
        in = 4'b0000; sel = 2'b10; #10;
        in = 4'b1000; sel = 2'b11; #10;
        $finish;
    end
endmodule
