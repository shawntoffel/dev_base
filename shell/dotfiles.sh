#!/usr/bin/env bash
DOTFILE_DIR="$HOME/.dotfiles"
DOTFILE_REPO="https://github.com/shawntoffel/dotfiles.git"
BRANCH="master"
CONFIG=".install.i3.config.yaml"

if [ ! -d "$DOTFILE_DIR" ]; then
	git clone --recursive -b $BRANCH $DOTFILE_REPO $DOTFILE_DIR
fi

cd $DOTFILE_DIR && ./install $CONFIG
