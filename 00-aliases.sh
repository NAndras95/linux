# useful
alias edithosts='sudo nano /etc/hosts'
alias ll='ls -latr'

# docker related
alias dokcer='docker'
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
alias gaa='git add --all'
alias gcm='git commit -m'
alias gph='git push'
alias gr='git reset --soft HEAD~1'
