module pipo (input clk, input [3:0]D, output reg [3:0]Q);
always @ (posedge clk) begin
    Q[3] <= D[3];
    Q[2] <= D[2];
    Q[1] <= D[1];
    Q[0] <= D[0];
end
endmodule