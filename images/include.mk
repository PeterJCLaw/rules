images_targets := $(addprefix images/,arena.pdf \
		sidewall.pdf arena-markers.pdf \
		robot-marker.pdf badge-mounting.pdf)
TARGETS += $(images_targets)
CLEAN += $(images_targets)

%.pdf: %.svg
	inkscape -A $@ $?
