#! /usr/bin/bash
# Description: Rock, Paper, Scissors game

# Function to get the user's choice
function get_user_choice {
    read -p "Enter your choice (r/p/s): " user_choice
    case $user_choice in
    r) user_choice="rock" ;;
    p) user_choice="paper" ;;
    s) user_choice="scissors" ;;
    *) echo "Invalid choice. Try again." && get_user_choice ;;
    esac
}

# Function to get the computer's choice
function get_computer_choice {
    computer_choice=$((RANDOM % 3))
    case $computer_choice in
    0) computer_choice="rock" ;;
    1) computer_choice="paper" ;;
    2) computer_choice="scissors" ;;
    esac
}

# Function to compare the choices and determine the winner
function compare_choices {
    if [[ $user_choice == $computer_choice ]]; then
        echo "It's a tie!"
    elif [[ $user_choice == "rock" && $computer_choice == "scissors" ]]; then
        echo "You win!"
    elif [[ $user_choice == "paper" && $computer_choice == "rock" ]]; then
        echo "You win!"
    elif [[ $user_choice == "scissors" && $computer_choice == "paper" ]]; then
        echo "You win!"
    else
        echo "You lose!"
    fi
}

# Main program
get_user_choice
get_computer_choice
echo "You chose $user_choice and the computer chose $computer_choice."
compare_choices
