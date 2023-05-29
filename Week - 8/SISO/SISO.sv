module siso(d, clk, d0);
    input d, clk;
    output reg d0;
    reg q1, q2, q3;
    always @(posedge clk) begin
        q1 <= d;
        q2 <= q1;
        q3 <= q2;
        d0 <= q3;
    end
endmodule
