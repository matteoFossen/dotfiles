<!-- README -->

# LE MIE CONFIGURAZIONI

> **DISCLAIMER**
> Tutte le mie configurazioni considerano il clone di questo repository già effettuato.
> ```bash
> git clone https://github.com/matteoFossen/dotfiles.git
> ```


### Essenziali

```bash
sudo apt install git htop bmon openssl tldr net-tools build-essential dnsutils ffmpeg mpv mpd ncmpcpp screen vim feh sysstat lsof nmap
tldr -u
mkdir $HOME/GIT
```

### JetBrains Mono Font

```bash
curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh | bash -c
```

> Impostare il font `JetBrains Mono` in tutte le varie configurazioni per applicarlo.

### Sfondi

* Installare feh se si vuole impostare lo sfondo

```bash
git clone https://github.com/D3Ext/aesthetic-wallpapers.git /tmp/wallpapers
mkdir -p $HOME/.config/wallpaper
mv /tmp/wallpapers/images $HOME/.config/wallpaper
rm -rf /tmp/wallpapers
feh --bg-fill --randomize $HOME/.config/wallpaper/* &
```

### Tmux

Copia il contenuto del file `tmux.conf` in `$HOME/.config/tmux/tmux.conf`.

```bash
sudo apt install tmux
```

### ChatGPT

Seguire la giuda al link https://github.com/aandrew-me/tgpt  
Per dargli voce utilizzare https://github.com/rhasspy/piper  

> To do:  
> Aggiungere un programma che permette di ascoltare le istruzioni da dare a chatGPT  

### Zsh

```bash
sudo apt install zsh
echo "export ZSH_CUSTOM=$HOME/config/zsh/oh-my-zsh" >> $HOME/config/zsh/zshrc
chsh -s $(which zsh)
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh -c
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/config/zsh/oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/config/zsh/oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/config/zsh/oh-my-zsh/custom}/themes/powerlevel10k
```
