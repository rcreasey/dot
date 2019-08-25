DOTFILES ?= "${HOME}/.dot"
BREW := $(shell command -v brew 2> /dev/null)

.PHONY: all install
all: install

bootstrap:
ifndef BREW
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install | ruby
endif
	brew install stow
	bash scripts/macos.sh

install:
	stow --restow --ignore ".DS_Store" --target="${HOME}" --dir=$(DOTFILES) files
	brew bundle --file="${DOTFILES}/Brewfile"
	brew cleanup
	brew doctor
