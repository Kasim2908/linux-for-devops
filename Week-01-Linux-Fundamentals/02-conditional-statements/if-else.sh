#!/bin/bash

echo "=============================="
echo " Linux CPU Health Checker"
echo "=============================="

read -p "Enter CPU Usage (%): " cpu

echo

if [ "$cpu" -gt 80 ]
then
    echo "Status : HIGH CPU USAGE"
    echo "Recommendation : Investigate running processes using:"
    echo "top"
    echo "ps aux --sort=-%cpu"
else
    echo "Status : CPU Usage Normal"
    echo "System looks healthy."
fi


