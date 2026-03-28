#!/usr/bin/env bash
set -x
set -e
brew update
brew upgrade
brew bundle install --global
brew bundle cleanup --global --force

