# Makefile for Ripple Carry Adder Testbench
# Author: Oran
# Tools: Icarus Verilog, GTKWave

OUT = rca_tb
SRC = full_adder.v rca.v rca_tb.v
VCD = wave.vcd

all: run

$(OUT): $(SRC)
	@echo "Compiling..."
	iverilog -o $(OUT) $(SRC)

run: $(OUT)
	@echo "Running simulation..."
	vvp $(OUT)
	@echo "Launching GTKWave..."
	gtkwave $(VCD)

clean:
	@echo "Cleaning up..."
	rm -f $(OUT) $(VCD)
