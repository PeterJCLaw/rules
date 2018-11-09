all: rulebook.pdf

rulebook.pdf: rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex safety-regs.tex images/arena-markers.pdf images/arena.pdf images/robot-marker.pdf images/sidewall.pdf images/token-nets.pdf images/robot-flag.pdf
	pdflatex $<
	pdflatex $<

images/%.pdf: images/%.svg
	inkscape --export-pdf=$(CURDIR)/$@ $(CURDIR)/$<

clean:
	rm -rf *.aux *.pdf *.dvi *.log

.PHONY: all clean
