all: rulebook.pdf

TARGETS :=
CLEAN :=
FILES := rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex safety-regs.tex

rulebook.pdf: rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex safety-regs.tex images/arena-markers.pdf images/arena.pdf images/badge-mounting.pdf images/robot-marker.pdf images/sidewall.pdf images/token-nets.pdf
	pdflatex $<
	pdflatex $<

images/%.pdf: images/%.svg
	inkscape -A $@ $?

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
