#!/usr/bin/env bash

# draw a diamond pattern with dots(.)

read -p "Enter number of lines(4-9): " lines
# check input 
if [[ $lines -lt 4 ]] || [[ $lines -gt 9 ]] ; then
    echo "number not allowed.."
    exit 1
fi

# starting loop
# first part
for (( i=0; i<=lines; i++ )); do
    # adding the empty spaces.
    for (( y=lines; y>=i; y-- )); do
        echo -n " "
    done
    # adding the dots.
    for (( x=0; x<i; x++ )); do
        echo -n " ." # the space is for the margin between dots.
    done
    echo  # the new line  
done

# second part 
for (( i=$lines; i>=0; i-- )); do
    # adding the empty spaces.
    for (( y=i; y<lines; y++ )); do
        echo -n " "
    done
    # adding the dots.
    for (( x=i; x>=0; x-- )); do
        echo -n " ."
    done
    echo 
done

echo -e "\n\n Shine Like a Diamond ! :) "

