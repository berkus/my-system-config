#!/bin/sh
cp ~/Tools/classic_1984_mac.icns /Applications/Warp.app/Contents/Resources/Warp.icns
touch /Applications/Warp.app

echo "$(date): Updated warp icon" >> ~/Tools/warp-watcher.log
