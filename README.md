[![Ansible CI](https://github.com/franzscholz/dotfiles/actions/workflows/ansible.yml/badge.svg)](https://github.com/franzscholz/dotfiles/actions/workflows/ansible.yml)

# dotfiles
Configuration files (using [`chezmoi`](https://www.chezmoi.io)) for my working environment.

Contains:

* Various shell configuration files.
* `Brewfile` with a list of the necessary packages for `Homebrew`.

# Setup

## Change shell to `zsh`

```[shell]
chsh -s $(which zsh) 
exec zsh
```

## Setup oh-my-zsh

```[shell]
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
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

## Install packages on MacOS using Homebrew

```[shell]
brew bundle install --global
```

## Install oh-my-posh

```[shell]
curl -s https://ohmyposh.dev/install.sh | bash -s
exec zsh
```

## Install oh-my-posh fonts

```[shell]
oh-my-posh font install FiraMono
```

Configure the terminal to use `FiraCode Nerd Font Mono Regular`.

# Setup

On FreeBSD:

```[shell]
sudo pkg install py311-ansible chezmoi
chezmoi init git@github.com:franzscholz/dotfiles.git
chezmoi diff
chezmoi apply -v
ansible-playbook -K $(chezmoi source-path)/ansible/setup.yml
exec zsh
```

On Ubuntu:

```[shell]
export ANSIBLE_BECOME_EXE=sudo.ws
sudo apt install curl git ansible
sh -c "$(curl -fsLS https://get.chezmoi.io)"
$HOME/bin/chezmoi init git@github.com:franzscholz/dotfiles.git
$HOME/bin/chezmoi diff
$HOME/bin/chezmoi apply -v
ansible-playbook -K $($HOME/bin/chezmoi source-path)/ansible/setup.yml
exec zsh
```

# Continuous integration

This repository includes a GitHub Actions workflow in `.github/workflows/ansible.yml` that validates the Ansible playbooks with `ansible-lint`, syntax checks, and a dry-run of `ansible/install_packages.yml`.

# Common Setup Notes

Setup should be as follows:

* Use `zsh` on MacOS and Linux/Unix.
* Use [`oh-my-posh`](https://ohmyposh.dev) in the shells.
* Use `Fira Code` with ligatures for all terminals and editors.
* Use `FiraCode Nerd Font` in shells and Visual Studio Code for the `oh-my-posh` integration.
* Use `IBM Plex` font family for writing.
* Install common software with `Homebrew` on MacOS (see `Brewfile`).
* Install Latex + templates from GIT for writing. This is in another repo.

