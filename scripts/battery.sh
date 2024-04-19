#!/usr/bin/bash
b="$(cat '/sys/class/power_supply/BAT0/capacity')"

# check charging 
c=""
st="$(cat /sys/class/power_supply/BAT0/status)"
if [[ $st = "Charging" ]]; then
  c="c:"
fi

echo "$c$b%"
