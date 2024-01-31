# https://github.com/flameshot-org/flameshot/blob/master/docs/Sway%20and%20wlroots%20support.md#river-wlroots-support
# Have to set CURRENT_DESKTOP to sway to trick flameshot into working. launch river like: dbus-run-session river
# I may go away from flameshot, setting back to river and launching river normally.
set -gx XDG_CURRENT_DESKTOP river
