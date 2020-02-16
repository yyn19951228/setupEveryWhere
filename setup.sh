# add check for vim version and update vim if needed
# for linux-gnu
# sudo add-apt-repository ppa:jonathonf/vim
# sudo apt update
# sudo apt install vim

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download node
curl -sL install-node.now.sh/lts | bash

# add bash-language-server
npm i -g bash-language-server

# copy vimrc 
cp ./vimrc ~/.vimrc



