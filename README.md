# dotfiles
Configuration files (using [`chezmoi`](https://www.chezmoi.io)) for my working environment.

Contains:

* Various shell configuration files.
* `Brewfile` with a list of the necessary packages for `Homebrew`.

# Setup

## Change shell to `zsh`

```[shell]
chsh zsh
exec zsh
```

## Install `Homebrew` on MacOS

```[shell]
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Install chezmoi

Create a ssh key on the target system and add it to the Github ssh key list.
Or use https for accessing the git repository instead of ssh.

```[shell]
brew install chezmoi
chezmoi init git@github.com:franzscholz/dotfiles.git
chezmoi diff
chezmoi apply -v
exec zsh
```

## Install packages

```[shell]
brew bundle install --global
```

# Common Setup Notes

Setup should be as follows:

* Use `zsh` on MacOS and Linux/Unix.
* Use [`oh-my-posh`](https://ohmyposh.dev) in the shells.
* Use `Fira Code` with ligatures for all terminals and editors.
* Use `FiraCode Nerd Font` in shells and Visual Studio Code for the `oh-my-posh` integration.
* Use `IBM Plex` font family for writing.
* Install common software with `Homebrew` on MacOS (see `Brewfile`).
* Install Latex + templates from GIT for writing. This is in another repo.

