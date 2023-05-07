module demux1X4_tb;
    reg in;
    reg [1:0] sel;
    wire [3:0] out;

    demux1X4 uut (.in(in), .sel(sel), .out(out));

    initial begin
        $monitor("in: %b | sel: %b | out: %b", in, sel, out);
        in = 1'b1; sel = 2'b00; #10;
        in = 1'b1; sel = 2'b01; #10;
        in = 1'b1; sel = 2'b10; #10;
        in = 1'b1; sel = 2'b11; #10;
        $finish;
    end
endmodule