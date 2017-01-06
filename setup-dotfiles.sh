#!/bin/bash
#                    source file name   destination name
#                    ________|_______   _______|_______
# __________________|               |__|              |
#
# current path of script
original_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -s $original_path/dotfiles/bash_profile.sh   ~/.bash_profile
ln -s $original_path/dotfiles/bash_prompt.sh    ~/.bash_prompt
ln -s $original_path/dotfiles/functions.sh      ~/.functions
ln -s $original_path/dotfiles/aliases.sh        ~/.aliases
ln -s $original_path/dotfiles/exports.sh        ~/.exports
ln -s $original_path/dotfiles/path.sh           ~/.path
ln -s $original_path/dotfiles/inputrc.sh        ~/.inputrc
ln -s $original_path/dotfiles/extra.sh          ~/.extra

ln -s $original_path/dotfiles/gitconfig.sh      ~/.gitconfig
ln -s $original_path/dotfiles/gitattributes.sh  ~/.gitattributes
ln -s $original_path/dotfiles/gitignore.sh      ~/.gitignore
ln -s $original_path/dotfiles/gitcreds.sh       ~/.gitcreds

ln -s $original_path/dotfiles/vimrc.sh          ~/.vimrc
ls -s $original_path/dotfiles/editorconfig.sh   ~/.editorconfig

ln -s $original_path/dotfiles/shuttle.js        ~/.suttle.json
ln -s $original_path/dotfiles/mount-nfs.sh      ~/.mount-nfs
