module BCDupdown_tb;
  
  reg Clk, rst, UpOrDown;
  wire [3:0] Count;
  
  BCDupdown dut (.Clk(Clk), .rst(rst), .UpOrDown(UpOrDown), .Count(Count));
  
  always #5 Clk = ~Clk;
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1);
    Clk = 0; rst = 0; UpOrDown = 1;
    rst = 1; #10 rst = 0;
    #20 UpOrDown = 1;
    #40 UpOrDown = 0;
    #40 $finish;
  end
  
  always @(posedge Clk) $display("Count: %d", Count);
  
endmodule
