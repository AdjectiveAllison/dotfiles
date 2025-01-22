# list of public git repo vars
set -gx EDITOR nvim
set -gx PATH $HOME/.local/bin $PATH
set -gx HF_HOME $HOME/hf
set -gx HF_HUB_ENABLE_HF_TRANSFER true

# function call to source ~/.global.env and set -gx on them (SECRETS NOT FOR GIT)
[ -e ~/.global.env ]; and source_env ~/.global.env

# Homebrew environment setup for Fish
if test -x /home/linuxbrew/.linuxbrew/bin/brew
    set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
    set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar"
    set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"
    fish_add_path -m "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin"
    set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH
    set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH
end
