# copy vimrc
cp ~/.vimrc ./vim/vimrc
cp ~/.vim/coc-settings.json ./vim/vimrc
cp ~/.config/nvim/init.vim ./nvim/init.vim
cp ~/.tmux.conf ./tmux.conf
cp ~/.config/nvim/coc-settings.json ./nvim/coc-settings.json

# update git
git add *
git commit -m "auto prepare the config files"
git push
