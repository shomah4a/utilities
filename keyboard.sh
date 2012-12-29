#!/bin/sh

# vaio z のビルトインキーボードをオンオフするスクリプト

KBDID=`xinput list | awk 'BEGIN {FS="="} /AT Translated Set 2 keyboard/{print $2}' | awk '{print $1}'`

if [ "$KBDID" = "" ]; then
    echo "keyboard not found"
    exit
fi;


case $1 in
    on) xinput enable $KBDID ;;
    off) xinput disable $KBDID ;;
    *) echo 'usage keyboard.sh [on|off]'
esac;
