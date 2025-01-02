# Custom Aliases
gitAddAll() {
    git add .
    echo "Added all files in current working directory"
}

gitStatus() {
    git status -v
}

# enables syntax like 'refresh <branch-name>'
gitRefresh() {
    git checkout $1
    git pull origin $1
}

gitDeleteAllMergedBranches() {
    echo "Deleting merged branches, if any"
    git branch --merged | grep -Ev "(^\*|staging|main|dev)" | xargs -n 1 -r git branch -d
}

openZshConfig() {
    nvim ~/.zshrc
}

openVimConfig() {
    nvim ~/.config/nvim
}

openTmuxConfig() {
    nvim ~/.tmux/tmux.conf
}

alias vimconf='openVimConfig'
alias zshconf='openZshConfig'
alias tmuxconf='openTmuxConfig'

alias gs='git status'
alias gsa='git status -v'
alias gpo='git push origin'
alias ga='git add .'
alias gc='git commit -m'
alias gco='git checkout'
alias gcnew='git checkout -b'
alias gdmb='gitDeleteAllMergedBranches'
alias gr='git restore'
alias grs='git restore --staged'

alias refresh="gitRefresh"
alias vim="nvim"
