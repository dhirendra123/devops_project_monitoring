#! /bin/bash

# Fake App - Generates log entries

while true
do
  echo "$(date) - INFO - User logged in" >> ../logs/app.log
  echo "$(date) - ERROR - Something went wrong" >> ../logs/app.log
  echo "$(date) - DEBUG - Debugging info" >> ../logs/app.log
  sleep 5
done

