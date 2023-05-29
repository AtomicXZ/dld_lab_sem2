module decoder_tb;
  reg A0, A1, A2;
  wire D0, D1, D2, D3, D4, D5, D6, D7;
  decoder dut (.A0(A0), .A1(A1), .A2(A2), .D0(D0), .D1(D1), .D2(D2), .D3(D3), .D4(D4), .D5(D5), .D6(D6), .D7(D7));

  initial begin
    $monitor("A0: %b, A1: %b, A2: %b", A0, A1, A2,
    "\nD0: %b, D1: %b, D2: %b, D3: %b", D0, D1, D2, D3,
    "\nD4: %b, D5: %b, D6: %b, D7: %b\n", D4, D5, D6, D7);
    $dumpfile("dump.vcd"); $dumpvars(1);
    A0 = 0; A1 = 0; A2 = 0;
    #20 A0 = 0; A1 = 0; A2 = 1;
    #20 A0 = 0; A1 = 1; A2 = 0;
    #20 A0 = 0; A1 = 1; A2 = 1;
    #20 A0 = 1; A1 = 0; A2 = 0;
    #20 A0 = 1; A1 = 0; A2 = 1;
    #20 A0 = 1; A1 = 1; A2 = 0;
    #20 A0 = 1; A1 = 1; A2 = 1;
    #20;
    $finish;
  end

endmodule
