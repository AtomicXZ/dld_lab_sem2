module NotTB;
    reg in;
    wire out;

    myNot myNot_inst(.in(in), .out(out));
        initial begin
            $monitor(in, out);  
            
            in = 1'b0;
            #1 $display("Input: %b, Output: %b", in, out);

            in = 1'b1;
            #1 $display("Input: %b, Output: %b", in, out);            
        end
endmodule