module testbench();
    reg [3:0]d;
    reg clk;
    wire [3:0]q;
    pipo a(clk, d, q);
    initial begin
        $dumpfile("dump.vcd"); $dumpvars(1);
        $monitor($time," d=%b,clk=%b,q=%b",d,clk,q);
    end
    initial begin
        clk=1'b0;
        forever #5 clk=~clk;
    end
    initial begin
        d=4'b1001;
        #10 d=4'b1011;
        #10 d=4'b1111;
        #40 $finish;
    end
endmodule
