module demux_1to8_tb;

reg in;
reg [2:0] sel;
wire [7:0] out;

demux_1to8 dut(in, sel, out);

initial begin
    $monitor("in: %b, sel: %b, out: %b", in, sel, out); 
    $dumpfile("dump.vcd"); $dumpvars(1);
    in = 1'b0; sel = 3'b000; #10;
    in = 1'b1; sel = 3'b001; #10;
    in = 1'b0; sel = 3'b010; #10;
    in = 1'b1; sel = 3'b011; #10;
    in = 1'b0; sel = 3'b100; #10;
    in = 1'b1; sel = 3'b101; #10;
    in = 1'b0; sel = 3'b110; #10;
    in = 1'b1; sel = 3'b111; #10;
    $finish;
end

endmodule