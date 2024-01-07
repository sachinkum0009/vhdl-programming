GHDL=ghdl
FLAGS="-fsynopsys"

all:
	@$(GHDL) -a $(FLAGS) myFifo.vhd myFifoTb.vhd
	@$(GHDL) -e $(FLAGS) myFifoTb
	@$(GHDL) -r $(FLAGS) myFifoTb --wave=myFifoTb_wave.ghw --vcd=myFifoTb_wave.vcd --stop-time=10us