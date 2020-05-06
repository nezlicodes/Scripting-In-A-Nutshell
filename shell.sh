#!/bin/bash

GREEN='\033[0;33m'
CC='\033[0;35m'
NC='\033[0m'
dir=$(pwd)
PID=$!
RED=$(tput setaf 1) 
RESET=$(tput sgr0)

##Welcome and username
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - -\n"
printf "\t   Welcome to learn_shell. A program built by the digital-codon\n\t   platform, that teaches shell scripting inside the shell.\n"
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
printf "Instructions:\n"
read -p " Press ${RED}enter${RESET} whenever you are ready to continue. "
printf " You can press ${RED}control + c${RESET} whenever you want to exit the program.\n"
read -p " Got it? "
read -p " Cool ! "
read -p " By the way, what may I call you? " username
if [[ $username ]]; 
then
	read -p " Okay "$username" let's get started! "
else
	read -p " Are you sure you don't want to tell me your name? " username
	if [[ $username ]];
	then
		        read -p " Okay "$username" let's get started! "
		else
			username="Shy guest"
			read -p " Okay, then I will just call you Shy Guest. "
		fi
	fi
## PWD
read -p " First, let's check where we are in time and space."
printf " To display your current directory, type the command ${RED}pwd${RESET}\n\t$ "
read -p "" dir
while [[ $dir != "pwd" ]]
do
	printf " Enter: ${RED}pwd${RESET}\n\t$ "
	read -p "" dir
done
printf "  \t> ${GREEN}$(pwd)${NC}\n" 
read -p " Awesome!"
read -p " ${RED}pwd${RESET} stands for print working directory, it displays the full path of your directory."

## Date 
read -p " Let's check now what time is it."
printf " To do so, type: ${RED}date${RESET}\n\t$ "
read -p "" dir
while [[ $dir != "date" ]]
do
	printf " Type ${RED}date${RESET}\n\t$ "
	read -p "" dir
done 
printf "  \t>${GREEN}$(date)\n${NC}\n" 
read -p " Wow $username you learn so fast."

## Ls
read -p " " any
printf "There is a bunch of files and folders in this directory. let's check them\n"
read -p " " any
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
read -p " " any
printf "Let's say for example you want more details about the files in this directory\n"
read -p " " any
read -p "In order to do so, type $(tput setaf 1) ls -l $(tput sgr0) " dir4
while [[ $dir4 != 'ls -l' ]]
do 
	read -p "Enter: $(tput setaf 1) ls -l $(tput sgr0) " dir4
done
printf "${GREEN}$(ls -l)\n${NC}"
read -p " " any
printf "As you can see, you have now a list of all files and directories\n"
printf "with many details. Among those, Date and size\n"
read -p " " any
read -p "Let'navigate to the empty_folder directory to see if it is truely empty."
read -p "We will use the change directory or cd command. Type $(tput setaf 1) cd empty_folder $(tput sgr0) " dir4
while [[ $dir4 != 'cd empty_folder' ]]
do
	read -p "Enter: $(tput setaf 1) cd empty_folder $(tput sgr0)" dir4
done
printf "${GREEN}$(pwd)/empty_folder\n${NC}"
read -p "Awesome."

read -p "It's your turn to show me what you can do. List the content this folder based on what you learned so far: " dir
while [[ $dir != 'ls' ]]
	do 
		read -p "The correct command is: $(tput setaf 1) ls $(tput sgr0)" dir
done 
printf "${GREEN}$(ls empty_folder)\n${NC}" 

read -p "It looks like the folder is truely empty."
read -p "Or is it ?"
read -p "The truth is that there is a secret file in this folder.\n"
read -p "By default, the ls command does not list files that start with '.' (called dot files).\n"
read -p "To list it, you have to pass in the option -a to the ls command\n"
read -p "Try it now. Type $(tput setaf 1) 'ls -a' $(tput sgr0) " dir5
while [[ $dir5 != 'ls -a'  ]]
do
	read -p	"Please, type $(tput setaf 1) 'ls -a' $(tput sgr0) " dir5
done
printf "${GREEN}$(ls -Ca empty_folder)${NC}\n"


#READING FILES AND EXAMINING FILES
printf "I bet now you want to know what kind of dark secret is hidden\n"
printf "in the .secret file, don't you?\n"
printf "Well, that's good because you are about to learn how to examine a file\n"
read -p "Ready ? " any
printf "To read the content of a file, you have to execute the command $(tput setaf 1) cat filename $(tput sgr0)\n"
sleep 1
read -p "Type $(tput setaf 1) cat .secret $(tput sgr0)" dir6
while [[ $dir6 != 'cat .secret' ]]
do
	read -p "Please enter:  $(tput setaf 1) cat .secret $(tput sgr0) " dir6
done
printf "${GREEN}$(cat empty_folder/.secret)${NC}\n"
read -p "Spooky."

read -p "Let's do some more exiting work now with our dna.txt file. "
read -p "First, we need to navigate back to the parent directory. "
read -p "Type the command $(tput setaf 1)cd . $(tput sgr0)" dir
while [[ $dir != 'cd .' ]]
do
	read -p "Please enter:  $(tput setaf 1)cd .$(tput sgr0) " dir
done
printf "${GREEN}$(pwd)${NC}\n"
read -p "Good."

read -p "We juat learned about the $(tput setaf 1)cat$(tput sgr0) that allows you to read a file."
read -p "Most of the times though, your files are too long to be printed all at once."
read -p "try for example to read the file 'dna.txt' using the $(tput setaf 1)cat$(tput sgr0) command" dir8
while [[ $dir8 != 'cat dna.txt' ]]
do
	read -p "Type:  $(tput setaf 1) cat dna.txt $(tput sgr0) " dir8
done
printf "${GREEN}$(cat dna.txt)${NC}\n"
read -p "Wow, pretty long right? "
read -p "Let's say you want to check the first lines of the file only."
read -p "There is a special command that allows you to do just that."
printf "Let's check the head of the file dna.txt.\n"
read -p "Type $(tput setaf 1) head dna.txt $(tput sgr0)" dir7
while [[ $dir7 != 'head dna.txt' ]]
do
	        read -p "Please enter:  $(tput setaf 1) head dna.txt $(tput sgr0) " dir7
done
printf "${GREEN}$(head dna.txt)${NC}\n"
read -p "That's much cleaner, right?" 
read -p "The $(tput setaf 1)head$(tput sgr0) command accepts some options."
read -p "You can for example chose how many lines you want to read with the $(tput setaf 1)-n$(tput sgr0) option"
read -p "To print the first 3 lines of your file, enter  $(tput setaf 1)head -n3$(tput sgr0) " dir9
while [[ $dir9 != 'head -n3 dna.txt' ]]
do
	read -p "Type:  $(tput setaf 1) head -n3 dna.txt $(tput sgr0) " dir9
done
printf "${GREEN}$(head -n3 dna.txt)${NC}\n"
read -p "Alternatively, you can check the tail of your file using the  $(tput setaf 1) tail dna.txt $(tput sgr0)" dir12
while [[ $dir12 != 'tail dna.txt' ]]
do
	        read -p "Please enter:  $(tput setaf 1) tail dna.txt $(tput sgr0) " dir12
done
printf "${GREEN}$(tail dna.txt)${NC}\n"
read -p "There are other widely used commands to read files that I will let you explore on your own."
read -p "For now, let's continue exploring our files. "
read -p "You just saw that dna.txt was a pretty long file.  "
read -p "But how many word exactly does it contain? "
read -p "To answer this question, we use the word count or wc command: $(tput setaf 1 )wc dna.txt$(tput sgr0)" dir10
while [[ $dir10 != 'wc dna.txt' ]]
do
	read -p "Please enter:  $(tput setaf 1) wc dna.txt $(tput sgr0) " dir10
done
printf "${GREEN}$(wc dna.txt)${NC}\n"
read -p "The output tells you your file contains $(cat dna.txt | wc) words"
read -p "You can also check how many lines are in the file: with the option -l: $(tput setaf 1 )wc -l dna.txt$(tput sgr0)" dir11
while [[ $dir11 != 'wc-l dna.txt' ]]
do
	read -p "Please enter:  $(tput setaf 1) wc -l dna.txt $(tput sgr0) " dir11
done
printf "${GREEN}$(wc -l dna.txt)${NC}\n"

