
[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# AWESOME git-aliases [![Awesome](https://cdn.rawgit.com/sindresorhus/awesome/d7305f38d29fed78fa85652e3a63e154dd8e8829/media/badge.svg)](https://github.com/sindresorhus/awesome#readme)
> A git-aliases cheatsheet

## Usefull git aliases to improve your coding performance


``` shell
git config --global alias.st "status -s"
git config --global alias.ll "log --pretty=format:%C(yellow)%h\ %ad%Cred%d\ %Creset%s%Cblue\ [%cn] --decorate --numstat --date=short"
git config --global alias.ch "checkout"
git config --global alias.co "commit"
git config --global alias.br "branch"
git config --global alias.tree "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%n' --abbrev-commit --date=relative --branches"
git config --global alias.pr "pull --rebase"
git config --global alias.ps "push"
git config --global alias.sh "show"
git config --global alias.fe "fetch"
git config --global alias.di "diff"
git config --global alias.undo "reset --soft HEAD~1"
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

```
