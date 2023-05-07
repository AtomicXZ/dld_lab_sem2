module myXnor(input1, input2, op);
  input input1, input2;
  output op;
  assign op = ~(input1 ^ input2);
endmodule