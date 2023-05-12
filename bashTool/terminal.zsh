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


# The color is x-term256 the information is on environment varibale TERM
function parse_git_branch() {
   git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

function git_status(){
  echo	$(git status -s 2> /dev/null)
}

## Avaible the command expand in the prompt terminal
setopt PROMPT_SUBST


PROMPT='%(?.%K{green}.%K{red})%D{%H:%M:%S}%k%F{208}%~ $(if [ -z "$(git_status)" ]; then echo "%F{green}"; else echo "%F{red}"; fi;)$(parse_git_branch)%F{yellow}$%F{reset_color} '
