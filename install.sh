#!/usr/bin/env bash

shopt -s extglob

# Plugins to install
plugins=(
  morhetz/gruvbox
  vim-airline/vim-airline
  santiagovrancovich/nerdtree
  sheerun/vim-polyglot
  jiangmiao/auto-pairs
  ervandew/supertab
  xolox/vim-easytags
  xolox/vim-misc
  MarcWeber/vim-addon-mw-utils
  tomtom/tlib_vim
  garbas/vim-snipmate
  honza/vim-snippets
)

# Remove any old plugins
rm -rf $HOME/.vim/pack
mkdir -p $HOME/.vim/pack/bundle/start

# Move .vimrc config file to home directory
cp -i .vimrc ~/.vimrc

installplugin() {
  # This removes the GitHub username and two common Vim plugin name
  # prefix/sufixes
  local plugin="$(echo "$1" | sed -e 's/.*[\/]//' -e 's/^vim-//' -e 's/\.vim//')"
  local pluginpath="$HOME/.vim/pack/bundle/start/$plugin"

  # Clone without the plugin's history (--depth=1) to make download faster
  git clone --depth=1 -q https://github.com/$1.git "$pluginpath"

  # Remove git-related files to prevent nested git repositories
  rm -rf "$pluginpath"/.git*

  # Remove any non-essential files that are not needed for the plugin to run
  rm -rf "$pluginpath"/README*
  rm -f "$pluginpath"/*.@(md|mdown|mkdown|markdown)
  rm -rf "$pluginpath"/test

  # Print a line announcing installation of the plugin on top of any previous announcements.
  echo "Installed $plugin"
}

# The & is so that bash sets the installation as a background job, allowing for
# asynchronous installation (all plugins being installed at the same time).
for repo in ${plugins[@]}; do
  installplugin "$repo" &
done

# This makes the script wait for all the background jobs from installing all the
# plugins above before continuing
wait
