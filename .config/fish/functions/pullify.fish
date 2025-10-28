function pullify -d "Allow access to GitHub PRs for given remote (origin by default)"
    set -l remote (string length -q -- $argv[1]; and echo $argv[1]; or echo "origin")
    git config --add remote.$remote.fetch "+refs/pull/*/head:refs/remotes/$remote/pr/*"
end
