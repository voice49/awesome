#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off

#Screen  layout  arandr script
$HOME/.screeenlayout/screenlayout.sh

#Plolybar  run  script
#$HOME/.config/polybar/launch.sh &

#change your keyboard if you need it
setxkbmap -layout "us,gr" -option  "grp:alt_shift_toggle"



xsetroot -cursor_name left_ptr &
#run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &

run pamac-tray &
numlockx on &
#picom --config $HOME/.config/bspwm/picom.conf &
/usr/lib/polkit-kde-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &
#nitrogen --restore &
#run ffplay -nodisp -autoexit  $HOME/Documents/bell.oga &
run ckb-next-daemon &