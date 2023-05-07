module gates(input a, b, output nd, r, nnd, nr, xr, nxr);
    assign nd = a & b;
    assign r = a | b;
    assign nnd = ~(nd);
    assign nr = ~r;
    assign xr = a ^ b;
    assign nxr = ~xr;
endmodule