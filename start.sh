#!/bin/bash
cd /home/minecraft
#java -jar paper-1.17.1-381.jar
tmux new-session -d -s Minecraft_Server 'java -jar paper-1.17.1-381.jar'

PID=$(pidof java)
echo $PID
while kill -0 $PID 2> /dev/null; do
        sleep 1
done
