# list of public git repo vars
set -gx EDITOR nvim
set -gx PATH $HOME/.local/bin $PATH

# function call to source ~/.global.env and set -gx on them (SECRETS NOT FOR GIT)
[ -e ~/.global.env ]; and source_env ~/.global.env
