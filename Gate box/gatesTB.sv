module gatesTB;
    reg a, b;
    wire nd, r, nnd, nr, xr, nxr;

    gates dut(.a(a), .b(b), .nd(nd), .r(r), .nnd(nnd), .nr(nr), .xr(xr), .nxr(nxr));

    initial begin 
        $monitor("a: %b, b: %b, And: %b, Or: %b, Nand: %b, Nor: %b, Xor: %b, Nxor: %b", a, b, nd, r, nnd, nr, xr, nxr);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end
endmodule