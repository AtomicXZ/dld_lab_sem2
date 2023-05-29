module magComparator(input [3:0]A, input [3:0]B, output eq, isG, isS);
    assign eq = A == B ? 1 : 0;
    assign isG = A > B ? 1 : 0;
    assign isS = A < B ? 1 : 0;
endmodule