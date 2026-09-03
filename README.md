[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

# Git Aliases 🚀

Git aliases are custom shortcuts that can save you time by mapping long or complex Git commands to short, easy-to-remember abbreviations.

This repository provides a collection of useful Git aliases for a faster and smoother daily workflow.

> Special thanks to Valmir for introducing me to these awesome aliases.

## Installation 🛠️

You can install these aliases in two ways: a fast one-liner (no clone required) or by cloning the repository (recommended to easily receive updates).

### Option 1: One-liner (No clone required)
If you just want to quickly inject the aliases into your global config without cloning the repository, run:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/brunoanhaia/git-aliases/master/install.sh)"
```

### Option 2: Clone the repository (Recommended)
By cloning the repository, you can use the `include` method. This allows your aliases to stay synced automatically whenever you run `git pull` on the repo.

```bash
# Clone the repository
git clone https://github.com/brunoanhaia/git-aliases.git
cd git-aliases

# Run the installation script
bash install.sh
```

## Available Aliases 📝

Here is the list of included aliases and what they do:

### Basic Commands
- `git st` : Short status (`git status -s`)
- `git ch` : Checkout branches/files (`git checkout`)
- `git co` : Commit changes (`git commit`)
- `git br` : List/manage branches (`git branch`)
- `git ps` : Push commits to the remote (`git push`)
- `git fe` : Fetch changes from the remote (`git fetch`)
- `git sh` : Show commit details (`git show`)
- `git di` : Show changes (`git diff`)

### Syncing
- `git pr` : Pull with rebase, avoiding merge commits for a cleaner history (`git pull --rebase`)
- `git hr` : Hard reset to the upstream branch, throwing away local changes (`git reset --hard "@{u}"`)

### Logging and History
- `git hist` : A clean, single-line log history graph (`git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short`)
- `git ll` : Detailed log with file statistics (`--numstat`)
- `git tree` : Beautiful branch topology tree showing how branches diverge and merge.

### Utility
- `git undo` : Undoes your last commit but keeps the files staged so you can edit them or commit them again (`git reset --soft HEAD~1`)

## In depth

### git undo
`git undo` is very useful when you want to undo a commit without losing your work. It uses `git reset --soft HEAD~1` behind the scenes, leaving your changes ready to be modified or committed again.

### git tree
`git tree` shows a comprehensive view of your repository's branching structure. It is extremely handy for visualizing complex histories and merge situations across all branches.
