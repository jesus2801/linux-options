#!/bin/bash
result=$(find ~/Documents/ -maxdepth 1 -type f | grep -iE "logisim.*\.jar$")
java -jar $result &
