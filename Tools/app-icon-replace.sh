#!/bin/sh
APP=$1
ICON=$2
FILE_ORIG=/Applications/${APP}.app/Contents/Resources/${APP}.icns
FILE_REPL=~/Tools/icons/${ICON}.icns

ORIG=$(shasum $FILE_ORIG | cut -d ' ' -f 1)
REPL=$(shasum $FILE_REPL | cut -d ' ' -f 1)

if [[ "$ORIG" != "$REPL" ]]; then
    sleep 5
    fileicon set /Applications/${APP}.app $FILE_REPL
    killall Dock

    echo "$(date): ${APP} icon changed, updated" >> ~/Tools/${APP}-watcher.log
fi
