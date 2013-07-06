#!/bin/sh

if [ ! -d completion ]; then
  mkdir completion
fi

curl https://raw.github.com/git/git/master/contrib/completion/git-completion.bash -o completion/git-completion.bash
curl https://raw.github.com/git/git/master/contrib/completion/git-completion.zsh -o completion/git-completion.zsh

ln -s completion/git-completion.zsh completion/_git
