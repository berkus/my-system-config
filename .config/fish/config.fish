#fish_add_path -gP /opt/homebrew/bin /opt/homebrew/sbin ~/.cargo/bin

# Theme for "cat"-ing files in warp
set -gx BAT_THEME_DARK zenburn
# Theme for "cat"-ing files in Zed
set -gx BAT_THEME_LIGHT Coldark-Cold

set -gx EDITOR 'zed --wait --new'

if begin; status --is-login; and [ -z "$__ENVIRON__" ]; end
    run_gpg-agent
end

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

# Don't let Homebrew install Rust, it botches up the rustup config
set -gx HOMEBREW_FORBIDDEN_FORMULAE rust

if status --is-interactive
    starship init fish | source
    # warpify shell
    printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "fish" }}\x9c'
end
