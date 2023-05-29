module tb_ringcounter;

  reg clk, Reset;
  wire [3:0] Count_out;

  ringcounter dut (
    .clk(clk),
    .reset(Reset),
    .Count_out(Count_out)
  );

  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1);
    clk = 0;
    Reset = 1;
    #10 Reset = 0;
    #60 $finish;
  end

  always @(posedge clk) begin
    $display("count: %d", Count_out);
  end

endmodule
