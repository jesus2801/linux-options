import time
import datetime
import os
import subprocess

result = (
    subprocess.check_output(
        ["xrandr | grep ' connected' | grep 'HDMI-1' | awk '{print $1}'"], shell=True
    )
    .decode("utf-8")
    .strip()
)

now = datetime.datetime.now()

if now.hour >= 18:
    os.system("redshift -x")
    time.sleep(1)
    os.system("redshift -m randr:crtc=0 -O 2400")

    if result == "HDMI-1":
        os.system("redshift -m randr:crtc=1 -O 2400")
