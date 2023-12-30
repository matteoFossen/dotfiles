# Lf

## Prerequisiti

* golang
* trash-cli

## Installazione

```bash
sudo apt install trash-cli
sudo apt install golang
env CGO_ENABLED=0 go install -ldflags="-s -w" github.com/gokcehan/lf@latest
echo 'alias lf="$HOME/go/bin/lf"' >> ~/.bashrc
```

* Creare la cartella `~/.config/lf/`;
* Copiare il file `lfrc` in `~/.config/lf/lfrc`;
