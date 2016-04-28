if [[ -e "~/.vim"]]; then
  mkdir ~/.vim
fi
#copy vim configuration
cp ./vimrc ~/vimrc
#copy autoload
cp -r ./autoload ~/.vim 
#get submodules
git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

#copy submodules to .vim
cp -r ./bundle ~/.vim

