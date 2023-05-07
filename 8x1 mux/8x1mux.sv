module mux8X1 (input [7:0]in, input [2:0]sel, output reg out);
    always @(*) begin
        if (sel === 2'b000) begin
            out = in[0];
        end else if (sel === 'b001) begin
            out = in[1];
        end else if (sel === 'b010) begin
            out = in[2];
        end else if (sel === 'b011) begin
            out = in[3];
        end else if (sel === 'b100) begin
            out = in[4];
        end else if (sel === 'b101) begin
            out = in[5];
        end else if (sel === 'b110) begin
            out = in[6];
        end else if (sel === 'b111) begin
            out = in[7];
        end
    end
endmodule
