if [ ! -d ~/.vim ]; then
  mkdir ~/.vim
fi
#copy vim configuration
cp ./vimrc ~/.vimrc
#copy autoload
cp -r ./autoload ~/.vim 

#copy submodules to .vim
cp -r ./bundle ~/.vim

