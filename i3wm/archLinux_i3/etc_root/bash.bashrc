#
# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize

PS1='[\u@\h \W]\$ '

case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'

    ;;
  screen*)
    PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"'
    ;;
esac

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion

alias cp='cp -i'
alias df='df -h'
alias egrep='egrep --colour=auto'
alias fgrep='fgrep --colour=auto'
alias free='free -m'
alias grep='grep --colour=auto'
alias ls='ls --color=auto'
alias more='less'
alias np='nano -w PKGBUILD'
alias srt='bash ~/MEGAsync/Software/Translation/Transcription_scripts/trs_to_srt_CONVERTER.sh'
alias tmx='bash ~/MEGAsync/Software/Translation/tmxConverter.sh'
alias timer='bash ~/MEGAsync/Software/Linux/timer.sh'
alias trans='padsp trans'
alias i3c='vim ~/.config/i3/config'
alias pc='vim ~/.config/polybar/config'
export LC_ALL="en_US.UTF-8"
