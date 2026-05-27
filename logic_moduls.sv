module Adder(
  reg [3:0]a,b,
  wire [3:0]s,c     
  );
  assign {c,s} = a+b;

endmodule
