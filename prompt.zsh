# enable hook method
autoload add-zsh-hook

# enable and configure vcs_info
autoload -Uz vcs_info
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable hg git cvs svn
zstyle ':vcs_info:*' formats '%s|%b|%a|%i|%R|%r|%S|%m'

# my prompt theme
function promptSetup () {
    setopt prompt_subst

    local LAST_ERROR=%(?..〈%B%F{1}%?%f%b〉)

    local VENV
    if [[ $VIRTUAL_ENV ]]; then
      VENV="(%F{3}`basename $VIRTUAL_ENV`%f) "
    fi

    #Version Control
    VCS_LINE=''
    if [[ $vcs_info_msg_0_ ]]; then
        VCS_LINE=$vcs_info_msg_0_
    fi

    local MAIN=" &~"$VCS_LINE

    local DATE='[%B%F{green}%D{%a %H:%M}%f%b]'

    local SIGN="%B◯%b "


    PS1="$LAST_ERROR$DATE$MAIN $SIGN$VENV"
}
add-zsh-hook precmd promptSetup

TMOUT=2
TRAPALRM() {
    zle reset-prompt
}

