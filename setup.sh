#!/bin/sh

mkdir -p ~/.vim/colors && cd ~/.vim/colors
wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400

mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/.vim/bundle
if [ ! -e vim-powerline ];then
    git clone git://github.com/Lokaltog/vim-powerline.git
fi
if [ ! -e ctrlp.vim ];then
    git clone https://github.com/kien/ctrlp.vim.git
fi

#sudo pip install jedi
if [ ! -e jedi.vim ];then
    git clone git://github.com/davidhalter/jedi-vim.git
fi
if [ ! -e syntastic ];then
    git clone https://github.com/scrooloose/syntastic.git
fi
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492

