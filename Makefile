fir-16tap:
	sbt "runMain _elaborate.ElaborateFir16Tap"
	@echo Elaborated verilog is at FirFilter.v

fir-8tap:
	sbt "runMain _elaborate.ElaborateFir8Tap"
	@echo Elaborated verilog is at FirFilter.v

cic3:
	sbt "runMain _elaborate.ElaborateCicFilter"
	@echo Elaborated Verilog is at cic3.v

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

