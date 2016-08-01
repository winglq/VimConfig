if [ ! -d ~/.vim ]; then
  mkdir ~/.vim
fi
#copy vim configuration
cp ./.vimrc ~
#copy autoload
cp -r ./autoload ~/.vim 

#update submodules
git submodule init
git submodule update

git clone https://github.com/tomasr/molokai.git
git clone https://github.com/altercation/solarized.git

#copy submodules to .vim
mkdir -p ~/.vim/colors
cp -r ./bundle ~/.vim
cp -r molokai/colors/* ~/.vim/colors
cp -r solarized/vim-colors-solarized/colors/* ~/.vim/colors
pip install jedi
