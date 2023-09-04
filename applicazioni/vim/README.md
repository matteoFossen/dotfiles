# Installazione di vim

1. Installare i pacchetti vim, fzf, nodejs, python, yarn, go, php
2. Lanciare il seguente comando per installare il Plug manager
    '''sh
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim    
    '''
3. Entrare su 'vim' e digitare ':PlugInstall', poi ':CocInstall coc-phpls coc-json coc-html coc-css coc-tsserver'