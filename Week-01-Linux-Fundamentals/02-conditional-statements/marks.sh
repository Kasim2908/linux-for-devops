#!/bin/bash

read -p "Enter the marks you scored in your exam: " marks

if [ "$marks" -ge 90 ]
then
    echo "Grade : Great"

elif [ "$marks" -ge 75 ]
then
    echo "Grade : Best"

elif [ "$marks" -ge 60 ]
then
    echo "Grade : Good"

else
    echo "Grade : Need Improvement"

fi
