GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) or.vhd or_tb.vhd
	@$(GHDL) -e $(FLAGS) or_tb
	@$(GHDL) -r $(FLAGS) or_tb --wave=or_tb_wave.ghw --vcd=or_tb_wave.vcd --stop-time=3us