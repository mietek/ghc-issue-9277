all: run repl

PKG_DESCRIPTION = ghci-fail-one.cabal
CONFIGURE = dist/setup-config

.PHONY: configure build run repl clean

$(CONFIGURE):
	cabal configure

configure: $(CONFIGURE)

build: $(CONFIGURE)
	cabal build

run: $(CONFIGURE)
	cabal run

repl: $(CONFIGURE)
	cabal repl -- -v

clean:
	rm -rf dist
