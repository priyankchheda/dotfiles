# Configuration-Files

Create soft link to repo configuration files
```
ln -s bash_profile ~/.bash_profile
ln -s tmux.conf ~/.tmux.conf
ln -s vimrc ~/.vimrc

source /etc/bash_completion.d/git
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -o ~/.git-prompt.sh
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
```
