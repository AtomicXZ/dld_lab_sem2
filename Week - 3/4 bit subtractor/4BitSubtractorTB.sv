module test_fourbit_subtractor;

  reg [3:0] X;
  reg [3:0] Y;
  
  wire [3:0] diff;
  wire borrow;

  fourbit_subtractor uut (
    .X(X),
    .Y(Y),
    .diff(diff),
    .borrow(borrow)
  );

  initial begin
    $monitor("X: %b, Y: %b, diff: %b, borrow: %b", X, Y, diff, borrow);
    
    X = 2;
    Y = 1;
    #10;
    
    X = 6;
    Y = 4;
    #10;
    
    X = 15;
    Y = 7;
    #10;
    
    X = 0;
    Y = 8;
    #10;
    
    X = 5;
    Y = 10;
    #10;
        
    $finish;
  end

endmodule
