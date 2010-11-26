all: rulebook-en.pdf

TARGETS :=
CLEAN :=
include */include.mk

rulebook-en.pdf: en/rulebook.tex en/game-rules.tex en/regs.tex en/specs.tex en/kit-return.tex en/awards.tex $(TARGETS)
	env TEXINPUTS=".:./en:" pdflatex -output-directory en/ en/rulebook.tex 
	env TEXINPUTS=".:./en:" pdflatex -output-directory en/ en/rulebook.tex

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
