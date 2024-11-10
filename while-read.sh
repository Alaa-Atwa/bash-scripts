#!/usr/bin/env bash

count=1

while read line; do
    echo $count:  $line  
    count=$(( count + 1 ))
done < $1 

