#!/bin/bash

remove_only=0
while getopts "r" opt
do
    case $opt in
    (r) remove_only=1;;
    (*) printf "Illegal option '-%s'\n" "$opt" && exit 1 ;;
    esac
done

function remove_static_route_macos {
  ip=$1
  ip_base=$2

  ## remove old static routes if they exist
  gateway_old=$(netstat -rn | grep ${ip_base} | awk '{print $2}')
  if [ -n "$gateway_old" ]; then
    sudo route -nv delete $ip $gateway_old
    echo "Deleted old static route from $ip to $gateway_old"
  fi
}

function add_static_route_macos {
  ip=$1
  ip_base=$2

  remove_static_route_macos $ip $ip_base

  ## add new static route
  gateway=$(netstat -rn | awk '/default/ {if ( index($2, ".") > 0 ){print $2} }')
  sudo route -nv add $ip $gateway
}

function remove_static_route_ubuntu {
  ip=$1
  gateway_old=$(ip route list | grep ${ip} | awk '{print $3}')
  if [ -n "$gateway_old" ]; then
    sudo ip route delete $ip via $gateway_old
    echo "Deleted old static route from $ip to $gateway_old"
  fi
}

function add_static_route_ubuntu {
  ip=$1

  remove_static_route_ubuntu $1

  ## add new static route
  gateway=$(ip route list | awk ' /^default/ {print $3; exit(0)}')
  sudo ip route add $ip via $gateway
}

IPs=()
IPs+=(172.217.0.0/16)
IPs+=(142.250.0.0/16)
IPs+=(172.253.0.0/16)
IPs+=(74.125.0.0/16)
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
      remove_static_route_ubuntu $ip
    done
  # otherwise add and remove
  else
    for ip in ${IPs[@]}; do
      add_static_route_ubuntu $ip
    done
  fi
fi
