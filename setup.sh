#!/bin/bash

# eventually make this pull from a file with the base path included
BASE=".zprezto"

# - symlink conf files
# eventually make this ln -1 probably
for f in tmux vim do
    ln -s "$BASE/conf/$f" "~/.$f"
done

# - run vim plugin install script
#
vim +PluginInstall +qall
