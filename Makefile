# Makefile for creating distribution
# Type 'make dist' to build the production CSS output

jade := node_modules/.bin/jade
postcss := node_modules/.bin/postcss
ghpages := node_modules/.bin/gh-pages

DEST := dist/hack.css
THEMES := dist/dark-grey.css dist/dark.css dist/solarized-dark.css dist/standard.css
CSS_SRC := $(wildcard src/css/*.css)
DEMO_CSS := $(patsubst dist/%,demo/%,$(DEST) $(THEMES))
DEMO_HTML := $(patsubst src/html/%.jade,demo/%.html,$(wildcard src/html/*.jade))
DEMO_STATIC := $(patsubst src/static/%,demo/%,$(wildcard src/static/*))

.PHONY: clean prod deploy

demo: dist $(DEMO_STATIC) $(DEMO_HTML) $(DEMO_CSS)

dist: $(DEST) $(THEMES)

dist/hack.css: $(CSS_SRC)
	$(postcss) src/css/hack.css -o $@

$(THEMES): dist/%.css: src/css/themes/%.css
	$(postcss) $< -o $@

$(DEMO_CSS): demo/%.css: dist/%.css
	@mkdir -p demo
	ln $< $@

$(DEMO_HTML): demo/%.html: src/html/%.jade
	@mkdir -p demo
	$(jade) --pretty --path $< < $< > $@

$(DEMO_STATIC): demo/%: src/static/%
	@mkdir -p demo
	cp -r $< $@

clean:
	rm -rf dist demo

prod: export NODE_ENV = production
prod: clean dist

deploy: prod demo
	$(ghpages) -d demo -b gh-pages
