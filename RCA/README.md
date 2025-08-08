# 4-Bit Ripple Carry Adder (RCA)
A Verilog implementation of a 4-bit ripple carry adder, demonstrating fundamental combinational logic using full adders.

## What is a ripple-carry adder

The ripple carry adder is a combinational circuit that produces the arithemtic sum of two binary numbers. It's constrcuted using four full adders combined with the output of the previous adder being the input of the next adder.The term "ripple" refers to the way the carry-out from one full adder must propagate through each subsequent stage. This sequential dependency introduces a cumulative delay, which becomes more significant as the number of bits increases.

![Ripple Carry Adder](https://imgur.com/23VncVh.png)

## Propagation delay and how to solve

Ripple carry adders suffer from cumulative delay because each full adder must wait for the previous carry to compute. This means the total delay of the circuit is proportional to the number of bits: for an n-bit adder, the worst-case delay occurs when a carry propagates through all n stages. This is known as linear propagation delay. This becomes a bottleneck in wider adders (8-bit, 16-bit, etc.). One common solution is the Carry Lookahead Adder (CLA), which reduces delay by computing carry signals in parallel using logic equations.

## Waveform

![Waveform](https://imgur.com/PO0TyhC.png)

The waveform shows the RCA in action, in the first example A = 1 and B = 2 adding the two together produces an output (sum) of 3. This confirms the behaviour of the ripple carry adder is correct.

The carry wire carries the overflow from one bit's addition into the next higher bit's adder. It ensures that addition is accurate across all bits by chaining the full adders together. In the example shown here 

![Carry-In Table](https://imgur.com/1lAczWZ.png)

## Requirements
- Icarus Verilog
- GTKWave

## Run it:
```bash
make




