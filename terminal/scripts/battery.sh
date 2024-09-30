percentage=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "percentage:.*" | grep -oE "[0-9]+")
state=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -E "state:." | grep -oE "\w+$")

if [[ $percentage -lt 20 && $state == "discharging" ]]; then
  notify-send -u critical "CHARGE BATTERY" "Hey! You should charge the battery right now, it is too low dude :("
elif [[ $percentage -gt 97 && $state == "charging" ]]; then
  notify-send -u critical "DISCONNECT CHARGER!!" "Hey! You should disconnect the charger right now, it is already at full battery percentage ;)"
fi
