module half_adder(
    input wire A,
    input wire B,
    output wire Sum,
    output wire Carry
);

assign Sum = A ^ B;     // XOR for sum
assign Carry = A & B;   // AND for carry

endmodule
