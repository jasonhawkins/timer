#!/bin/sh

seconds=$1

printf "Counting down from "

while [ $seconds -gt 0 ]; do
   printf "$seconds "
   sleep 1
   : $((seconds--))
done

echo "\nTimer done."

osascript -e 'display notification "Timer has ended." with title "Timer"'
