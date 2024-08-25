#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}


#Screen  layout  arandr script
#!/bin/sh
xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DVI-D-1 --off


#Plolybar  run  script
#$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
setxkbmap -layout "us,gr" -option  "grp:alt_shift_toggle"



xsetroot -cursor_name left_ptr &
#run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

run pamac-tray &
numlockx on &
#picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/kde4/libexec/polkit-kde-authentication-agent-1 &
#usr/lib/xfce-polkit &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#run ffplay -nodisp -autoexit  $HOME/Documents/bell.oga &
#run ckb-next-daemon &
#run nvim --listen ~/.cache/nvim/server.pipe &