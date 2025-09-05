#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if uwsm check may-start; then
  exec uwsm start hyprland-uwsm.desktop > /dev/null 2>&1
fi
