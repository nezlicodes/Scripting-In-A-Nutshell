#!/bin/bash

GREEN='\033[0;33m'
CC='\033[0;35m'
NC='\033[0m'
BLUE='\033[0;34m'
RED=$(tput setaf 1)
RESET=$(tput sgr0)
DNAFILE="$(pwd)/dna.txt"
DNA2FILE="$(pwd)/dna2.txt"
EMPTY_FOLDER="$(pwd)/empty_folder"
DOTSECRET="$(pwd)/empty_folder/.secret"
DNA_SEQUENCES="$(pwd)${BLUE}/dna_sequences${RESET}"

## MY FUNCTIONS
show_error() {
    read -p " Oops, it looks like there is an error.. "
    read -p " If this is your first time running the program, please report this problem at: benmeradi.lilyanezli@gmail.com"
    read -p " If you already ran this program once, make sure your working directory is set just as you've downloaded it the first time. "
    read -p " Or even better, I challenge you to set it back yourself using the command line! "
	read -p " All initial files are in the backup folder. "
    
    exit 1;
}

##Welcome and username
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - -\n"
printf "\t   Welcome to Scripting In A Nutshell. An interactive program developped by DigitalCodon that teaches shell scripting inside the shell.\n"
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
printf "\n"
if [[ ! -f "$DNAFILE" ||  ! -f "$DNA2FILE" || ! -f "$DOTSECRET" || ! -d "$EMPTY_FOLDER" || -d "$DNA_SEQUENCES" ]];
then
	show_error
    exit 1
fi


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

ID="${GREEN}"$username"${RESET}:${BLUE}$(pwd)${RESET}"

printf " \n\t${BLUE} "
echo " | ==                                                 |    4% "
printf "\n${RESET}"

## PWD
read -p " First, let's check where we are in time and space."
printf " To display your current directory, type the command ${RED}pwd${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "pwd" ]]
do
    printf " Enter: ${RED}pwd${RESET}\n\t$ID$ "
    read -p "" dir
done
printf "  \t$ID>  ${GREEN}$(pwd)${NC}\n"
read -p " ${RED}pwd${RESET} stands for print working directory, it displays the full path of your directory."

printf " \n\t${BLUE} "
echo " | ====                                               |    9% "
printf "\n${RESET}"


# Date
read -p " Let's check now what time it is."
printf " To do so, type: ${RED}date${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "date" ]]
do
    printf " Type ${RED}date${RESET}\n\t$ID$ "
    read -p "" dir
done
printf "  \t$ID>  ${GREEN}$(date 2>/dev/null)\n${NC}\n"
read -p " Wow $username you learn so fast."

printf " \n\t${BLUE} "
echo " | ======                                             |    14%"
printf "\n${RESET}"

## Ls
read -p " Now, there are a bunch of files and folders in this directory. Let's explore them."
printf  " Enter ${RED}ls${RESET}:\n\t$ID$ "
read -p "" dir
while [[ $dir != "ls"  ]]
do
    printf " Type ${RED}ls${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(ls -C)${NC}\n"

read -p " Nice. "
read -p " The ls command lists all files and directories in your current folder, "
read -p " and like all unix commands, ${RED}ls${RESET} has a handful of useful options you can use. "
read -p " Suppose you want more details about the files in this directory."
read -p " You can very much do so using the -l option. "
printf " To see this it in action, type ${RED}ls -l${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != 'ls -l' ]]
do
    printf " Enter: ${RED}ls -l${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(ls -l)\n${NC}"

read -p " As you can see, you have now an extended format of the content of your directory. "

printf " \n\t${BLUE} "
echo " | ========                                           |    23%"
printf "\n${RESET}"
printf " You can also sort the files and directories by modification time using the ${RED}-t${RESET} option. Go ahead and try it out:\n\t$ID$ "
read -p "" dir
while [[ $dir != 'ls -t' ]]
do
    printf " Just enter: ${RED}ls -t${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(ls -Ct)\n${RESET}"
read -p " You're nailing it!"

read -p " Alright now, let's navigate to the empty_folder to see if it is truely empty. "
read -p " We will use the change directory or ${RED}cd${RESET} command."
printf " Type ${RED}cd empty_folder${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != 'cd empty_folder' ]]
do
    printf " Type ${RED}cd empty_folder${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/empty_folder${RESET}> ${GREEN}$(cd empty_folder)\n${RESET}"
read -p " Good!"
read -p " Notice how you your directory has changed."

printf " \n\t${BLUE} "
echo " | ============                                       |    27%"
printf "\n${RESET}"


read -p " Practice time! "
printf " List the content of this folder based on what you have learned so far:\n\t$ID${BLUE}/empty_folder${RESET}$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
    printf " The correct command is: ${RED}ls${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/empty_folder${RESET}> ${GREEN}$(ls empty_folder)\n${NC}"
read -p " Yeah! Keep the progress up! "


read -p " No output has been returned. It looks like the folder is truely empty."
read -p " Or is it ?"
read -p " The truth is that there is a secret file in this folder."
read -p " By default, the ls command does not list files that start with '.', called dot files."
read -p " To list them, you have to pass in the option -a to the ls command. "
printf " Try out it now. Type ${RED}ls -a${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
read -p "" dir
while [[ $dir != 'ls -a'  ]]
do
    printf " Please, type ${RED}ls -a${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
    read -p	"" dir
done
printf " \t$ID${BLUE}/empty_folder${RESET}> ${GREEN}$(ls -Ca empty_folder)${NC}\n"
printf " \n\t${BLUE} "
echo " | ==================                                 |    37%"
printf "\n${RESET}"

## READING FILES AND EXAMINING FILES
read -p " I bet you want to know what kind of dark secret is hidden in the .secret file, don't you? "
read -p " Well, that's good because you are about to learn how to examine a file. "
read -p " To read the content of a file, you have to execute the command ${RED}cat filename${RESET}"
printf " Type ${RED}cat .secret${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
read -p "" dir
while [[ $dir != 'cat .secret' ]]
do
    printf " Please enter: ${RED}cat .secret${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/empty_folder${RESET}> ${GREEN}$(cat empty_folder/.secret 2>/dev/null)${NC}\n"
read -p " Spooky."

printf " \n\t\t${BLUE} "
echo " | ======================                             |    42%"
printf "\n${RESET}"

## CD ..
read -p " It's time to learn manipulating our dna.txt file. "
read -p " First off, we need to navigate back to the parent directory. "
printf " Type the command ${RED}cd ..${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
read -p "" dir
while [[ $dir != "cd .." ]]
do
    printf " Please enter: ${RED}cd ..${RESET}\n\t$ID${BLUE}/empty_folder${RESET}$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(cd ..)${RESET}\n"
read -p " Good!"
read -p " Notice how you your directory has changed once again."

printf " \n\t\t${BLUE} "
echo " | ======================                             |    47%"
printf "\n${RESET}"

## Making directories.
read -p " One important piece of bioinformatics is project organization. "
read -p " It is quite important to have a well organized working directory because files add up really fast "
read -p " and if you don't have a way of organizing your files, you will easily lose track. "
read -p " We will create a folder in which we will put all our dna.txt files. "
read -p " Todo this, we will make use of the make directory or ${RED}mkdir${RESET} command. "
printf " Type: ${RED}mkdir dna_sequences${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "mkdir dna_sequences" ]]
do
    printf " Please enter: ${RED}mkdir dna_sequences${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(mkdir dna_sequences 2>/dev/null)${RESET}"

printf " \n\t\t${BLUE} "
echo " | ========================                           |    52%"
printf "\n${RESET}"

## Copying files.
read -p " The next step is obviously copying the dna.txt file in that folder. "
printf " Enter ${RED}cp dna.txt dna_sequences${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "cp dna.txt dna_sequences" ]]
do
    printf " Please enter: ${RED}cp dna.txt dna_sequences${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(cp dna.txt dna_sequences 2>/dev/null)${NC}\n"
read -p " You got this! "

printf " \n\t\t${BLUE} "
echo " | ============================                       |    56%"
printf "\n${RESET}"

## Ls /dir
read -p " Just to make sure that it has been copied, we will list the content of dna_sequences."
printf " You will not need to navigate to the folder this time. just enter ${RED}ls dna_sequences${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "ls dna_sequences" ]]
do
    printf " Please enter: ${RED}ls dna_sequences${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(ls -C dna_sequences 2>/dev/null)${NC}\n"
read -p " Awesome!"

printf " \n\t\t${BLUE} "
echo " | ==============================                     |    60%"
printf "\n${RESET}"

## REMOVING FILES
read -p " Since our file is copied, we don't need it anymore. To delete it we will use the remove command."
printf " Go ahead, type ${RED}rm dna.txt ${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "rm dna.txt" ]]
do
    printf " Please enter: ${RED}rm dna.txt${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(rm dna.txt 2>/dev/null)${NC}\n"
read -p " Awesome $username!"


printf " \n\t\t${BLUE} "
echo " | ================================                   |    64%"
printf "\n${RESET}"

## REMOVING DIRECTORIES
read -p " Also, since it's useless by now, we can delete the empty_folder. "
read -p " In order to do this, you have to use the -r -for recursively- option with the remove command"
printf " Type: ${RED}rm -r empty_folder${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != 'rm -r empty_folder' ]]
do
    printf " Type: ${RED}rm -r empty_folder${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(rm -r empty_folder 2>/dev/null)${NC}\n"
read -p " You're nailing it!"

printf " \n\t\t${BLUE} "
echo " | ==================================                 |    68%"
printf "\n${RESET}"

## Ls
printf " List the content of the directory to make sure that you have done it right:\n\t$ID$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
    printf " Type: ${RED}ls${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID> ${GREEN}$(ls -C 2>/dev/null)${NC}\n"
read -p " You are nailing it!"


printf " \n\t\t${BLUE} "
echo " | ====================================               |    72%"
printf "\n${RESET}"

## mv
read -p " We will now copy the dna2.txt file to the dna_sequences folder. "
read -p " This time, we will not use the ${RED}cp${RESET} command but rather the ${RED}mv${RESET} -move- command"
printf " Type: ${RED} mv dna2.txt dna_sequences${RESET}\n\t$ID$ "
read -p "" dir
while [[ $dir != "mv dna2.txt dna_sequences" ]]
do
    printf " Type: ${RED}mv dna2.txt dna_sequences${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID> ${GREEN}$(mv dna2.txt dna_sequences 2>/dev/null)${NC}\n"
read -p " Keep going!"

printf " \n\t\t${BLUE} "
echo " | ====================================               |    76%"
printf "\n${RESET}"


## Ls
printf " Again, list the content of the directory to make sure that you have dont it right:\n\t$ID$ "
read -p "" dir
while [[ $dir != 'ls' ]]
do
    printf " Type: ${RED}ls${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID>  ${GREEN}$(ls -C 2>/dev/null)${NC}\n"
read -p " Wow, you impress me!"

printf " \n\t\t${BLUE} "
echo " | ========================================           |    80%"
printf "\n${RESET}"


## cd dna_sequences
printf " Now,  navigate to the dna_sequences folder: \n\t$ID$ "
read -p "" dir
while [[ $dir != 'cd dna_sequences' ]]
do
    printf " Type: ${RED}cd dna_sequences${RESET}\n\t$ID$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(cd dna_sequences 2>/dev/null )${NC}\n"
read -p ""

printf " \n\t\t${BLUE} "
echo " | ========================================           |    82%"
printf "\n${RESET}"


## Cat AND HEAD
read -p " We just learned about the ${RED}cat${RESET} command that allows you to read a file. "
read -p " Most of the times though, your files are too long to be printed all at once. "
printf " Try for example to read the file 'dna.txt' using the ${RED}cat dna.txt${RESET} command\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'cat dna.txt' ]]
do
    printf " Type: ${RED}cat dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(cat dna_sequences/dna.txt)${NC}\n"
read -p " Wow, pretty long right? "
read -p " What if instead you just want to check the first few lines only? "
read -p " There is a special command that allows you to do just that. "
read -p " It is the ${RED}head${RESET} command, it only prints the first 10 lines of your file. "
printf " Type ${RED}head dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'head dna.txt' ]]
do
    printf " Type ${RED}head dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(head dna_sequences/dna.txt 2>/dev/null)${NC}\n"
read -p " That's much cleaner, right? "
read -p " The ${RED}head${RESET} command accepts some options. "
read -p " You can for example choose how many lines you want to read with the ${RED}-n${RESET} option. "
printf " To print the first 3 lines of your file, enter ${RED}head -n3 dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'head -n3 dna.txt' ]]
do
    printf " Type:  ${RED}head -n3 dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(head -n3 dna_sequences/dna.txt 2>/dev/null)${NC}\n"
printf " \n\t\t${BLUE} "
echo " | ==============================================     |    92%"
printf "\n${RESET}"

## TAIL
read -p " Alternatively, the ${RED}tail${RESET} command outputs the last lines of your files. "
printf " Enter ${RED}tail dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'tail dna.txt' ]]
do
    printf " Please enter: ${RED}tail dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(tail dna_sequences/dna.txt 2>/dev/null)${NC}\n"
read -p " There are other widely used commands to read files that I will let you explore on your own. "
read -p " For now, let's continue exploring our files. "
read -p " You just saw that dna.txt was a pretty long file.  "
read -p " But how many words exactly does it contain? "
printf " To answer this question, we use the word count or wc command: ${RED}wc dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'wc dna.txt' ]]
do
    printf " Please enter: ${RED}wc dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done
printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(wc dna_sequences/dna.txt 2>/dev/null)${NC}\n"
read -p " This command outputs the number of lines, the number of words and the number of characters your file contain. "
read -p " You can also check how many lines are in the file: with the option -l. "
printf " Type ${RED}wc -l dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
read -p "" dir
while [[ $dir != 'wc -l dna.txt' ]]
do
    printf " Please enter: ${RED}wc -l dna.txt${RESET}\n\t$ID${BLUE}/dna_sequences${RESET}$ "
    read -p "" dir
done

printf " \t$ID${BLUE}/dna_sequences${RESET}> ${GREEN}$(wc -l dna_sequences/dna.txt 2>/dev/null)${NC}\n"
read -p " Cool, you have learned so much already! "
read -p ""

## GOODBYE
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - -  - - - - - - -\n"
printf "\t   Scripting In A Nutshell. A program built by DigitalCodon that teaches shell scripting inside the shell .\n"
printf "\t - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -\n"
printf "\n"


