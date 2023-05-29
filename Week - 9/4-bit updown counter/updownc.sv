module BCDupdown (
  input Clk,
  input rst,
  input UpOrDown,
  output reg [3:0] Count = 0
);

  always @(posedge Clk) begin
    if (rst == 1) begin
      Count <= 0;
    end
    else begin
      if (UpOrDown == 1) begin
        if (Count == 15) begin
          Count <= 0;
        end
        else begin
          Count <= Count + 1;
        end
      end
      else begin
        if (Count == 0) begin
          Count <= 15;
        end
        else begin
          Count <= Count - 1;
        end
      end
    end
  end
  
endmodule
