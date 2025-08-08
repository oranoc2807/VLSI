module tb_half_adder;

reg A, B;
wire Sum, Carry;

half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_half_adder);

    // Test cases
    $display("A B | Sum Carry");
    A = 0; B = 0; #10 $display("%b %b |  %b     %b", A, B, Sum, Carry);
    A = 0; B = 1; #10 $display("%b %b |  %b     %b", A, B, Sum, Carry);
    A = 1; B = 0; #10 $display("%b %b |  %b     %b", A, B, Sum, Carry);
    A = 1; B = 1; #10 $display("%b %b |  %b     %b", A, B, Sum, Carry);
    $finish;
end

endmodule
