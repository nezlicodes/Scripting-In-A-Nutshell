#!/bin/bash

GREEN='\033[0;33m'
CC='\033[0;35m'
NC='\033[0m'
BLUE='\033[0;34m'
RED=$(tput setaf 1) 
RESET=$(tput sgr0)

##Welcome and username
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - -\n"
printf "\t   Welcome to learn_shell. A program built by the digital-codon\n\t   platform, that teaches shell scripting inside the shell.\n"
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
printf "Instructions:\n"
read -p " Press ${RED}enter${RESET} whenever you are ready to start. "
printf " You can press ${RED}control + c${RESET} whenever you want to exit the program. "
read -p " Got it? "
read -p " Cool ! "
read -p " By the way, what may I call you? " username
if [[ $username ]]; 
then
	read -p " Okay $username let's get started! "
else
	read -p " Are you sure you don't want to tell me your name? " username
	if [[ $username ]];
	then
		        read -p " Okay $username let's get started! "
		else
			username="Shy Guest"
			read -p " Okay, then I will just call you Shy Guest. "
		fi
fi

printf " \n\t${BLUE} "
echo " |===                                                        |    6%"
printf "\n${RESET} "
## PWD
read -p " First, let's check where we are in time and space."
printf " To display your current directory, type the command ${RED}pwd${RESET}\n\t$ %s/%s " $username $(pwd)
read -p "" dir
while [[ $dir != "pwd" ]]
do
	printf " Enter: ${RED}pwd${RESET}\n\t$ "
	read -p "" dir
done
printf "  \t> ${GREEN}$(pwd)${NC}\n" 
read -p " Awesome!"
read -p " ${RED}pwd${RESET} stands for print working directory, it displays the full path of your directory."

echo " |======                                                     |    12%" 
# Date 
read -p " Let's check now what time is it."
printf " To do so, type: ${RED}date${RESET}\n\t$ "
read -p "" dir
while [[ $dir != "date" ]]
do
	printf " Type ${RED}date${RESET}\n\t$ "
	read -p "" dir
done 
printf "  \t> ${GREEN}$(date)\n${NC}\n" 
read -p " Wow $username you learn so fast."

echo " |=========                                                  |    19%" 

## Ls
read -p " Now, there are a bunch of files and folders in this directory. Let's explore them."
printf  " To list all files and directories, we use the ${RED}ls${RESET} command.\n\t$ "
read -p "" dir
while [[ $dir != "ls"  ]]
do
	printf " Type ${RED}ls${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(ls -C)${NC}\n"
read -p " Nice. "
read -p " The ls command lists all files and directories in your current folder. "
read -p " And like all unix commands, ${RED}ls${RESET} has a handful of useful options you can use. "
read -p " Let's say for example you want more details about the files in this directory."
printf " You can very much do so using the -l option, type $(tput setaf 1)ls -l$(tput sgr0)\n\t$ "
read -p "" dir
while [[ $dir != 'ls -l' ]]
do 
	printf " Enter: $(tput setaf 1) ls -l $(tput sgr0)\n\t\$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(ls -l)\n${NC}"
read -p " As you can see, you have now a list of all files and directories with some attributes about each file like date and size. "

echo " |=======================                                                        |    36%" 

read -p " Alright, let's navigate to the empty_folder directory to see if it is truely empty. "
printf " We will use the change directory or ${RED}cd${RESET} command. Type ${RED}cd empty_folder${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'cd empty_folder' ]]
do
	printf " Type ${RED}cd empty_folder${RESET}\n\t$ " 
	read -p "" dir
done
printf " \t> ${GREEN}$(pwd)/empty_folder\n${NC}"
read -p " Awesome."

read -p " Practice time! "
printf " List the content of this folder based on what you learned so far:\n\t$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
	printf " The correct command is: ${RED}ls${RESET}\n\t\$ "	
	read -p "" dir
done 
printf " \t> ${GREEN}$(ls empty_folder)\n${NC}" 
read -p " Yeah! Keep the progress up! "

read -p " It looks like the folder is truely empty."
read -p " Or is it ?"
read -p " The truth is that there is a secret file in this folder."
read -p " By default, the ls command does not list files that start with '.' (called dot files)."
read -p " To list it, you have to pass in the option -a to the ls command. "
printf " Try it now. Type ${RED}ls -a${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'ls -a'  ]]
do
	printf " Please, type ${RED}ls -a${RESET}\n\t$ "
	read -p	"" dir
done
printf " \t> ${GREEN}$(ls -Ca empty_folder)${NC}\n"

#READING FILES AND EXAMINING FILES
read -p " I bet now you want to know what kind of dark secret is hidden in the .secret file, don't you? "
read -p " Well, that's good because you are about to learn how to examine a file. "
read -p " To read the content of a file, you have to execute the command ${RED}cat filename${RESET}"
printf " Type ${RED}cat .secret${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'cat .secret' ]]
do
	printf " Please enter: ${RED}cat .secret${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(cat empty_folder/.secret)${NC}\n"
read -p " Spooky."

## CD ..
read -p " Let's do some more exiting work now with our dna.txt file. "
read -p " First off, we need to navigate back to the parent directory. "
printf " Type the command ${RED}cd .${RESET}\n\t$ "
read -p "" dir
while [[ $dir != "cd ." ]]
do
	printf " Please enter: ${RED}cd .${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(pwd)${NC}\n"
read -p " Good."


## Making directories.
read -p " One important piece of bioinformatics is project organization. "
read -p " It is quite important to have a clean well organized working directory because files add up really fast as we are going to see in the next courses. "
read -p " Let's create a folder dna_sequences in which we will put all our dna.txt files. "
read -p " Todo this, the make directory or ${RED}mkdir${RESET} command is used. "
printf " Type: ${RED}mkdir dna_sequences${RESET}\n\t$ "
read -p "" dir
while [[ $dir != "mkdir dna_sequences" ]]
do
	printf " Please enter: ${RED}mkdir dna_sequences${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(mkdir dna_sequences)${NC}\n"
read -p " Awesome $username."

## Copying files.
read -p " Let's copy now the dna.txt file in that folder. "
printf " Enter  ${RED}cp dna.txt dna_sequences${RESET}\n\t$ " 
read -p "" dir
while [[ $dir != "cp dna.txt dna_sequences" ]]
do
	printf " Please enter: ${RED}cp dna.txt dna_sequences${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(cp dna.txt dna_sequences)${NC}\n"
read -p " Awesome $username." 


## Ls /dir
read -p " Just to make sure that it has been copied, we will list the content of dna_sequences."
printf "You will not need to navigate to the folder this time. just enter ${RED}ls dna_sequences${RESET} "
read -p "" dir
while [[ $dir != "ls dna_sequences" ]] 
do
	printf " Please enter: ${RED}ls dna_sequences${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(ls dna_sequences)${NC}\n"
read -p " Awesome $username."


## REMOVING FILES
read -p " Since our file is copied, we don't need it anymore. To delete it we will use the remove command."
printf " Go ahead %s, just enter ${RED}rm dna.txt ${RESET} " $username
read -p "" dir
while [[ $dir != "rm dna.txt" ]]
do
	printf " Please enter: ${RED}rm dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(rm dna.txt)${NC}\n"
read -p " Awesome $username."


## REMOVING DIRECTORIES
read -p " Also, since it's useless by now, we can delete the empty_folder. "
read -p " In order to do this, you have to use the -r (for recursively) option with the remove command"
printf " Type: ${RED}rm -r empty_folder${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'rm -r empty_folder' ]]
do
	printf " Type: ${RED}rm -r empty_folder${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(rm -r empty_folder)${NC}\n"
read -p " You're nailing it!"

## Ls
printf " List the content of the directory to make sure that you have dont it right:\n\t$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
	printf " Type: ${RED}ls${RESET}\n\t$ "
       	read -p "" dir
done
printf " \t> ${GREEN}$(ls)${NC}\n"
read -p " You're nailing it!" 

## mv
read -p " We will now copy the dna2.txt file to the dna_sequences folder. "
read -p " This time, we will not use the ${RED}cp${RESET} command but rather the ${RED}mv${RESET} 'move' command"
printf " Type: ${RED} mv dna2.txt dna_sequences${RESET} "
read -p "" dir
while [[ $dir != 'mv dna2.txt dna_sequences' ]]
do
	printf " Type: ${RED}mv dna2.txt dna_sequences${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(mv dna2.txt dna_sequences)${NC}\n"
read -p " You're nailing it!"


## Ls
printf " Again, list the content of the directory to make sure that you have dont it right:\n\t$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
	printf " Type: ${RED}ls${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(ls)${NC}\n"
read -p " You're nailing it!"


## cd dna_sequences
printf " Now,  navigate to the dna_sequences folder: \n\t$ "
read -p "" dir
while [[ $dir != 'cd dna_sequences' ]]
do
	printf " Type: ${RED}cd dna_sequences${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(cd dna_sequences)${NC}\n"
read -p " You're nailing it!" 

read -p " We just learned about the ${RED}cat${RESET} command that allows you to read a file. "
read -p " Most of the times though, your files are too long to be printed all at once. "
printf " Try for example to read the file 'dna.txt' using the ${RED}cat dna.txt${RESET} command\n\t$  "
read -p "" dir
while [[ $dir != 'cat dna.txt' ]]
do
	printf " Type: ${RED}cat dna_sequences/dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(cat dna_sequences/dna.txt)${NC}\n"
read -p " Wow, pretty long right? "
read -p " Let's say you want to check the first lines of the file only. "
read -p " There is a special command that allows you to do just that. "
read -p " Let's check the head of the file dna.txt. "
printf " Type ${RED}head dna.txt${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'head dna.txt' ]]
do
	printf " Type ${RED}head dna.txt${RESET}\n\t$ "
	read -p "" dir
done

printf " \t> ${GREEN}$(head dna_sequences/dna.txt)${NC}\n"
read -p " That's much cleaner, right? " 
read -p " The ${RED}head${RESET} command accepts some options. "
read -p " You can for example chose how many lines you want to read with the ${RED}-n${RESET} option. "
printf " To print the first 3 lines of your file, enter ${RED}head -n3 dna.txt${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'head -n3 dna.txt' ]]
do
	printf " Type:  ${RED}head -n3 dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(head -n3 dna_sequences/dna.txt)${NC}\n"

printf " Alternatively, you can check the tail of your file using the ${RED}tail dna.txt${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'tail dna.txt' ]]
do
	printf " Please enter: ${RED}tail dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(tail dna_sequences/dna.txt)${NC}\n"

read -p " There are other widely used commands to read files that I will let you explore on your own. "
read -p " For now, let's continue exploring our files. "
read -p " You just saw that dna.txt was a pretty long file.  "
read -p " But how many word exactly does it contain? "
printf " To answer this question, we use the word count or wc command: ${RED}wc dna.txt${RESET}\n\t$ "
read -p "" dir
while [[ $dir != 'wc dna.txt' ]]
do
	printf " Please enter: ${RED}wc dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(wc dna_sequences/dna.txt)${NC}\n"
read -p " This command outputs the number of lines, the number of words and the number of characters your file contain. "
printf " You can also check how many lines are in the file: with the option -l: ${RED}wc -l dna.txt${RESET}\n\t$ " 
read -p "" dir
while [[ $dir != 'wc -l dna.txt' ]]
do
	printf " Please enter: ${RED}wc -l dna.txt${RESET}\n\t$ "
	read -p "" dir
done
printf " \t> ${GREEN}$(wc -l dna_sequences/dna.txt)${NC}\n"


