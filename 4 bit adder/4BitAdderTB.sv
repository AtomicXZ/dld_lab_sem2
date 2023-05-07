module testbench;

  reg [3:0] X;
  reg [3:0] Y;

  wire [3:0] sum;
  wire cout;

  fourbit_adder dut(
    .sum(sum),
    .cout(cout),
    .X(X),
    .Y(Y)
  );

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);

    $monitor("X: %b, Y: %b, sum: %b, cout: %b", X, Y, sum, cout);

    X = 4'b0000;
    Y = 4'b0000;
    #10;

    X = 4'b0101;
    Y = 4'b0011;
    #10;

    X = 4'b1111;
    Y = 4'b0001;
    #10;

    X = 4'b1000;
    Y = 4'b0111;
    #10;

    X = 4'b1111;
    Y = 4'b1111;
    #10;

    $finish;
  end

endmodule
