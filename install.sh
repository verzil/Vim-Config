#!/bin/bash

if ![ -d "~/.vim_runtime"]; then
    echo 'runtime directory does not exit, making directory now'
    mkdir ~/.vim_runtime
fi
cp . ~/.vim_runtime -R

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo 'finished copying vimrcs files'
echo 'now trying to install neccessary plugins'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim_runtime/Plugins/Vundle.vim

vim +PluginInstall + qall
