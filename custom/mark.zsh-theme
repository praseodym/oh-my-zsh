#!/usr/bin/env zsh
#local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

setopt promptsubst

autoload -U add-zsh-hook

PROMPT_SUCCESS_COLOR=$fg[cyan]
PROMPT_FAILURE_COLOR=$fg[red]
PROMPT_VCS_INFO_COLOR=$fg[black]
PROMPT_PROMPT=%(!.%{$fg[red]%}.%{$fg[cyan]%})
PROMPT_SSH_COLOR=$fg[blue]
GIT_DIRTY_COLOR=$fg[magenta]
GIT_CLEAN_COLOR=$fg[green]
GIT_PROMPT_INFO=$fg[blue]

PROMPT='%(0?.%{$PROMPT_SUCCESS_COLOR%}.%{$PROMPT_FAILURE_COLOR%})%~ %{$PROMPT_SSH_COLOR%}${SSH_TTY:+[%n@%m] }%{$reset_color%}%{$GIT_PROMPT_INFO%}$(git_prompt_info)%{$GIT_DIRTY_COLOR%}$(git_prompt_status)%{$reset_color%}%{$PROMPT_PROMPT%}%#%{$reset_color%} '
SPROMPT="$fg[red]%R$reset_color → $fg[green]%r$reset_color? (Yes, No, Abort, Edit) "

#RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$GIT_PROMPT_INFO%}) "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$GIT_DIRTY_COLOR%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$GIT_CLEAN_COLOR%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[167]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[green]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}✭%{$reset_color%}"
