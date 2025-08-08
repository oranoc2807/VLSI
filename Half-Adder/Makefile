# Makefile for Half Adder Simulation
# Author: Oran
# Tools: Icarus Verilog, GTKWave

# Output binary
OUT = half_adder_tb

# Source files
SRC = half_adder.v half_adder_tb.v

# VCD output
VCD = wave.vcd

all: run

# Compile the design and testbench
$(OUT): $(SRC)
	@echo "Compiling..."
	iverilog -o $(OUT) $(SRC)

# Run the simulation and generate waveform
run: $(OUT)
	@echo "Running simulation..."
	vvp $(OUT)
	@echo "Launching GTKWave..."
	gtkwave $(VCD)

# Clean up build artifacts
clean:
	@echo "Cleaning up..."
	rm -f $(OUT) $(VCD)
