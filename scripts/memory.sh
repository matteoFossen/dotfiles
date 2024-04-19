#!/bin/bash
cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 10 - $1"%"}')
free_ram=$(free -m | awk '/Mem:/ { printf "%.2f GB\n", $4 / 1024 }')
free_disk=$(df -h / | awk 'NR==2 {printf "%.2f GB\n", $4}')

echo "$cpu_usage | $free_ram | $free_disk"
