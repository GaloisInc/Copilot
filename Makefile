# Build all the relevant packages in order.

DIRS := copilot-core copilot-language copilot-libraries copilot-sbv copilot-c99 copilot-cbmc Copilot

# Can be overridden with cabal-dev
# use make all CABAL=cabal-dev
CABAL ?= cabal

.PHONY: all $(DIRS)

all: $(DIRS)

$(DIRS): 
	cd ../$@; \
	$(CABAL) install

