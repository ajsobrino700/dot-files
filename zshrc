#! /bin/zsh

if [ -f "{{terminalFile}}" ]; then
	source "{{terminalFile}}"
fi

if [ -f "{{aliasFile}}" ]; then
    source "{{aliasFile}}"
fi

weatherHere
