GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) and.vhd and_tb.vhd
	@$(GHDL) -e $(FLAGS) two_input_gate_tb
	@$(GHDL) -r $(FLAGS) two_input_gate_tb --wave=and_gate_wave.ghw --stop-time=3us