all: rulebook-en.pdf rulebook-fr.pdf

TARGETS :=
CLEAN :=
include */include.mk

rulebook-en.pdf: en/rulebook.tex en/game-rules.tex en/regs.tex en/specs.tex en/kit-return.tex en/awards.tex $(TARGETS)
	env TEXINPUTS=".:./en:" pdflatex -output-directory en/ en/rulebook.tex 
	env TEXINPUTS=".:./en:" pdflatex -output-directory en/ en/rulebook.tex

rulebook-fr.pdf: fr/rulebook.tex fr/game-rules.tex fr/regs.tex fr/specs.tex fr/kit-return.tex fr/awards.tex $(TARGETS)
	env TEXINPUTS=".:./fr:" pdflatex -output-directory fr/ fr/rulebook.tex 
	env TEXINPUTS=".:./fr:" pdflatex -output-directory fr/ fr/rulebook.tex
clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
