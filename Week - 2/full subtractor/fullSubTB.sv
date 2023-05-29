module full_subtractor_tb;
    reg a, b, bin;
    wire diff, bout;

    full_subtractor fs(a, b, bin, diff, bout);

    initial begin
        $monitor("a = %b, b = %b, bin = %b, diff = %b, bout = %b",
                 a, b, bin, diff, bout);
        $dumpfile("dump.vcd"); $dumpvars;
        a = 0; b = 0; bin = 0; #10;
        a = 0; b = 0; bin = 1; #10;
        a = 0; b = 1; bin = 0; #10;
        a = 0; b = 1; bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        a = 1; b = 0; bin = 1; #10;
        a = 1; b = 1; bin = 0; #10;
        a = 1; b = 1; bin = 1; #10;
        $finish;
    end
endmodule
