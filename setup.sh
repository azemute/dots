#!/usr/bin/env zsh

#
BASE="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# - symlink conf files
# eventually make this ln -1 probably

setopt EXTENDED_GLOB
for rcfile in $BASE/runcoms/^README.md(.N); do
      ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

for conffile in $BASE/conf/^README.md(.N); do
    ln -s "$conffile" "${ZDOTDIR:-$HOME}/.${conffile:t}"
done

ln -s "$BASE/vim" "${ZDOTDIR:-$HOME}/.vim"

# - run vim plugin install script
#
vim +PluginInstall +qall
