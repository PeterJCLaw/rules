TARGETS += fr/rulebook.pdf
CLEAN += $(addprefix fr/*.,pdf aux dvi log)

fr/rulebook.pdf: $(addprefix fr/,${FILES}) $(images_targets)
	TEXINPUTS=".:fr/:" pdflatex -output-directory fr fr/rulebook.tex
	TEXINPUTS=".:fr/:" pdflatex -output-directory fr fr/rulebook.tex
