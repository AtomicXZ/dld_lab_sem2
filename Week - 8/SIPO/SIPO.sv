module sipo(d, clk, d0);
    input d,clk;
    output reg [3:0]d0 = 1'b0000;
    always @(posedge clk) begin
        d0[3] <= d;
        d0[2] <= d0[3];
        d0[1] <= d0[2];
        d0[0] <= d0[1];
    end
endmodule
