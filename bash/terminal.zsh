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

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory
