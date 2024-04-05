# === linux ===
alias ls='ls --color=auto -h'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias dmesg='dmesg | ccze -A'
alias erase='shred -n 35 -z -u'
alias grep='grep --color'

# === x11 ===
alias pbcopy="xclip -selection c"
alias pbpaste="xclip -selection c -o"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# === git ===
alias git="LANG=en_US.UTF-8 git"

# === ffmpeg ===
alias record_webcam='ffplay -f v4l2 -vf "hflip,format=yuv420p" -video_size 480x320 -i /dev/video0'
alias record_screen0='ffplay -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0'
alias record_screen1='ffplay -video_size 1920x1080 -framerate 25 -f x11grab -i :0.0+1920,0'
alias record_screen_all='ffplay -framerate 25 -f x11grab -i :0.0'
