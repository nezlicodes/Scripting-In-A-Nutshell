#!/bin/sh
GREEN='\033[0;33m'
CC='\033[0;35m'
NC='\033[0m'
dir=$(pwd)
PID=$!
##Welcome and username
printf "Hey, welcome in learn_shell. A program that teaches about shell scripting inside the shell.\n"
sleep 2
read -p "Press any key to continue " 
read -p "what may I call you? " username
(sleep 1) 
echo "okay "$username" let's get started!"
(sleep 1)
## PWD
printf "First, let's check where we are in time and space."
read -p " " 
read -p "To check in which directory you are, type the command $(tput setaf 1) pwd $(tput sgr0) " dir1

while [[ $dir1 != "pwd" ]]
do
	read -p "To check in which directory you are, type the command  $(tput setaf 1) pwd $(tput sgr0) " dir1
done
printf "${GREEN}$(pwd)${NC}\n" 
printf "Awesome, you did well"
(sleep 1) 
## Date
read -p ""
printf "So, your current directory is "$dir""
read -p "" 
printf "Let's check now what time is it"
read -p ""
read -p "To do so, type: $(tput setaf 1) date $(tput sgr0) " dir2
while [[ $dir2 != "date" ]]
do
	read -p "Oops, it looks like you are not typing the correct command. Type $(tput setaf 1) date $(tput sgr0) " dir2
done 
printf "${GREEN}$(date)\n${NC}\n" 
read -p " "
echo "Wow "$username" you learn so fast."

## Ls
read -p " "
printf "There is a bunch of files and folders in this directory. let's check them\n"
read -p " "
read -p  "To list all files, type the command  $(tput setaf 1) ls  $(tput sgr0)" dir3
while [[ $dir3 != "ls"  ]]
do
	read -p "Please, type in the command $(tput setaf 1) ls $(tput sgr0) " dir3
done
printf "${GREEN}$(ls -C)${NC}"
printf "\n Cool "$username"\n"
sleep 1
printf "The ls command lists all files and directories in your current folder.\n"
sleep 1
printf "Like all unix commands, ls commes with a handful of useful options you can use.\n"
read -p ""
printf "Let's say for example you want more details about the files in this directory\n"
read -p ""
read -p "In order to do so, type $(tput setaf 1) ls -l $(tput sgr0) " dir4
while [[ $dir4 != 'ls -l' ]]
do 
	read -p "Enter: $(tput setaf 1) ls -l $(tput sgr0) " dir4
done
printf "${GREEN}$(ls -l)\n${NC}"
read -p ""
printf "As you can see, you have now a list of all files and directories\n"
printf "with many details. Among those, Date and size\n"
read -p ""
printf "Now, there is a secret file in this folder that starts with '.'\n"
printf "By default, the ls command does not list files that start with '.'\n"
read -p ""
printf "To list it, you have to pass in the option -a to the ls command\n"
read -p "Try it now. Type $(tput setaf 1) 'ls -a' $(tput sgr0) " dir5
while [[ $dir5 != 'ls -a'  ]]
do
	read -p "Please "$username", type in the command $(tput setaf 1)  ls -a $(tput sgr0) " dir5
done
printf "${GREEN}$(ls -a)${NC}\n"


bye() {
	echo "hi"
}
