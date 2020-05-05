#!/bin/bash
GREEN='\033[0;33m'
NC='\033[0m'
dir=$(pwd)
printf "Hey, welcome in learn_shell. A program that teaches about shell scripting inside the shell.\n"
(sleep 1) 
read -p "what may I call you? " username
(sleep 1) 
echo "okay "$username" let's get started!"
(sleep 1)
printf "\nFirst, let's check where we are in time and space.\n"
(sleep 1) 
read -p "To check in which directory you are, type the command "pwd" " dir1

while [[ $dir1 != "pwd" ]]
do
	read -p "To check in which directory you are, type the command "pwd" " dir1
done
printf "${GREEN}$(pwd)${NC}" 
printf "\nAwesome, you did well\n"
(sleep 1) 
printf "So, your current directory is "$dir"\n"
(sleep 1) 
printf "Let's check now what time is it\n"
(sleep 1) 
read -p "To do so, type: "date" " dir2
while [[ $dir2 != "date" ]]
do
       	read -p "Oops, it looks like you are not typing the correct command. Type "date" " dir2
done 
printf "${GREEN}$(date)\n${NC}" 
echo "Wow "$username" you learn so fast."

