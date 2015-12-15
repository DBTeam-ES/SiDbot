#!/bin/bash

if [ "$1" = "install-debian" ]; then
 echo "▀█▀ ▒█▀▀▀█ ▀▀█▀▀ ░█▀▀█ ▒█░░░ ▒█░░░ 
▒█░ ░▀▀▀▄▄ ░▒█░░ ▒█▄▄█ ▒█░░░ ▒█░░░ 
▄█▄ ▒█▄▄▄█ ░▒█░░ ▒█░▒█ ▒█▄▄█ ▒█▄▄█ 
"
 sudo apt-get install lua5.2 lua-sec lua-socket
 sudo apt-get install update
elif [ "$1" = "update" ]; then
 echo "Baixando..."
 git pull
else
 echo "▒█▀▀▀█ ▀█▀ ▒█▀▀▄ ▒█▀▀█ ▒█▀▀▀█ ▀▀█▀▀ 
░▀▀▀▄▄ ▒█░ ▒█░▒█ ▒█▀▀▄ ▒█░░▒█ ░▒█░░ 
▒█▄▄▄█ ▄█▄ ▒█▄▄▀ ▒█▄▄█ ▒█▄▄▄█ ░▒█░░ 
"
 lua bot.lua
 sleep 5s
fi