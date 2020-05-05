#!/bin/basn learn_shell.
#A program that teaches about shell scripting inside the shell.\n"
dir=${pwd}
read -p "what may I call you? " username
printf "\nokay "$username" let's get started!\n"
printf "First, let's check where we are in time and space.\n"
read -p " To check in which directory you are, type the command "pwd"" dir1

while [[ $dir1 != "pwd" ]]
do                                                                                                                              read -p " To check in which directory you are, type the command "pwd" " dir1
done                                                                                                                    pwd                                                                                                                                                                                                                                             printf "\nAwesome, you did well\n"
printf "$dir \n"    i
