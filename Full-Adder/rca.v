module ripple_carry_adder #(parameter N = 4) (
    input  wire [N-1:0] A,
    input  wire [N-1:0] B,
    input  wire         Cin,
    output wire [N-1:0] Sum,
    output wire         Cout
);
    wire [N:0] carry;
    assign carry[0] = Cin;

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : full_adder_block
            full_adder FA (
                .a    (A[i]),
                .b    (B[i]),
                .cin  (carry[i]),
                .sum  (Sum[i]),
                .cout (carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[N];
endmodule
