module testbench;
    reg d,clk;
    wire d0;
    siso a(d, clk, d0);
    initial begin
        $dumpfile("dump.vcd"); $dumpvars(1);
        $monitor($time," d=%b,clk=%b,d0=%b",d,clk,d0);
    end
    initial begin
        clk=1'b0;
        forever #5 clk=~clk;
    end
    initial begin
        d=1;
        #10 d=0;
        #10 d=1;
        #10 d=1;
        #40 $finish;
    end 
endmodule
