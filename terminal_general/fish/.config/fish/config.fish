if status is-interactive
    # Commands to run in interactive sessions can go here

    # Helps screen run better when sshing from graphical terminal not on server
    #alias ssh 'TERM=xterm-256color /usr/bin/ssh'
    #use this to send terminfo to other server to make the alias not needed: infocmp -x | ssh HOSTNAME -- tic -x -

    # no atuin temporarily. I like native fish up arrow for history more. 
    # TODO: Figure out if it's useful to have activated for storing commands in a way that isn't just up arrow history.
    #atuin init fish | source
    fish_vi_key_bindings

    alias hx="helix"
    alias coco="bunx code-contextor"
		alias gst="git status"
		alias gcm="git commit"
		alias ga="git add"
		alias gaa="git add ."
		alias zb="zig build"
		alias zbr="zig build run"

    starship init fish | source
end

gruvbox_material
