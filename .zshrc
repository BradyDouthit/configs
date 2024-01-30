# Custom Aliases

gitAddAll () {
    git add . 
    echo "Added all files in current working directory"
}

gitStatus () {
    git status -v
}

# enables syntax like 'refresh <branch-name>'
gitRefresh () {
    git checkout $1
    git pull origin $1
}

alias add="gitAddAll"
alias status="gitStatus"
alias refresh="gitRefresh"

alias vim="nvim"