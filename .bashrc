export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

export KUBECONFIG=/Users/laguten/.kube/config

DEFAULT_USER="$(whoami)"

alias ls="ls -lah"
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
