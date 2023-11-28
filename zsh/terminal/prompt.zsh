#! /bin/zsh


promt_preview(){
    echo "Tu puta madre"
}

## Avaible the command expand in the prompt terminal
setopt prompt_subst

typeset -g prompt_newline

prompt_newline=$'\n%{\r%}'

pre_cmd(){
}

get_icon_so(){
    so=$(uname)
    icon="\U1F427"
    if [[ "${so}" = "Darwin" ]]; then
        icon="\uF302"
    fi
    echo "${icon}"
}

icon_so=$(get_icon_so) 


# The color is x-term256 the information is on environment varibale TERM
function parse_git_branch() {
	result=$(git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/\1/p')
	echo $result
}

function git_status(){
  git status -s 2> /dev/null
}

function pending_push {
    git diff --stat --cached "origin/${1}" 2> /dev/null
}

function git_prompt {
    changes=$(git_status)
    typeset -g status_prompt=""
    if [ -n "${changes}" ]; then
        numbers=$(echo "${changes}" | wc -l | awk '{$1=$1;print}')
        status_prompt=" 💾 %F{1}${numbers}"
    fi

    typeset -g push_changes=""
    if [ -n "$(pending_push $1)" ]; then
        push_changes=" %F{green}\u2934"
    fi

    echo "%F{reset_color}on %F{213}\ue0a0 ${1}${status_prompt}${push_changes}"
}


local second_line_error="%F{196}%# %F{202}>%F{216}>%F{230}> "
local second_line_well="%F{40}%# %F{77}>%F{156}>%F{230}> "



local second_line="%(?.${second_line_well}.${second_line_error})"
local first_line='%F{215}%m %F{208}${icon_so} %~ $(branch=$(parse_git_branch); if [ -n "${branch}" ]; then git_prompt "${branch}";fi;)'

PROMPT="$first_line $prompt_newline${second_line}%F{reset_color}"

RPROMPT='%(?.✅ .❌ ) 🕒 %D{%H:%M:%S}'
