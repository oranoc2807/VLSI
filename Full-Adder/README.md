# Full Adder

A full adder is a combinational logic circuit used to perform binary addition of three input bits. It takes two significant bits (often denoted A and B) and an incoming carry bit (C_in) from a lower-order addition, and produces a one-bit Sum output and a one-bit Carry-out (C_out). In other words it adds two bits  along with a carry from a previous stage yielding a sum bit and a carry bit. This capability to include a carry-in distinguishes the full adder from the simpler half adder and allows full adders to be cascaded for multi-bit binary addition.

![Full Adder](https://imgur.com/QCl8FtT.png)

## Truth Table

Logical behavior of a full adder can be described in terms of binary addition. For inputs A, B, and C_in, the full adder produces a sum bit S and a carry-out C_out. The sum output is essentially the least significant bit of the arithmetic sum (A + B + C_in), and the carry-out represents an overflow into the next higher bit. The truth table below enumerates all possible input combinations and the resulting outputs:

![Truth Table](https://imgur.com/YqcQHGF.png)

## Boolean Logic

The full adder’s logic can be understood through its boolean expressions and gate-level implementation. From the truth table, one can derive simplified boolean formulas for the outputs. The Sum output is the XOR of all three inputs:

S = A'B'Cin + A'BCin' + AB'C-IN' + ABCin
S = Cin(A ⊕ B)' + Cin'(A ⊕ B)
S = A ⊕ B ⊕ Cin

## Waveform

The waveform shows the relationship between the inputs (a, b, cin) and the outputs (sum, cout) of the full adder over time. Each change in input values is reflected in the output according to the full adder's truth table. sum represents the least significant bit of the addition result, while cout represents the carry to the next stage. The waveform verifies that the simulated outputs match the expected logical behavior.

![Waveform](https://imgur.com/9zWzJ1Z.png)

## Use of Full Adders in ALUs and CPUs

Full adders play a central role in arithmetic logic units (ALUs), the part of a CPU or microprocessor that handles arithmetic and bitwise operations. In many processors, the ALU’s addition and subtraction functionality is implemented by a multi-bit adder constructed from full adders. For example, to add two machine words (say 32-bit registers), the ALU uses a 32-bit adder made of 32 full adder stages (often enhanced by faster carry logic). The same hardware can typically perform subtraction by inverting one operand and setting the initial carry-in (a technique for two’s complement subtraction), effectively using the adder for both addition and subtraction.

Beyond CPUs, digital signal processors (DSPs) and other specialized processors also rely heavily on full adders. DSP algorithms often involve repetitive additions (summing samples, computing dot-products, etc.), so DSP hardware may include multiple adders or even dedicated adder trees. These are again composed of full adder units (sometimes optimized at the transistor level for speed or low power). The ubiquitous nature of full adders in computing hardware is such that any operation involving integer arithmetic will, at its core, utilize full adder circuits.
