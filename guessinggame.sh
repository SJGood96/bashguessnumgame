#!/bin/bash

#Guessing Game 03/28/2024

#Generate a random number between 1 and 100

target=$((RANDOM % 100 + 1))

echo "Welcome to the Gussing Game!"

echo "Try to guess the number between 1 and 100 within 5 turns."

turns=0
guessed=false

while [[ $turns -lt 5 && "$guessed" = false ]];
         do 
            ((turns++))
                read -p "Turn $turns - Enter your guess: " guess ;

    #Check if the guess is a vaild number

    if ! [[ $guess =~ ^[0-9]+$ ]]
        then
            echo "Please enter a vaild number"
                continue
            fi

    #Compare the guess with the target number

    if ((guess < target)); 
        then 
            echo "Too low! Try again."
    elif ((guess > target));
        then    
            echo "Too high! Try again."
    else
        echo "Congratulations! you guessed the correct number: $target"
            guessed=true

        fi
done

if [[ "$guessed" = false ]] ;
    then
         echo "Sorry you didn't guess the number within 5 turns. The correct number was $target."
            
            fi