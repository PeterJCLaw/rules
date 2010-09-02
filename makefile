rulebook.pdf: rulebook.tex game-rules.tex regs.tex specs.tex images/*
	texi2pdf rulebook.tex
	texi2pdf rulebook.tex

clean:
	rm -rf *.aux *.pdf *.dvi *.log