module dff(d,clk,d0);
    input d,clk;
    output d0;
    reg d0=0;
    always @ (posedge clk)
    begin
    d0<=d;
    end
endmodule

module sipo(d, clk, d0);
    input d,clk;
    output [3:0]d0;
    dff aa(d, clk, d0[3]);
    dff bb(d0[3], clk, d0[2]);
    dff cc(d0[2], clk, d0[1]);
    dff dd(d0[1], clk, d0[0]);
endmodule
