# add check for vim version and update vim if needed
# for linux-gnu
if [["$OSTYPE" == "linux-gnu"]]; then
    sudo add-apt-repository ppa:jonathonf/vim;
    sudo apt update;
    sudo apt install vim;
elif [["$OSTYPE" == "darwin"*]]; then
    brew update; brew install vim; 
fi

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# download node
curl -sL install-node.now.sh/lts | bash

# add bash-language-server
npm i -g bash-language-server

# copy vimrc 
cp ./vimrc ~/.vimrc

# copy coc-settings
cp ./coc-settings.json ~/.vim/coc-settings.json



