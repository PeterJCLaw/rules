images_targets := $(addprefix images/,flag-2011.pdf quadrants.pdf \
		sidewall.pdf arena-markers.pdf bucket-3d.pdf barrier-feet.pdf \
		robot-marker.pdf badge-mounting.pdf )
TARGETS += $(images_targets)
CLEAN += $(images_targets)

%.pdf: %.svg
	inkscape -A $@ $?
