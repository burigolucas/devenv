#!/bin/bash

mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-obsession.git
vim -u NONE -c "helptags vim-obsession/doc" -c q
