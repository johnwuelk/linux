#add following to the end of /etc/bash.bashrc:

alias grep='grep --colour=auto'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias ls='ls -F'
alias ll='ls -lah'
alias up='upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state && upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep percentage'
alias h='history | grep -i'
alias pws='bash $HOME/MEGAsync/Software/Linux/pws_request_gpg.sh'
alias skat='xskat -font 6x13 -bg black -fg grey -lang German -2d -keyboard 2'
export EDITOR=vim
export VISUAL=vim
#for omegaT / font alialising:
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=gasp'
alias trans='padsp trans'
alias tmx='bash ~/MEGAsync/Software/Translation/tmxConverter.sh'
alias srt='bash ~/MEGAsync/Software/Translation/Transcription_scripts/trs_to_srt_CONVERTER.sh'
alias s='~/MEGAsync/Software/Linux/search.sh'
alias t='~/MEGAsync/Software/Linux/timer.sh'
#to ensure that neomutt saves email attachments in DOWNL. dir:
alias mutt='cd /tmp/;/usr/bin/neomutt;cd -'

#FOR NNN
export NNN_PLUG='o:fzopen;c:fzcd;j:autojump;p:preview-tui;t:preview-tabbed;i:imgview;v:vidthumb;d:dragdrop;S:suedit;f:finder;D:xdgdefault'
export NNN_FCOLORS='0000E6310000000000000000'
export NNN_LOCKER='cmatrix'
alias n='nnn -e -s default -x -t 180'
alias ls='nnn -e -s default -x -t 180'
export NNN_BMS="d:$HOME/Downloads;D:$HOME/Documents/;t:/tmp;s:$HOME/MEGAsync/Software;p:$HOME/Pictures;v:$HOME/Videos;m:$HOME/Music;u:$HOME/MEGAsync/UebersetzungenSAFE;r:$HOME/MEGAsync/RechnungenSAFE;"
#get a list of files i have selected (from arch wiki):
alias ncp="cat ${NNN_SEL:-${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection} | tr '\0' '\n'"
export NNN_FIFO=/tmp/nnn.fifo
export NNN_TRASH=1

