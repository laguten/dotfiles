export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export KUBECONFIG=/Users/laguten/.kube/config
DEFAULT_USER="$(whoami)"

alias ls="ls -lah"
alias lsrt='ls --human-readable --size -1 -S --classify'
alias lshid=’ls -d .* --color=auto’
alias left='ls -t -1'
alias count='find . -type f | wc -l'

alias update='sudo apt-get update && sudo apt-get upgrade'
alias gh='history|grep'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"

alias ports='netstat -tulanp'
alias iptl='sudo /sbin/iptables -L -n -v --line-numbers'
alias hdrc='curl -I --compress'

alias dockrun=’sudo docker run -i -t --privileged $@’
alias dockstop=’sudo docker stop $(docker ps -a -q) ‘
alias dockrm=’sudo docker rm $(docker ps -a -q)‘

alias k="kubectl"
alias kg="kubectl get"
alias kgy="kubectl get -o yaml"
alias kd="kubectl describe"
alias kl="kubectl logs"
alias kga="kubectl get --all-namespaces"
alias kctx="kubectx"
alias kns="kubens"
alias myip="curl ifconfig.co"
alias vi="nvim"
#alias gotop="gotop -p"

alias tf='terraform'
alias tfv='terraform validate'
alias tfi='terraform init'
alias tfp='terraform plan' 

# from https://opensource.com/article/19/5/python-3-default-mac
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
alias pip=/usr/local/bin/pip3

# the following format                                                                                   
# [{{WORKINGDIR}}] [{{GITBRANCH}}] [{{NAMESPACE}}@{{CLUSTER}}] $>                                        
# [~/projects/a] [master] [dev@myCluster] $>                                                      
parse_git_branch() {                                                                                     
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'                                     
}                                                                                                        
k8s_info() {                                                                                             
  kubectl config view --minify --output 'jsonpath={..namespace}@{.current-context}' 2> /dev/null         
}
## Customizations
PS1="\[\e[1;92m\][\w]\[\e[33m\]\$(parse_git_branch) \[\e[01;33m\][\$(k8s_info)]\[\e[34m\] $>\[\e[96m\] "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
