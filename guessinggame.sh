#!/bin/bash

function count_files {
  ls -1 | wc -l
}

echo "Welcome to the guessing game!"
file_count=$(count_files)

while true; do
  echo "How many files are in the current directory?"
  read guess

  if [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed correctly!"
    break
  elif [[ $guess -lt $file_count ]]; then
    echo "Your guess is too low. Try again."
  else
    echo "Your guess is too high. Try again."
  fi
done
