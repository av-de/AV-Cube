#! /bin/bash
# ### Skipt für den "Cube-Modus" ###
# einfach nach ~/ kopieren und in ~/.profile folgende Zeile einfügen:
# . "$HOME/cube-on.sh" &

# Abzuspielendes Video:
vid_file="DAIRY.mov"
vid_dir="$HOME/Desktop"

# Mit VLC Player in Endlosschleife, Vollbild und lautlos abspielen:
vlc --repeat --fullscreen --video-on-top --no-audio $vid_dir/$vid_file &

# WLAN aus - Kommandos (wie nmcli) können abweichen ...
nmcli radio wifi off

# max. Bildschirm-Helligkeit 
# Pfad zum Helligkeitswert - muss ggf. angepasst werden!!!
sys_var_brightness="/sys/class/backlight/intel_backlight/brightness"
# Schreibrechte müssen ggf. auch erst mit sudo chmod 646 eingeräumt werden!

# max. möglicher Wert sollte zuerst ermittelt werden
# dazu Bildschirm auf volle Helligkeit stellen und mit
#   sudo cat $sys_var_brightness
# auslesen 
max_brightness="96000"

# Bildschirm auf max. Helligkeit stellen
echo $max_brightness > $sys_var_brightness
