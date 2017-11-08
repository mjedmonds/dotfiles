function prompt_vimode(){
  local ret=""

  case $KEYMAP in
    main|viins)
      ret+="$ON_COLOR"
      ;;
    vicmd)
      ret+="$OFF_COLOR"
      ;;
  esac

  ret+="$PROMPT_CHAR%{$reset_color%}"

  echo "$ret"
}

function zle-line-init zle-line-finish zle-keymap-select {
  zle reset-prompt
  zle -R
}

zle -N zle-line-init
zle -N zle-keymap-select
zle -N zle-line-finish

