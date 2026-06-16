module alu_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] sel;

wire [3:0] Y;
wire carry;

alu DUT(
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y),
    .carry(carry)
);

initial begin
    $monitor("Time=%0t A=%b B=%b sel=%b Y=%b carry=%b",
             $time, A, B, sel, Y, carry);

    A = 4'b1010;   // 10
    B = 4'b0011;   // 3

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT
    sel = 3'b110; #10; // LEFT SHIFT
    sel = 3'b111; #10; // RIGHT SHIFT

    $finish;
end

endmodule