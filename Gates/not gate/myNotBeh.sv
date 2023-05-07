module myNot(in, out);
    input in;
    output reg out;
    
    always @(in)
    begin
        if (in == 1)
            out = 0;
        else
            out = 1;
    end
endmodule