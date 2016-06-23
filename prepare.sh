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

#copy submodules to .vim
cp -r ./bundle ~/.vim
