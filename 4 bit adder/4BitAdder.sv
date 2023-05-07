module fourbit_adder(output [3:0] sum, output cout, input [3:0] X, input [3:0] Y);
  wire C1,C2,C3;

  full_adder fa1(X[0], Y[0], 1'b0, sum[0], C1); // half adder is just full adder with c-in = 0
  full_adder fa2(X[1], Y[1], C1, sum[1], C2);
  full_adder fa3(X[2], Y[2], C2, sum[2], C3);
  full_adder fa4(X[3], Y[3], C3, sum[3], cout);
endmodule

module full_adder(input a, input b, input cin, output sum, output cout);
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);
endmodule