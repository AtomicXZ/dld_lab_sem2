module encoder_tb;

  reg D0, D1, D2, D3, D4, D5, D6, D7;

  wire A0, A1, A2;

  encoder dut(.D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7), .A0(A0), .A1(A1), .A2(A2));

  initial begin
    $dumpfile("dump.vcd"); $dumpvars(1);
    $monitor("D0: %b, D1: %b, D2: %b, D3: %b", D0, D1, D2, D3,
    "\nD4: %b, D5: %b, D6: %b, D7: %b", D4, D5, D6, D7,
    "\nA0: %b, A1: %b, A2: %b\n", A0, A1, A2); 
    D0 = 0; D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 0; #5; 
    D0 = 1; D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 1; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 1; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 0; D3 = 1; D4 = 0; D5 = 0; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 0; D3 = 0; D4 = 1; D5 = 0; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 1; D6 = 0; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 1; D7 = 0; #5;
    D0 = 0; D1 = 0; D2 = 0; D3 = 0; D4 = 0; D5 = 0; D6 = 0; D7 = 1; #5;
    $finish; 
  end

endmodule
