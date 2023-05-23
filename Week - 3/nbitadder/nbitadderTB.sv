module nbitadder_tb;

  // Inputs
  reg [31:0] A;
  reg [31:0] B;

  // Outputs
  wire [31:0] out;
  wire carry;

  // Instantiate the n-bit adder
  nbitadder dut(
    .A(A),
    .B(B),
    .out(out),
    .carry(carry)
  );

  // Stimulus
  initial begin
    $monitor("A = %d, B = %d, out = %d, carry = %d", A, B, out, carry);
    A = 10;
    B = 20;
    #10;
    A = 100;
    B = 200;
    #10;
    A = 1291;
    B = 21412;
    #10;

    A = 69; B = 69; #10;
    $finish;
  end

endmodule
