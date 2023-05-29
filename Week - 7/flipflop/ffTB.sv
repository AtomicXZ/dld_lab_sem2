module tb;
    reg D,clk,rst;
    wire Q;
    dff dut(.D(D),.clk(clk),.rst(rst),.Q(Q));
        initial begin
            $dumpfile("dump.vcd");
            $dumpvars(1);
        end

        initial begin
            clk=0;
            D=0;
            forever #10 clk=~clk;
        end
        
        initial begin
            $monitor("D: %b, clk: %b, rst: %b, Q: %b", D, clk, rst, Q);
            rst=1;#20;
            rst=0;#20;
            D=1;#40;
            D=0;#40;
            $finish;
        end
endmodule
