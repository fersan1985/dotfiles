# HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"
# STARSHIP
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# GO
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/homebrew/bin

# AWS VARS
export AWS_CONFIG_FILE=~/.config/aws/config
export AWS_SHARED_CREDENTIALS_FILE=~/.config/aws/credentials

# ALIAS

# COMMANDS ALIAS

alias ll="ls -l"
alias cl="clear"
alias k='kubectl'

# LOCATION ALIAS

alias repos-xlabs='cd ~/Documents/repos/xlabs'

# EKS ALIAS
alias fer-sandbox='aws eks update-kubeconfig --name sbx-fer --region eu-west-1 --kubeconfig $HOME/.kube/xlabs/sbx-fer --profile xlabs-sandbox && export KUBECONFIG=$HOME/.kube/xlabs/sbx-fer'
alias eks-prod='aws eks update-kubeconfig --name xl-eks-cluster-prod --region us-east-2 --kubeconfig $HOME/.kube/xlabs/xl-eks-prod --profile xlabs-production && export KUBECONFIG=$HOME/.kube/xlabs/xl-eks-prod'
alias eks-dev='aws eks update-kubeconfig --name xl-eks-dev --region us-east-2 --kubeconfig $HOME/.kube/xlabs/xl-eks-dev --profile xlabs-development && export KUBECONFIG=$HOME/.kube/xlabs/xl-eks-dev'
alias eks-new-prod='aws eks update-kubeconfig --name xlabs-prod --region eu-west-1 --kubeconfig $HOME/.kube/xlabs/xl-new-prod --profile xlabs-new-prod && export KUBECONFIG=$HOME/.kube/xlabs/xl-new-prod'
alias eks-operations='aws eks update-kubeconfig --name xl-eks-cluster-ops --region us-east-2 --kubeconfig $HOME/.kube/xlabs/xl-ops --profile xlabs-operations && export KUBECONFIG=$HOME/.kube/xlabs/xl-ops'

# $PATH Append
path+=('/Users/fer/bin')

# FUNCTIONS

aws-sso() {
  if [ -z "$1" ]; then
    echo "Por favor, proporciona el nombre del perfil."
    return 1
  fi
  aws sso login --profile "$1"
}
source ~/.config/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
