#
# ~/.bashrc
#
[[ $- != *i* ]] && return

if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
	exec fish $LOGIN_OPTION
fi

#if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
#then
#	shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
#	exec fish $LOGIN_OPTION
#fi
#export PATH="$HOME/.local/bin:$PATH"

#if [[ $- == *i* ]] && [[ "$SHELL" != "/usr/bin/fish" ]]; then
#    exec fish
#fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
