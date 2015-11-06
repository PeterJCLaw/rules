TARGETS += en/rulebook.pdf
CLEAN += $(addprefix en/*.,pdf aux dvi log out fff ttt)

en/rulebook.pdf: $(addprefix en/,${FILES}) $(images_targets)
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex
	TEXINPUTS=".:en/:" pdflatex -output-directory en en/rulebook.tex

en/rulebook.png: en/rulebook.pdf
	pdftoppm -singlefile -png -scale-to 200 en/rulebook.pdf en/rulebook
