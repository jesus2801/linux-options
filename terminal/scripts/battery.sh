percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage:.*" | grep -oE "[0-9]+")

if [ $percentage -lt 20 ]; then
  notify-send -u critical "CHARGE BATTERY" "Hey! You should charge the battery right now, it is too low dude :("
fi
