#!/bin/bash

script_name=$0
script_full_path=$(dirname "$0")

remove_only=0
while getopts "r" opt
do
    case $opt in
    (r) remove_only=1;;
    (*) printf "Illegal option '-%s'\n" "$opt" && exit 1 ;;
    esac
done

IPs=()
IPs+=(172.217.0.0/16)
IPs+=(142.250.0.0/16)
IPs+=(172.253.0.0/16)
IPs+=(74.125.0.0/16)
IPs+=(216.58.192.0/22)
# IPs+=(216.239.32.0/19)
# IPs+=(216.58.192.0/22)

if [[ "$OSTYPE" = "darwin"* ]]; then
  ## add new static route
  # general google
  add_static_route_macos 172.217.0.0/16 172.250
  # google scholar
  add_static_route_macos 142.250.0.0/16 142.250
fi
if [[ "$OSTYPE" = "linux"* ]]; then

  if [[ $remove_only -eq 1 ]]; then
    for ip in ${IPs[@]}; do
      bash "$script_full_path/remove-static-route.sh" $ip
    done
  # otherwise add and remove
  else
    for ip in ${IPs[@]}; do
      bash "$script_full_path/remove-static-route.sh" $ip
      bash "$script_full_path/add-static-route.sh" $ip
    done
  fi
fi
