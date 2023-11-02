touch ~/alias.sh

nano ~/alias.sh
```
#!/bin/bash

# Common Aliases
alias k='kubectl'
alias ks='kubectl -n kube-system'
alias desc='kubectl describe'

# Resource Creation
alias create='kubectl create -f'
alias apply='kubectl apply -f'

# Resource Retrieval
alias nodes='kubectl get nodes'
alias pods='kubectl get pods'
alias allpods='kubectl get pods --all-namespaces'
alias services='kubectl get services'
alias deployments='kubectl get deployments'

# Resource Deletion
alias del='kubectl delete'
alias delpod='kubectl delete pod'
alias delsvc='kubectl delete service'
alias deldep='kubectl delete deployment'
alias delns='kubectl delete namespace'
```
chmod +x ~/alias.sh

**Note**
if you're using Bash (most common), add the following line to the end of your ~/.bashrc or ~/.bash_profile
```
source ~/alias.sh
```
If you're using Bash (most common), add the following line to the end of your ~/.zshrc
```
source ~/alias.sh
```
You can either restart your terminal or apply the changes immediately with:
```
source ~/alias.sh
```
