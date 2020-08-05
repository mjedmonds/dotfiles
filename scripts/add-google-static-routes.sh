#!/bin/bash

if [[ "$OSTYPE" = "darwin"* ]]; then
  # assumes gateway is XXX. followed by the rest of the gateway
  gateway=$(netstat -rn | awk '/default/ {if ( index($2, ".") > 0 ){print $2} }')
  # general google
  sudo route -nv add 172.217.0.0 ${gateway}
  # google scholar
  sudo route -nv add 142.250.0.0 ${gateway}
fi