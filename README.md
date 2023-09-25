# Configurazioni

## Applicazioni base

## JetBrains Mono Font

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
mkdir -p ~/local/share/fonts/NerdFonts
cd ~/local/share/fonts/NerdFonts
curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/JetBrainsMono.tar.xz | tar -xvf
```

Poi chiudere il terminale e riaprirlo: in `Preferenze` > `senza nome` selezionare il font `JetBrains Mono`.

## Git

```bash
sudo apt install curl git btop neofetch fzf
mkdir ~/GIT
```

> Ricordarsi di usare btop, digitare `Esc` e nelle opzioni selezionare il tema dracula.

## Tmux

Copia il contenuto del file `tmux.conf` in `~/.tmux.conf`.

```bash
sudo apt install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux
tmux source-file ~/.tmux.conf
```

Per finire `Ctrl+b I` installerà le estensioni di tpm in tmux.
Digitare `Ctrl+b r` per aggiornare le configurazioni correnti.

## Zsh

```bash
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
t clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s $(which zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

Una volta effettuato il reboot la shell di base sarà impostata su zsh.

## Vim

```bash
sudo apt install vim
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

Copia il contenuto del file `my_configs.vim` in `~/.vim_runtime/my_configs.vim`.

