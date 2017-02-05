TEMPFILE := $(shell mktemp)
STYLE = "_site/css/pygments_base16flatdark.css"

all:
	sass --sourcemap=none -t compressed _templates/bulma.sass css/bulma.css
	blogofile build
	# Cheap comment removal (="minification") saves ~30% size
	sed -e "s#/\*.*##" < $(STYLE) > $(TEMPFILE)
	mv $(TEMPFILE) $(STYLE)
