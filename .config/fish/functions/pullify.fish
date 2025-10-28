function pullify
  git config --add remote.origin.fetch '+refs/pull/*/head:refs/remotes/origin/pr/*'
end
