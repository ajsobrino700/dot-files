#! /bin/zsh

if [ -f "{{terminalFile}}" ]; then
	source "{{terminalFile}}"
fi

if [ -f "{{environmentVariablesFile}}" ]; then
    source "{{environmentVariablesFile}}"
fi

if [ -f "{{aliasFile}}" ]; then
    source "{{aliasFile}}"
fi


source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


weatherHere
