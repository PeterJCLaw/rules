all: en/rulebook.pdf fr/rulebook.pdf

TARGETS :=
CLEAN :=
include images/include.mk
include */include.mk

clean:
	rm -rf *.aux *.pdf *.dvi *.log
	-rm -rf $(CLEAN)
