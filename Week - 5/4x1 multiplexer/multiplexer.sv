module mux4X1 (input [3:0]in, input [1:0]sel, output reg out);
    always @(*) begin
        if (sel === 2'b00) begin
            out = in[0];
        end else if (sel === 2'b01) begin
            out = in[1];
        end else if (sel === 2'b10) begin
            out = in[2];
        end else if (sel === 2'b11) begin
            out = in[3];
        end
    end
endmodule
