# dotfiles
Configuration files (using `chezmoi`) for my working environment.

Contains:

* Various shell configuration files.
* `Brewfile` with a list of the necessary packages for `Homebrew`.

# Setup

## Change shell to `zsh`

```[shell]
chsh zsh
```

## Install `Homebrew` on MacOS

```[shell]
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install chezmoi

```[shell]
brew install chezmoi
chezmoi init git@github.com:franzscholz/dotfiles.git
chezmoi diff
chezmoi apply -v
source $HOME/.zshrc
```

## Install packages

```[shell]
brew bundle install --global
```

# Common Setup Notes

Setup should be as follows:

* Use `zsh` on MacOS and Linux/Unix.
* Use `oh-my-posh` in the shells.
* Use `Fira Code` with ligatures for all terminals and editors.
* Use `FiraCode Nerd Font` in shells and Visual Studio Code for the `oh-my-posh` integration.
* Use `IBM Plex` font family for writing.
* Install common software with `Homebrew` on MacOS (see `Brewfile`).
* Install Latex + templates from GIT for writing. This is in another repo.

