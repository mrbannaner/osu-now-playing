#/bin/bash

while true
do
    #Find the window
    win=$(xdotool search --name osu!)
    #Get the title
    winname=$(xdotool getwindowname $win)
    winname=${winname#osu!  - }
    echo -ne "$winname                                              \\r"
    echo "$winname          " > osusong.txt
    sleep 0.25
done
