#!/bin/bash
# Provide the context to the user withe list of friends name and provide the 
# range for the age.
# Prompt the user to guess and enter the name.
# Go over the for loop to iterate over the name list and compare the user prompted name and the name from the list.

# if guess is correct, it will prompt the user to enter the age. If user guess is correct, we congratulate and execute from the loop.

echo "My friends names are laxmi, dolma, neja and karma"
echo "Their age is between 25-30 years old."
echo "Can you guess which friend I am thinking about?"

friend_name_list=("laxmi" "dolma" "neja" "karma")
friend_age_list=(25 30 28 27)


while true; do
  read -p "Enter your guess for the name: " guess_name

  for i in "${!friend_name_list[@]}"; do
    if [[ "$guess_name" == "${friend_name_list[$i]}" ]]; then
      read -p "Enter your guess for the age: " guess_age

      if [[ "$guess_age" -eq "${ages[$i]}" ]]; then
        echo "Congratulations! You guessed $guess_name and the age $guess_age it correctly."
        break 2 
      else
        echo "Sorry, $guess_name and $guess_age are not correct. Try again."
      fi
    fi
  done

  if [[ "$guess_name" == "${friend_name_list[$i]}" ]]; then
    break  
  fi
done
