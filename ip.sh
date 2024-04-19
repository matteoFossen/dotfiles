#!/bin/bash
result="$(curl -s http://ipinfo.io/ip)"
if [[ -z $result ]]; then
  echo "offline"
else
  echo "${result}"
fi
