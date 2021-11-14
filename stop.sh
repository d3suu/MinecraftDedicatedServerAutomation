#!/bin/bash
PID=$(pidof java)
echo $PID
tmux send-keys -t Minecraft_Server.0 "stop" ENTER
while kill -0 $PID 2> /dev/null; do
        sleep 1
done
