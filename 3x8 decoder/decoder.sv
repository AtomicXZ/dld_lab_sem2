module decoder (input A0, A1, A2, output D0, D1, D2, D3, D4, D5, D6, D7);
    assign D0 = ~A0 & ~A1 & ~A2;
    assign D1 = ~A0 & ~A1 & A2;
    assign D2 = ~A0 & A1 & ~A2;
    assign D3 = ~A0 & A1 & A2;
    assign D4 = A0 & ~A1 & ~A2;
    assign D5 = A0 & ~A1 & A2;
    assign D6 = A0 & A1 & ~A2;
    assign D7 = A0 & A1 & A2;
endmodule