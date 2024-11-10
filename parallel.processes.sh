#!/usr/bin/env bash

# running two commands and waits for both to finish before proceeding


ping -c 20 google.com & 
pid1=$!  # store the process ID of command1


ping -c 10 youtube.com & 
pid2=$! # store the process ID of command2


# wait for both commands to finish 
wait $pid1
wait $pid2

# proceed with further steps after both commands complete 
echo "Both commands completed."
