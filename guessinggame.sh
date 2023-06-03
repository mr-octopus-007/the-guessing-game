#!/usr/bin/env bash
#File: guessinnggame.sh

echo "Please guess how many files are there in the directory!"
echo "Enter your guess: "

read usr_guess

outcome=0

ans=$(ls -l | grep ^d | wc -l)

while [[ outcome -eq 0 ]]
do
	if [[ $ans -eq $usr_guess ]]
	then
		echo "Congratulations, you are right!"
		outcome=1
	else
		echo "Sorry! Your guess is wrong!"
		[[ $usr_guess -gt $ans ]] && echo "Try lesser!" || echo "Try higher!"
		echo "Enter the number again!: "
		read usr_guess
	fi
done
