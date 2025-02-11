#! /bin/bash

# shellcheck source=/dev/null
source "$HOME/python-env/bin/activate"

eval "$(
    oh-my-posh init --config ~/CompetitiveProgramming/terminal.omp.json bash
)"

function chrome() {
    "/mnt/c/Program Files/Google/Chrome/Application/chrome.exe" "$(wslpath -w "$(realpath "$1")")"
}

# shellcheck source=/dev/null
. "$HOME/CompetitiveProgramming/secrets.sh"

export USE_CCACHE=1
export CCACHE_DIR=/root/.ccache
export CPLUS_INCLUDE_PATH="$HOME/CompetitiveProgramming/sources/libraries/ac-library"

export PATH="/home/uni_kakurenbo/.local/bin:$PATH"

alias colors="~/.local/lib/256-colors.sh"

alias ccore="~/CompetitiveProgramming/commands/ccore.sh"

alias slc="source ~/CompetitiveProgramming/commands/focus.sh"
alias abc="slc abc"
alias arc="slc arc"
alias agc="slc agc"
alias ahc="slc ahc"

alias op="~/CompetitiveProgramming/commands/open.sh"
alias fd="~/CompetitiveProgramming/commands/find.sh"

alias jp="~/CompetitiveProgramming/commands/jump.sh"

alias ts="~/CompetitiveProgramming/commands/test.sh"

alias sub="~/CompetitiveProgramming/commands/submit.sh"
alias clp="~/CompetitiveProgramming/commands/clip.sh"

alias docs="~/CompetitiveProgramming/commands/docs.sh"

alias pre-compile="~/CompetitiveProgramming/commands/pre-compile.sh"

alias open="powershell.exe /c start"

alias remote="git remote get-url origin | open"
alias rebase="git rebase -i --autosquash"
alias fixup="git commit --fixup"
alias main="git switch main"
alias push="git status"
alias push="git push"

alias drop-cache="sudo bash -c 'echo 3 >/proc/sys/vm/drop_caches && swapoff -a && swapon -a'"

function remove-submodule() {
    git submodule deinit -f "$1"
    git rm -f "$1"
    rm -rf ".git/modules/$1"
}

# shellcheck source=/dev/null
. "$HOME/.cargo/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
