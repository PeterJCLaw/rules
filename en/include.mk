TARGETS += en/rulebook.pdf
CLEAN += $(addprefix en/*.,pdf aux dvi log)

en/rulebook.pdf: $(addprefix en/,rulebook.tex game-rules.tex regs.tex specs.tex kit-return.tex awards.tex) $(images_targets)
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex
