#!/bin/bash

# Dice roller game

echo "Welcome to the Dice Rolling game!"
echo "How many sides do you want the dice to have?"

# Read user input for number of sides
read sides

# Check if the input is a valid number greater than 1
if [[ $sides -lt 2 ]]; then
  echo "A dice needs at least 2 sides!"
  exit 1
fi

# Loop to roll the dice until the user wants to stop
while true; do
  # Roll the dice by generating a random number
  roll=$((RANDOM % sides + 1))
  
  # Output the result of the roll
  echo "You rolled a $roll!"

  # Ask the user if they want to roll again
  echo "Do you wish to roll again? (y/n)"
  read choice

  # Check the user's choice
  if [[ $choice != "y" ]]; then
    echo "Thanks for playing this boring game:P!"
    break
  fi
done
