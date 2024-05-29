#! /bin/zsh

cat <<'EOF'
           _..._
         .'     '.
        /  _   _  \
        | (o)_(o) |
         \(     ) /
         //'._.'\ \
        //   .   \ \
       ||   .     \ \
       |\   :     / |
       \ `) '   (`  /_
     _)``".____,.'"` (_
     )     )'--'(     (
      '---`      `---`
EOF

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
#
HISTSIZE=1000
SAVESIZE=1000
HISTFILE="~/.zsh_history"

setopt histignorealldups sharehistory


# Prompt
local PROMPT_FILE="${HOME}/.config/zsh/terminal/prompt.zsh"
if [ -f "${PROMPT_FILE}" ]; then
    source "${PROMPT_FILE}"
else
    autoload -Uz promptinit
    promptinit
    prompt adam1
fi

autoload -Uz compinit
compinit

source ~/softwareDevelopment/enhancd/init.sh

source "{{ZSH_syntax_highlighting}}"

. "$HOME/.asdf/asdf.sh"
