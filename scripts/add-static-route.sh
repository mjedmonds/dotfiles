#!/bin/bash

ip=$1
ip_base=$2

function add_static_route_ubuntu {
  ip=$1

  ## add new static route
  gateway=$(ip route list | awk ' /^default/ {print $3; exit(0)}')
  sudo ip route add $ip via $gateway
}

function add_static_route_macos {
  ip=$1

  ## add new static route
  gateway=$(netstat -rn | awk '/default/ {if ( index($2, ".") > 0 ){print $2} }')
  sudo route -nv add $ip $gateway
}

if [[ "$OSTYPE" = "darwin"* ]]; then
  add_static_route_macos $ip $ip_base
fi
if [[ "$OSTYPE" = "linux"* ]]; then
  add_static_route_ubuntu $ip
fi
