#
# Author: Jake Zimmerman <jake@zimmerman.io>
#
# ===== Usage ================================================================
#
# make                  Prepare docs/ folder (all markdown & assets)
# make docs/index.html  Recompile just docs/index.html
#
# make watch            Start a local HTTP server and rebuild on changes
# PORT=4242 make watch  Like above, but use port 4242
#
# make clean            Delete all generated files
#
# ============================================================================

SOURCES := $(shell find decks -type f -name '*.md')
TEMP_DEST := $(patsubst decks/%.md,temp/%.md,$(SOURCES))
TEST :=

.PHONY: all
all: docs/.nojekyll $(TEMP_DEST) $(patsubst temp/%.md,docs/%.html,$(shell find temp -type f -name '*.md'))

.PHONY: clean
clean:
	rm -rf temp docs

.PHONY: watch
watch:
	./tools/serve.sh --watch

docs/.nojekyll: $(wildcard public/*) public/.nojekyll
	rm -vrf docs && mkdir -p temp && mkdir -p docs && cp -vr public/.nojekyll public/* docs

.PHONY: docs
docs: docs/.nojekyll

# Generalized rule: how to build a .html file from each .md
# Note: you will need pandoc 2 or greater for this to work
docs/%.html: temp/%.md template.html5 Makefile tools/build.sh
	tools/build.sh "$<" "$@"

temp/%.md: decks/%.md tools/split.sh
	tools/split.sh "$<" "$@"
