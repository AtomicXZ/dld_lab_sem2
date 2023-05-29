module NotTB;
    reg in;
    wire out;

    myNot myNot_inst(.in(in), .out(out));
        initial begin
            $monitor("Input: %b, Output: %b", in, out);  
            $dumpfile("dump.vcd"); $dumpvars;
            in = 1'b0; #5;
            in = 1'b1; #5;
        end
endmodule