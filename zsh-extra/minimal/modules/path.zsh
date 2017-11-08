function -prompt_ellipse(){
  local string=$1
  local sep="$rsc..$path_color"
  if [[ $MINIMAL_SHORTEN == true ]] && [[ ${#string} -gt 10 ]]; then
    echo "${string:0:4}$sep${string: -4}"
  else
    echo $string
  fi
}

function prompt_path() {
  local path_color="%{[38;5;244m%}%}"
  local rsc="%{$reset_color%}"
  local sep="$rsc/$path_color"

  echo "$path_color$(print -P %2~ | sed s_/_${sep}_g)$rsc"
}

