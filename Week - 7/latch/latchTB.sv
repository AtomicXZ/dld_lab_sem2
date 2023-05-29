module test();
    reg d,en,rst;
    wire q;
    dlatch uut(.d(d),.en(en),.rst(rst),.q(q));
    initial begin
        $monitor("D: %b, en: %b, rst: %b, Q: %b", d, en, rst, q);
        $dumpfile("dump.vcd");
        $dumpvars(1);
        
        en=0;rst=1;d=0;#20; 
        en=1;rst=0;d=1;#20; 
        en=0;rst=0;d=0;#20; 
        en=1;rst=0;d=0;#20; 
        $finish; 
    end
endmodule
