#!/bin/bash
person1=pavani
person2=Vishnu
echo "All variables passed : $@"
echo "No of variables: $#"
echo "script name: $0"
echo "current directory : $PWD"
echo "user running the script: $USER"
echo "Home directory of user: $HOME"
echo "PID of the script: $$"
sleep 10 &
echo "PID of last command in background: $!"
echo "Print all"
