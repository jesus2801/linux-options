import subprocess
import os

result = subprocess.check_output(["xrandr |grep ' connected' |grep 'HDMI-1' |awk '{print $1}'"], shell=True).decode('utf-8').strip()

if (result == 'HDMI-1'):
    os.system('xrandr --output HDMI-1 --primary --left-of eDP-1')
    os.system('feh --bg-fill ~/options/images/wallpaper.jpg')
