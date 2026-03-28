#!/usr/bin/env bash
set -x
set -e
brew update
brew upgrade
brew bundle --global
brew bundle cleanup --global --force

