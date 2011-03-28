TARGETS += fr/rulebook.pdf
CLEAN += $(addprefix fr/*.,pdf aux dvi log)

fr/rulebook.pdf: $(addprefix fr/,rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex) $(images_targets)
	TEXINPUTS=".:fr/:" pdflatex -output-directory fr fr/rulebook.tex
