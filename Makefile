.PHONY: dev clean help setup

## Run Hugo server (clean it first)
dev: clean
	hugo serve -s app/ -p 1313

## Setup
setup:
	git submodule update --init --recursive

## Remove generated static files
clean:
	rm -fr app/public
	rm -fr app/resources

img:
	bash image-processing.sh

## Show available commands
help:
	@echo "Available make commands:"
	@echo "  make clean   - Remove generated files (app/public, app/resources)"
	@echo "  make dev     - Clean and start Hugo server on http://localhost:1313"
	@echo "  make help    - Show this help message"
