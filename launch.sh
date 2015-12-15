#!/bin/bash

if [ "$1" = "install" ]; then
 echo "▀█▀ ▒█▄░▒█ ▒█▀▀▀█ ▀▀█▀▀ ░█▀▀█ ▒█░░░ ▒█░░░ 
▒█░ ▒█▒█▒█ ░▀▀▀▄▄ ░▒█░░ ▒█▄▄█ ▒█░░░ ▒█░░░ 
▄█▄ ▒█░░▀█ ▒█▄▄▄█ ░▒█░░ ▒█░▒█ ▒█▄▄█ ▒█▄▄█ 
"
 sudo apt-get install lua5.2 lua-sec lua-socket
 sudo apt-get install update
elif [ "$1" = "update" ]; then
 echo "Baixando..."
 git pull
elif [ "$1" = "send" ]; then
 echo "Enviado..."
 git push
elif [ "$1" = "info" ]; then
 echo "▒█▀▀▀█ ▀█▀ ▒█▀▀▄ ▒█▀▀█ ▒█▀▀▀█ ▀▀█▀▀ 
░▀▀▀▄▄ ▒█░ ▒█░▒█ ▒█▀▀▄ ▒█░░▒█ ░▒█░░ 
▒█▄▄▄█ ▄█▄ ▒█▄▄▀ ▒█▄▄█ ▒█▄▄▄█ ░▒█░░ 
"
 echo "By>>> TiagoDanin  BOTV3"
 echo "MyPager:http://tiagodanin.github.io"
 echo "Twitter:@_TiagoEDGE"
 echo "Telegram:@TiagoDanin"
 echo ""
 echo "Canal no telegram:@BotSiD"
 echo "Github:https://github.com/TiagoDanin/SiDbot"
elif [ "$1" = "license" ]; then
 echo "　 ▒█▀▀█ ▒█▀▀█ ▒█░░░ ▀█░█▀ █▀█ 
　 ▒█░▄▄ ▒█▄▄█ ▒█░░░ ░█▄█░ ░▄▀ 
　 ▒█▄▄█ ▒█░░░ ▒█▄▄█ ░░▀░░ █▄▄ 
"
 echo "Based on otouto v3.1 by @topkecleon"
 echo "licensed GPLv2."
 cat LICENSE
else
 echo "▒█▀▀▀█ ▀█▀ ▒█▀▀▄ ▒█▀▀█ ▒█▀▀▀█ ▀▀█▀▀ 
░▀▀▀▄▄ ▒█░ ▒█░▒█ ▒█▀▀▄ ▒█░░▒█ ░▒█░░ 
▒█▄▄▄█ ▄█▄ ▒█▄▄▀ ▒█▄▄█ ▒█▄▄▄█ ░▒█░░ 
"
 lua bot.lua
 sleep 5s
fi