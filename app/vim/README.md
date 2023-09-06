# Vim

## Prerequisiti

* vim
* git

## Installazione

* Installare il plugin manager `Plug`:
    ```sh
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    ```

* (solo per tmux) Impostare i colori a 256:
    ```sh
    curl -s https://raw.githubusercontent.com/JohnMorales/dotfiles/master/colors/24-bit-color.sh | bash
    ```

* Copiare il file `vimrc` in `~/.vimrc`;

* Digitare `vim` per entrare nell'editor e digitare `:PlugInstall`;

* Chiudere `vim` con `:q` e riaprirlo.
