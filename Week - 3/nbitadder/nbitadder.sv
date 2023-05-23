module full_adder(input logic a, input logic b, input logic cin, output logic sum, output logic cout);
    assign {cout, sum} = a + b + cin;
endmodule

module nbitadder(input logic [31:0] A, input logic [31:0] B, output logic [31:0] out, output logic carry);
    logic [32:0] ctemp;
    assign ctemp[0] = 1'b0;
    genvar i;

    for (i = 0; i < 32; i++) begin: fa
        full_adder fa_i(A[i], B[i], ctemp[i], out[i], ctemp[i+1]);
    end

    assign carry = ctemp[32];
endmodule
