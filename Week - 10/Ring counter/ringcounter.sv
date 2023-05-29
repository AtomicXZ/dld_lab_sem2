module ringcounter (clk, reset, Count_out);

  input clk, reset;
  output [3:0] Count_out;
  reg [3:0] Count_temp;

  always @(posedge clk or reset) begin
    if (reset) begin
      Count_temp <= 4'b0001;
    end
    else if (clk) begin
      Count_temp <= {Count_temp[2:0], Count_temp[3]};
    end
  end

  assign Count_out = Count_temp;

endmodule
