#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

_update_git_branch() {
  local b
  b=$(git symbolic-ref --short -q HEAD 2>/dev/null) || b=''
  if [[ -n $b ]]; then
    GIT_BRANCH="$b"
  else
    GIT_BRANCH=""
  fi
}

PROMPT_COMMAND="_update_git_branch"

PS1='[\u@\h \W]${GIT_BRANCH:+ \[\e[1;36m\]${GIT_BRANCH}\[\e[0m\]}\$ '

export COMPOSE_BAKE=true

PATH="$HOME/.local/bin:$PATH"
export npm_config_prefix="$HOME/.local"
