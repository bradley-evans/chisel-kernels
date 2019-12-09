fir-4tap: SHELL:=/bin/bash
fir-4tap:
	sbt "runMain _elaborate.ElaborateFir4Tap"
	@echo Elaborated Verilog is at FirFilter.v

vecmul: SHELL:=/bin/bash
vecmul:
	sbt "runMain _elaborate.ElaborateVecMul"
	@echo Elaborated Verilog is at VecMul.v

clean:
	rm *.v
	rm *.fir
	rm *.json

