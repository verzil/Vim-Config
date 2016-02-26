#!/bin/bash

if ![ -d "~/.vim_runtime"]; then
    echo 'runtime directory does not exit, making directory now'
    mkdir ~/.vim_runtime
fi
if ![ -d "~/.vim_runtime/Plugins" ]; then
    echo 'making plugin directory'
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
echo 'installing vundle.....'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim_runtime/Plugins/Vundle.vim

echo 'vundle finished install'

while true; do
    read -p 'Do you wish to continue and install all plugins, (it may take a while) y/n     ' yn
    case $yn in
        [Yy]*) vim +PluginInstall + qall; break;;
        [Nn]*) echo 'installation completed, please install plugin inside vim with :PluginInstall'; break;;
    esac
done
echo 'goodbye'


