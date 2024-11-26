command find ~/Library/QuickLook -type d -depth 1 -exec sh -c 'xattr -l "{}" | grep -q "com.apple.quarantine" && xattr -d com.apple.quarantine "{}"' \;
