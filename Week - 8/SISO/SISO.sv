module dff(d,clk,d0);
    input d,clk;
    output d0;
    reg d0=0;
    always @ (posedge clk)
    begin
    d0<=d;
end
endmodule


module siso(d, clk, d0);
    input d,clk;
    output d0;
    wire q1,q2,q3;
    dff a(d, clk, q1);
    dff b(q1, clk, q2);
    dff c(q2, clk, q3);
    dff d1(q3, clk, d0);
endmodule
