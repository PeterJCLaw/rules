all: en/rulebook.pdf en/rulebook.png

TARGETS :=
CLEAN :=
FILES := rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex safety-regs.tex
include images/include.mk
include */include.mk

clean:
	rm -rf *.aux *.pdf *.dvi *.log *.png
	-rm -rf $(CLEAN)
