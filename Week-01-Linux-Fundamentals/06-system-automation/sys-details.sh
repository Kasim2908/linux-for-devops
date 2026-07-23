#!/bin/bash

# RAM Used
check_memory() {
    free -h | awk 'NR==2 {print "RAM Used: "$3" / "$2}'
}

# Storage Used
check_storage() {
    df -h / | awk 'NR==2 {print "Storage Used: "$3" / "$2" ("$5" used)"}'
}

# Top Memory Consuming Process
check_most_mem_consuming_process() {
    echo "Top Memory Consuming Process:"
    ps -eo pid,user,comm,%mem --sort=-%mem | awk 'NR==2 {print "PID: "$1", User: "$2", Process: "$3", Memory: "$4"%"}'
}

# Show all details
show_details() {
    echo "========== SYSTEM DETAILS =========="
    check_memory
    echo
    check_storage
    echo
    check_most_mem_consuming_process
    echo "===================================="
}

# Call the function
show_details
