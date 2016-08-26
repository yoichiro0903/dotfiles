 #!/bin/bash

  DOT_FILES=(.zshrc .vimrc .vim .bashrc .gitconfig)

 for file in ${DOT_FILES[@]}
 do
     ln -s $HOME/dotfiles/$file $HOME/$file
 done
