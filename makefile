all: rev.tex en/rulebook.pdf

TARGETS :=
CLEAN := rev.tex
FILES := rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex
include images/include.mk
include */include.mk

rev.tex: .git/HEAD
	git rev-parse --short HEAD > rev.tex

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
