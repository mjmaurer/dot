#! /bin/sh

ln -s -f ~/dot/.vimrc ~/.vimrc
ln -s -f ~/dot/.bashrc ~/.bashrc
ln -s -f ~/dot/.bash_logout ~/.bash_logout
ln -s -f ~/dot/.bash_profile ~/.bash_profile
ln -s -f ~/dot/.tmux.conf ~/.tmux.conf
ln -s -f ~/dot/.profile ~/.profile
ln -s -f ~/dot/intellij/.ideavimrc ~/.ideavimrc
ln -s -f ~/dot/win/.bash_history ~/.bash_history
ln -s -f ~/dot/.virtualenvs ~/.virtualenvs
mkdir .vim
mkdir .config
mkdir .config/nvim
ln -s -f ~/dot/.vimrc ~/.config/nvim/init.vim
ln -s -f ~/dot/ftplugin ~/.vim/ftplugin
ln -s -f ~/dot/ftplugin ~/.config/nvim/ftplugin
ln -s -f ~/dot/coc-settings.json ~/.config/nvim/coc-settings.json
ln -s -f ~/package.json ~/dot/package.json
