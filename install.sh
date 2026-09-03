#!/bin/bash

# Check if git-aliases.config is present in the current directory
if [ -f "./git-aliases.config" ]; then
    HAS_LOCAL_CONFIG=true
else
    HAS_LOCAL_CONFIG=false
fi

echo "How would you like to install the git aliases?"

if [ "$HAS_LOCAL_CONFIG" = true ]; then
    echo "1) [Recommended] Use 'include' method (updates automatically when you git pull this repository)"
    echo "2) Inject aliases directly into your global ~/.gitconfig"
else
    echo "It looks like you are running this script directly without cloning the repository."
    echo "1) Inject aliases directly into your global ~/.gitconfig"
    echo "2) Abort"
fi

read -p "Select an option: " OPTION

if [ "$HAS_LOCAL_CONFIG" = true ] && [ "$OPTION" == "1" ]; then
    CONFIG_PATH="$(pwd)/git-aliases.config"
    git config --global include.path "$CONFIG_PATH"
    echo "✅ Aliases installed successfully via include!"
    echo "They will stay up-to-date whenever you pull changes to this repository."
    
elif [ \( "$HAS_LOCAL_CONFIG" = true -a "$OPTION" == "2" \) -o \( "$HAS_LOCAL_CONFIG" = false -a "$OPTION" == "1" \) ]; then
    echo "Installing git aliases globally..."

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
    git config --global alias.hr 'reset --hard "@{u}"'

    echo "✅ Git aliases injected successfully!"
else
    echo "❌ Operation aborted or invalid option."
    exit 1
fi
