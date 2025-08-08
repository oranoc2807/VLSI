# Makefile for Carry Lookahead Adder Testbench
# Author: Oran
# Tools: Icarus Verilog, GTKWave

OUT = cla_tb
SRC = cla.v cla_tb.v
VCD = cla.vcd

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