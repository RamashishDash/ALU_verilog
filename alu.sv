module alu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] Y,
    output reg carry
);

always @(*) begin
    carry = 0;

    case(sel)
        3'b000: {carry, Y} = A + B;   // Addition
        3'b001: {carry, Y} = A - B;   // Subtraction
        3'b010: Y = A & B;            // AND
        3'b011: Y = A | B;            // OR
        3'b100: Y = A ^ B;            // XOR
        3'b101: Y = ~A;               // NOT A
        3'b110: Y = A << 1;           // Left Shift
        3'b111: Y = A >> 1;           // Right Shift
        default: Y = 4'b0000;
    endcase
end

endmodule