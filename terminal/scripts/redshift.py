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

status = ""
with open("/redshift.status", "r") as file:
    status = file.read().strip()
    print(status)

now = datetime.datetime.now()

if now.hour >= 18 or now.hour <= 6:
    if status == "disabled":
        os.system("redshift -x")
        time.sleep(1)
        os.system("redshift -m randr:crtc=0 -O 2400")

        if result == "HDMI-1":
            os.system("redshift -m randr:crtc=1 -O 2400")

        status = "enabled"
elif status == "enabled":
    os.system("redshift -x")
    time.sleep(1)

    os.system("redshift -m randr:crtc=0 -O 4000")

    if result == "HDMI-1":
        os.system("redshift -m randr:crtc=1 -O 4000")

    status = "disabled"

with open("/redshift.status", "w") as file:
    file.write(status)
