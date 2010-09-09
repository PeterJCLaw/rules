rulebook.pdf: rulebook.tex game-rules.tex regs.tex specs.tex images/*
	pdflatex rulebook.tex
	pdflatex rulebook.tex

clean:
	rm -rf *.aux *.pdf *.dvi *.log
