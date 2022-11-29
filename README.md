## BASH
#### System
* To overwrite bash config for Root user:  
  * `sudo cp bashrc-ROOT /root/.bashrc`  

#### User
* To overwrite bash config for current user:  
  * `cp bashrc-USER ~/.bashrc`  
  * `. ~/.bashrc`  
* To add GIT prompt:  
  * `curl -o ~/.bashgit https://raw.githubusercontent.com/oyvindstegard/bashgit/master/.bashgit`  

## VIM
#### System
* To add vimrc config system-wide:  
  * `sudo cp vimrc-GLOBAL /etc/vim/vimrc`  

#### User
* To add vimrc only for current user:  
  * `sudo apt install -y fonts-powerline vim-airline`  
  * `sudo fc-cache -rv`  
  * `Imposta il nuovo font in gnome-terminal > Preferenze > Profilo > Carattere`  
  * `Installa FZF (sudo apt install fzf)`  
  * `Installa RipGrep ()`  
  * `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`  
  * `cp vimrc-USER ~/.vimrc`  
  * `Apri vim e poi scrivi :PlugUpdate`

## SCREEN
* `sudo cp screenrc /etc/`  

## GIT
* `cp gitconfig ~/.gitconfig`  
* Modificare il file `~/.gitconfig` e cambiare `email` e `name` !!

## K9s
* `k9s info`  
* `sed -i 's/enableMouse: false/enableMouse: true/g' ~/.config/k9s/config.yml`  
* `sed -i 's/logoless: false/logoless: true'/g ~/.config/k9s/config.yml`  
* `sed -i 's/tail: 100/tail: 200/g ~/.config/k9s/config.yml'`
* `sed -i 's/buffer: 500/buffer: 5000/g ~/.config/k9s/config.yml'`
