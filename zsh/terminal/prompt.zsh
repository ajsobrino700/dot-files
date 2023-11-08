#! /bin/zsh

## Avaible the command expand in the prompt terminal
setopt prompt_subst

typeset -g prompt_newline

prompt_newline=$'\n%{\r%}'

pre_cmd(){
}


local second_line_error="%F{196}%# %F{202}>%F{216}>%F{230}> "
local second_line_well="%F{40}%# %F{77}>%F{156}>%F{230}> "

local second_line="%(?.${second_line_well}.${second_line_error})"


PROMPT="%F{215}%m %F{208} %~ $prompt_newline ${second_line}%F{reset_color}"

RPROMPT='%(?.✅.❌) %D{%H:%M:%S}'
