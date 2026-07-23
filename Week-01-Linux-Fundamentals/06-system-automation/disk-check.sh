#!/bin/bash

echo "======================================"
echo "      Linux Disk Health Checker"
echo "======================================"

read -p "Enter Disk Usage (%): " disk

echo

if [ "$disk" -ge 90 ]
then
    echo "Status         : CRITICAL"
    echo "Recommendation : Free disk space immediately."

elif [ "$disk" -ge 80 ]
then
    echo "Status         : WARNING"
    echo "Recommendation : Check disk usage."

else
    echo "Status         : HEALTHY"
    echo "System looks healthy."
fi
