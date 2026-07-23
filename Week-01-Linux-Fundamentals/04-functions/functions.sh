#!/bin/bash

system_info(){

    echo "========== SYSTEM INFO =========="

    hostname

    whoami

    date

}

system_info


memory_info(){

    echo

    echo "========== MEMORY =========="

    free -h

}

memory_info


disk_info(){

    echo

    echo "========== DISK =========="

    df -h

}

disk_info

docker_status(){

    echo

    echo "========== DOCKER =========="

    systemctl is-active docker

}

docker_status


top_processes(){

    echo

    echo "========== CPU =========="

    ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -6

}

top_processes



