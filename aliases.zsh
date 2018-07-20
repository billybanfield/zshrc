# @author     Sebastian Tramp <mail@sebastian.tramp.name>
# @license    http://opensource.org/licenses/gpl-license.php
#
# alias definitions which can be edited/modified with 'aedit'
#

# vi
if command -v nvim >/dev/null
then
  alias v=nvim
  alias vi=nvim
  alias vim=nvim
else
  alias v=vim
  alias vi=vim
fi


# git
alias g='git'
alias gch='git checkout'
alias gcb='git checkout -b'
alias gcam='git commit -am'
alias gpb='git push origin `git rev-parse --abbrev-ref HEAD`'

# cd
alias cd=' cd'
alias ..=' cd ..; ls'
alias ...=' cd ..; cd ..; ls'
alias ....=' cd ..; cd ..; cd ..; ls'
alias cd..='..'
alias cd...='...'
alias cd....='....'

# misc
alias grep='grep --color=auto'
alias l=' ls -l'
less=`command -v less`
alias less="$less -RFX"
alias lesss="$less -Rr"
alias p='ps aux | grep'


##### global aliases
# zsh buch s.82 (z.B. find / ... NE)
alias -g NE='2>|/dev/null'
alias -g NO='&>|/dev/null'
alias -g EO='>|/dev/null'

# http://rayninfo.co.uk/tips/zshtips.html
alias -g G='| grep '
alias -g P='2>&1 | $PAGER'
alias -g L='| less'
alias -g LA='2>&1 | less'
alias -g C='| wc -l'

# update
alias up="pacaur -Syu"
