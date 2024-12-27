#!/bin/sh
FILE_ORIG=/Applications/Warp.app/Contents/Resources/Warp.icns
FILE_REPL=~/Tools/classic_1984_mac.icns

ORIG=$(shasum $FILE_ORIG | cut -d ' ' -f 1)
REPL=$(shasum $FILE_REPL | cut -d ' ' -f 1)

if [[ "$ORIG" != "$REPL" ]]; then
    cp $FILE_REPL $FILE_ORIG
    touch /Applications/Warp.app

    echo "$(date): Warp icon changed, updated" >> ~/Tools/warp-watcher.log
fi
