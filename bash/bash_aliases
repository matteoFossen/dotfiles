# === linux ===
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias erase='shred -n 35 -z -u'
alias grep='grep --color'

# === git ===
alias git="LANG=en_US.UTF-8 git"
if [[ -d ${HOME}/git ]]; then
  alias cdgit="cd ${HOME}/git"
fi

# === cargo ===
if type cargo &>/dev/null; then
  source "${HOME}/.cargo/env"
fi

# === codeium ===
if type codium &>/dev/null; then
  alias code='codium'
fi

# === docker ===
dr="docker run -it --rm"

# === docker: dive ===
alias dive="$dr -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"

# === ffmpeg ===
if type ffmpeg &>/dev/null; then
  alias record_webcam='ffplay -f v4l2 -vf "hflip,format=yuv420p" -video_size 480x320 -i /dev/video0'
  alias record_screen0='ffplay -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0'
  alias record_screen1='ffplay -f x11grab -video_size 1920x1080 -framerate 25 -i :0.0+1920,0'
  alias record_screen_all='ffplay -framerate 25 -f x11grab -i :0.0'
  alias screenshot_0='ffmpeg -f x11grab -video_size 1920x1080 -framerate 1 -i :0.0 -vframes 1'
  alias screenshot_1='ffmpeg -f x11grab -video_size 1920x1080 -framerate 1 -i :0.0+1920,0 -vframes 1'
  alias screenshot_all='ffmpeg -f x11grab -framerate 1 -i :0.0 -vframes 1'
fi

# === kubectl ===
if type kubectl &>/dev/null; then
  export KUBECONFIG="$HOME/.kube/config"

  source <(kubectl completion bash)
  alias k='kubectl'
  alias kg='kubectl get'
  alias kl='kubectl logs'
  alias ke='kubectl edit'
  alias kd='kubectl describe'
  alias kdd='kubectl delete'
  alias kgp='kubectl get pods'
  alias kgd='kubectl get deployments'
  alias wkgp='watch kubectl get pod'
  # alias k9s="docker run --rm -it -v $KUBECONFIG:/root/.kube/config quay.io/derailed/k9s"

  complete -F __start_kubectl k

  export K9S_EDITOR=vim
fi

# === kubectx & kubens ===
if type kubectx &>/dev/null; then
  export KUBECTX_CURRENT_BGCOLOR=$(tput setab 7) # white background
  export KUBECTX_CURRENT_FGCOLOR=$(tput setaf 6) # blue text
  export PATH=$HOME/.kubectx:$PATH

  alias kcx='kubectx'
  alias kns='kubens'
fi

# === openssl ===
if type openssl &>/dev/null; then
  p7m_get_cert() {
    openssl pkcs7 -inform DER -in "${1}" -print_certs | openssl x509 -text -noout
  }
  p7m_get_dates() {
    openssl pkcs7 -inform DER -in "${1}" -print_certs | openssl x509 -noout -dates
  }
  p7m_extract() {
    openssl smime -verify -noverify -in "${1}" -inform DER -out $(echo "${1}" |sed 's/.p7m\s*$//')
  }
  ssl_get_cert() {
    echo | openssl s_client -connect "${1}":"${2:-443}" 2>/dev/null | openssl x509 -text -noout
  }
  ssl_get_dates() {
    echo | openssl s_client -connect "${1}":"${2:-443}" 2>/dev/null | openssl x509 -noout -dates
  }
  ssl_verify() {
    echo | openssl s_client -connect "${1}":"${2:-443}" -brief
  }
fi

# === w3m ===
if type w3m &>/dev/null; then
  export WWW_HOME='lite.duckduckgo.com/lite'
fi
