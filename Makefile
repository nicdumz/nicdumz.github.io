all:
	sass --sourcemap=none -t compressed _templates/bulma.sass css/bulma.css
	blogofile build
