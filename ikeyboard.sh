#!/bin/bash
if [ $# != 1 ]; then
  echo 'option error' 
  exit
fi

# optinos
#   -d  Disable internal keyboard
#   -e  Enable internal keyboard
if [ $1 = "-d" ]; then
  kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/ > /dev/null 2>&1
  echo 'keyboard is disabled'
elif [ $1 = "-e" ]; then
  kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/ > /dev/null 2>&1
  echo 'keyboard is enabled'
else
  echo 'option error'
fi
