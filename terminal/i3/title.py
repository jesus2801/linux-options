from i3ipc import Connection
import os

i3 = Connection()

actualTitle = i3.get_tree().find_focused().window_title

os.system("notify-send -t 1000 -u low \"" + str(actualTitle) + "\"")
