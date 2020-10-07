#!/bin/bash

ip=$1
ip_base=$2

function remove_static_route_macos {
  ip=$1
  # ip_base=$2

  sudo route -nv delete $ip
  echo "Deleted static route from $ip"
  ## remove old static routes if they exist
  # gateway_old=$(netstat -rn | grep ${ip_base} | awk '{print $2}')
  # if [ -n "$gateway_old" ]; then
    # sudo route -nv delete $ip $gateway_old
    # sudo route -nv delete $ip
    # echo "Deleted static route from $ip"
  # fi
}

function remove_static_route_ubuntu {
  ip=$1
  gateway_old=$(ip route list | grep ${ip} | awk '{print $3}')
  if [ -n "$gateway_old" ]; then
    sudo ip route delete $ip via $gateway_old
    echo "Deleted static route from $ip to $gateway_old"
  fi
}

if [[ "$OSTYPE" = "darwin"* ]]; then
  remove_static_route_macos $ip $ip_base
fi
if [[ "$OSTYPE" = "linux"* ]]; then
  remove_static_route_ubuntu $ip
fi
