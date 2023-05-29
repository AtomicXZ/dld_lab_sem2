module tb_johnsoncounter;

  reg clk, reset;
  wire [3:0] Count_out;

  johnsoncounter dut (
    .clk(clk),
    .reset(reset),
    .Count_out(Count_out)
  );

  always #5 clk = ~clk;

  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1);
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #80 $finish;
  end

  always @(posedge clk) begin
    $display("count: %d", Count_out);
  end

endmodule
