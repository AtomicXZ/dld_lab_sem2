module dff(input D,clk,rst,output reg Q);
    initial Q=1'b0;
    always@(posedge clk) begin
        if(rst)
        Q<=1'b0;
        else
        Q<=D;
    end
endmodule