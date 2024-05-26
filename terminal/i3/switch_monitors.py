import subprocess
import json

result = subprocess.check_output(["i3-msg -t get_workspaces"], shell=True).decode('utf-8').strip()
workspaces = json.loads(result)


def move(w, dest: str):
  for workspace in w:
    subprocess.run(
      f'i3-msg \'[workspace="{workspace["num"]}"]\' move workspace to output {dest}', shell=True)


HDMI = []
laptop = []

current_workspace = ""
current_output = ""
current = ""
for workspace in workspaces:
  if workspace["focused"]:
    current_workspace = workspace["num"]
    current_output = workspace["output"]

  if workspace["output"] == "HDMI-1":
    HDMI.append(workspace)
  else:
    laptop.append(workspace)

if current_output == "HDMI-1":
  move(laptop, "HDMI-1")
  move(HDMI, "eDP-1")
else:
  move(HDMI, "eDP-1")
  move(laptop, "HDMI-1")

subprocess.run(f'i3-msg workspace "{current_workspace}"', shell=True)