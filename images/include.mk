images_targets := $(addprefix images/,arena.pdf \
		net-1.pdf net-2.pdf net-3.pdf \
		sidewall.pdf arena-markers.pdf \
		robot-marker.pdf badge-mounting.pdf)
TARGETS += $(images_targets)
CLEAN += $(images_targets)

%.pdf: %.svg
	inkscape -A $@ $?
