if status is-interactive
    # Commands to run in interactive sessions can go here

    # Helps screen run better when sshing from graphical terminal not on server
    alias ssh 'TERM=xterm-256color /usr/bin/ssh'

    # no atuin temporarily. I like native fish up arrow for history more. 
    # TODO: Figure out if it's useful to have activated for storing commands in a way that isn't just up arrow history.
    #atuin init fish | source
    
    starship init fish | source
end

