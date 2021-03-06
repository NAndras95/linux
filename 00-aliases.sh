# useful
alias h='history'
alias ll='ls -latr'
alias mkdir='mkdir -pv'
alias untar='tar -zxvf'
alias eh='sudo nano /etc/hosts'
alias pua='curl ipinfo.io/ip'
alias pra='ipconfig getifaddr en0'
alias ns='speedtest-cli --single'
alias myaliases='cat $HOME/.bash_profile | grep alias'

# docker related
alias dokcer='docker'
alias dockerclean='docker system prune -f && docker image prune -a --filter "until=168h" -f'
alias dfimage="docker run -v /var/run/docker.sock:/var/run/docker.sock --rm alpine/dfimage"

# kubernetes related
alias k='kubectl'
alias ks='kubens'
alias wk='watch kubectl'
alias kx='kubectx'
alias kgpo='kubectl get pod'

# microk8s related
alias kube='microk8s.kubectl'

# git related
alias gf='git fetch'
alias gpl='git pull'
alias ga='git add'
alias gaa='git add --all'
alias gcm='git commit -m'
alias gph='git push'
alias gr='git reset --soft HEAD~1'

# functions
mpa(){ # tested on MacOS
  for dir in $1; do printf \
  "%-9s: %5d files in %5d folders, " \
  "$dir" \
  $(find $dir -type f | wc -l) \
  $(find $dir -type d | wc -l); \
  du -sh $dir | cut -f1; done
}
