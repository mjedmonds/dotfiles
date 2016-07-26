if [[ "$OSTYPE" = "darwin"* ]]; then
  export PATH=/usr/local/bin:$PATH
  export PATH=$PATH:/opt/X11/bin
  export PATH=$PATH:/usr/local/git/bin
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/Library/TeX/texbin
  export PATH=$PATH:/Users/mark/bin
  export PATH=$PATH:/Developer/NVIDIA/CUDA-7.0/bin
  # clean up duplcates in path
  PATH="$(echo $PATH | perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, scalar <>))')"

  #export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

  export EDITOR="nvim"
  export VISUAL="nvim"
  #export VIMRUNTIME='/Applications/MacVim.app/Contents/Resources/vim/runtime'

  if [[ :$DYLD_FALLBACK_LIBRARY_PATH: != *:"/Developer/NVIDIA/CDUA-7.0/lib":* ]] ; then
    export DYLD_FALLBACK_LIBRARY_PATH=/Developer/NVIDIA/CDUA-7.0/lib:$DYLD_FALLBACK_LIBRARY_PATH 
    launchctl setenv DYLD_FALLBACK_LIBRARY_PATH $DYLD_FALLBACK_LIBRARY_PATH
  fi

  #OpenCV dir
  export OpenCV=/usr/local/include/opencv

  #Android SDK info
  export ANDROID_HOME=/usr/local/opt/android-sdk

  # Virtualenv/VirtualenvWrapper
  source /usr/local/bin/virtualenvwrapper.sh
fi

if [[ -e ~/.zshrc ]] ; then
  source ~/.zshrc
fi
