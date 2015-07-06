function parse_git_branch { 
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
} 
export PS1="\[\033[0;31m\][\w] \$(parse_git_branch) >\[\e[0m\]"
export PATH="/usr/local/bin:$HOME/.exenv/bin:$PATH"
eval "$(exenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias g='git'
alias emax='open -a /Applications/Emacs.app $1'
alias ls='ls -GFh'
