import subprocess
import os

result = (
    subprocess.check_output(
        ["xrandr | grep ' connected' | grep 'HDMI-1' | awk '{print $1}'"], shell=True
    )
    .decode("utf-8")
    .strip()
)

os.system("redshift -m randr:crtc=0 -O 4000")

if result == "HDMI-1":
    os.system("redshift -m randr:crtc=1 -O 4000")
    os.system("xrandr --output HDMI-1 --primary --left-of eDP-1")

os.system("feh --bg-fill ~/linux-options/images/masterpiece.png")
os.system("xrandr --output eDP-1 --brightness 1")
