#!/bin/bash

mkdir -p ~/.vim/colors
#copy vim configuration
cp ./.vimrc ~
#copy autoload
cp -r ./autoload ~/.vim 

#update submodules
git submodule init
git submodule update

#copy submodules to .vim
cp -r ./bundle ~/.vim
#copy color scheme
cp -r ./colors/solarized/vim-colors-solarized/colors/* ~/.vim/colors
sudo pip install jedi

(pip freeze | grep colorama==0.3.6) && sudo pip install --upgrade colorama

yum install -y ctags

echo "The following error is due to vim with py3. If ubuntu install  vim-nox-py"
echo "Could not load jedi python module: module 'jedi' has no attribute '__version__'"

