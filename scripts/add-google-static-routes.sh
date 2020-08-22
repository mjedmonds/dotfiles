#!/bin/bash

function add_static_route_macos {
  ip=$1
  ip_base=$2
  ## remove old static routes if they exist
  gateway_old=$(netstat -rn | grep ${ip_base} | awk '{print $2}')
  if [ -n "$gateway_old" ]; then
    sudo route -nv delete $ip $gateway_old
    echo "Deleted old static route from $ip to $gateway_old"
  fi

  ## add new static route
  gateway=$(netstat -rn | awk '/default/ {if ( index($2, ".") > 0 ){print $2} }')
  sudo route -nv add $ip $gateway
}

function add_static_route_ubuntu {
  ip=$1
  gateway_old=$(ip route list | grep ${ip} | awk '{print $3}')
  if [ -n "$gateway_old" ]; then
    sudo ip route delete $ip via $gateway_old
    echo "Deleted old static route from $ip to $gateway_old"
  fi

  ## add new static route
  gateway=$(ip route list | awk ' /^default/ {print $3; exit(0)}')
  sudo ip route add $ip via $gateway
}

if [[ "$OSTYPE" = "darwin"* ]]; then
  ## add new static route
  # general google
  add_static_route_macos 172.217.0.0/16 172.250
  # google scholar
  add_static_route_macos 142.250.0.0/16 142.250
fi
if [[ "$OSTYPE" = "linux"* ]]; then
  # general google
  add_static_route_ubuntu 172.217.0.0/16
  # google scholar
  add_static_route_ubuntu 142.250.0.0/16
  add_static_route_ubuntu 216.239.32.0/19
fi
