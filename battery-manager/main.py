#!/usr/bin/env python3
import os, subprocess
from playsound import playsound

APP_PATH = '/home/jesus/Documentos/archivos-pc/battery-manager'

capacityProcess = subprocess.Popen('cat /sys/class/power_supply/BAT0/capacity', shell=True, stdout=subprocess.PIPE)
percent = int(capacityProcess.stdout.read().decode('utf-8'))

pluggedProcess = subprocess.Popen('cat /sys/class/power_supply/BAT0/status', shell=True, stdout=subprocess.PIPE)
plugged = True if pluggedProcess.stdout.read().decode('utf-8').strip() == 'Charging' else False

def generateCommand(msg: str): 
    return 'XDG_RUNTIME_DIR=/run/user/$(id -u) /usr/bin/notify-send --urgency critical --app-name Battery --icon battery "Jesús, ' + msg + ' Pilaaaaaaaaas"'

if (percent >= 96 and plugged == True):
    os.system(generateCommand('¡Desconecta el cargador!'))
    playsound(str(APP_PATH) + '/docs/music.mp3')
elif (percent <= 19 and plugged == False):
    os.system(generateCommand('¡Conecta el cargador!'))
    playsound(str(APP_PATH) + '/docs/music.mp3')

