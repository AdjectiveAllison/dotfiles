# list of public git repo vars
set -gx XDG_CONFIG_HOME ~/.config
set -gx EDITOR nvim
set -gx PATH $HOME/.local/bin $PATH
set -gx HF_HOME $HOME/hf
set -gx HF_HUB_ENABLE_HF_TRANSFER true
set -gx MARKPATH $HOME/.marks

# function call to source ~/.global.env and set -gx on them (SECRETS NOT FOR GIT)
[ -e ~/.global.env ]; and source_env ~/.global.env

if test -d /opt/homebrew # macOS ARM64 (Apple Silicon)
    set -gx HOMEBREW_PREFIX "/opt/homebrew"
    set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar"
    set -gx HOMEBREW_REPOSITORY "/opt/homebrew"
    fish_add_path -m "/opt/homebrew/bin" "/opt/homebrew/sbin"
    set -gx MANPATH "/opt/homebrew/share/man" $MANPATH
    set -gx INFOPATH "/opt/homebrew/share/info" $INFOPATH
else if test -d /usr/local/Homebrew # macOS Intel
    set -gx HOMEBREW_PREFIX "/usr/local"
    set -gx HOMEBREW_CELLAR "/usr/local/Cellar"
    set -gx HOMEBREW_REPOSITORY "/usr/local/Homebrew"
    fish_add_path -m "/usr/local/bin" "/usr/local/sbin"
    set -gx MANPATH "/usr/local/share/man" $MANPATH
    set -gx INFOPATH "/usr/local/share/info" $INFOPATH
else if test -d /home/linuxbrew/.linuxbrew # Linux
    set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew"
    set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar"
    set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew"
    fish_add_path -m "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin"
    set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH
    set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH
end

fish_add_path -p "$HOME/.npm-global/bin"
