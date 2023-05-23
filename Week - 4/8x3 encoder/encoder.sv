module encoder (input D0, D1, D2, D3, D4, D5, D6, D7, output A0, A1, A2);
    assign A0 = D4 | D5 | D6 | D7;
    assign A1 = D2 | D3 | D6 | D7;
    assign A2 = D1 | D3 | D5 | D7;
endmodule