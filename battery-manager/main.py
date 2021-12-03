#!/usr/bin/env python3
import os, subprocess
from playsound import playsound

# declare the app path
APP_PATH = '/home/jesus/options/battery-manager'

# declare an increment count function for change the temp.txt count
def incrementCount():
    # read the archive
    fRead = open(APP_PATH + '/temp.txt', 'r')
    # read the content
    actualCount = fRead.read()
    count = int(actualCount) if actualCount != '' else 0
    # close the archive
    fRead.close()
    
    #if count is major to 3 return false to stop the execution
    if (count >= 3): return False

    # open the file
    f = open(APP_PATH + '/temp.txt', 'w')
    # increment the file count
    f.write(str(count + 1))
    f.close()

    # send a continue signla for continue with the execution
    return True

# get the battery's percent opening the file called "capacity" 
capacityProcess = subprocess.Popen('cat /sys/class/power_supply/BAT0/capacity', shell=True, stdout=subprocess.PIPE)
percent = int(capacityProcess.stdout.read().decode('utf-8'))

# get the battery's state by opening the file called "status"
pluggedProcess = subprocess.Popen('cat /sys/class/power_supply/BAT0/status', shell=True, stdout=subprocess.PIPE)
plugged = True if pluggedProcess.stdout.read().decode('utf-8').strip() == 'Charging' else False

# function that shows a message
def generateCommand(msg: str):
    playsound(str(APP_PATH) + '/docs/music.mp3')
    return 'XDG_RUNTIME_DIR=/run/user/$(id -u) /usr/bin/notify-send --urgency critical --app-name Battery --icon battery "Jesús, ' + msg + ' Pilaaaaaaaaas"'

# app logical 
if __name__ == '__main__':
    if (percent >= 96 and plugged == True):
        if(incrementCount()):
            os.system(generateCommand('¡Desconecta el cargador!'))
    elif (percent <= 19 and plugged == False):
        if(incrementCount()):
            os.system(generateCommand('¡Conecta el cargador!'))
    else:
        os.system('cat /dev/null >| ' + APP_PATH + '/temp.txt')
else:
    print("The name is not __main__")
    print("The name is: " + __name__)
