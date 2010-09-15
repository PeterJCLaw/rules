all: rulebook.pdf

TARGETS :=
CLEAN :=
include */include.mk

rulebook.pdf: rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex $(TARGETS)
	pdflatex rulebook.tex
	pdflatex rulebook.tex

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
