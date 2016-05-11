#!/bin/bash

case "$(pidof blender | wc -w)" in

0)  echo "Restarting blender:"
    nohup ./slave-cmd.sh >> /home/networkrender/slave.log 2>&1 &
    ;;
1)  echo "Blender already running"
    ;;
esac
