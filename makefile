all: en/rulebook.pdf fr/rulebook.pdf

TARGETS :=
CLEAN :=
FILES := rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex
include images/include.mk
include */include.mk

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
