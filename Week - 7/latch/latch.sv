module dlatch(input en,d,rst, output reg q);
    always@(en) begin
        if(rst)
        q<=0;
        else
        q<=d;
    end
endmodule