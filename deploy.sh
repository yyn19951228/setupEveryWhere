#!/bin/sh
for i in "$@"
do
    case $i in 
	-h|-help)
	    echo "HELP for setup"
	    echo "-neovim or -N: install neovim, vim-plug for neovim, and move config to ~/.config/nvim/init.vim, and add to bash_profile"
	    echo "-vim or -V: install vim-plug for vim, and move config to ~/.vimrc"
	    echo "-updateVim or -UV: update vim according to platform, exclude to -vim"
	    echo "-node or -NO: download latest veresion of node, and set bash_profile"
	    echo "-tmux or -T: install tmux and copy tmux.conf to ~/.tmux.conf"
	    echo "-coc or -C: copy coc-settings to ~/.vim/coc-settings.json"
	    ;;
	-N|-neovim)
	    # install neovim
	    if [["$OSTYPE" == "linux-gnu"]]; then
		pushd .
		mkdir -p ~/.eronDeployment
		cd ~/.eronDeployment
		curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
		tar xzf nvim-macos.tar.gz
		echo 'export PATH=~/.eronDeployment:$PATH' >>~/.bash_profile
		source ~/.bash_profile
		popd
	    elif [["$OSTYPE" == "darwin"*]]; then
		brew update; brew install neovim;
	    fi
	    # download vim-plug 
	    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    # move vimrc 
	    mkdir -p ~/.config/nvim
	    cp ./vimrc ~/.config/nvim/init.vim
	    ;;
	-V|-vim)
	    # install new vim
	    if [["$OSTYPE" == "linux-gnu"]]; then
		sudo add-apt-repository ppa:jonathonf/vim;
		sudo apt update;
		sudo apt install vim;
	    elif [["$OSTYPE" == "darwin"*]]; then
		brew update; brew install vim;
	    fi
	    # download vim-plug
	    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    # copy vimrc
	    cp ./vimrc ~/.vimrc
	    ;;
	-UV|-updateVim)
	    # download vim-plug
	    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    # copy vimrc
	    cp ./vimrc ~/.vimrc
	    ;;
	-NO|-n)
	    pushd .
	    mkdir -p ~/.eronDeployment
	    cd ~/.eronDeployment
	    wget https://nodejs.org/dist/v12.16.1/node-v12.16.1-linux-x64.tar.xz
	    tar xz
	    pushd
	    echo 'export PATH=~/.eronDeployment/node-v12.16.0-linux-x64/bin:$PATH' >>~/.bash_profile
	    source ~/.bash_profile
	    ;;
	-T|-tmux)
	    cp ./tmux.conf ~/.tmux.conf
	    ;;
	-C|-coc)
	    mkdir -p ~/.vim/
	    cp coc-settings.json ~/.vim/coc-settings.json
	    ;;
    esac
done

