if [[ "$OSTYPE" = "darwin"* ]]; then
  export PATH=/usr/local/bin:$PATH
  export PATH=$PATH:/opt/X11/bin
  export PATH=$PATH:/usr/local/git/bin
  export PATH=$PATH:/usr/local/sbin
  export PATH=$PATH:/Library/TeX/texbin
  export PATH=$PATH:/Users/mark/bin
  export PATH=$PATH:/Developer/NVIDIA/CUDA-8.0/bin
  export PATH=$PATH:/Users/mark/.local/bin

  # clean up duplcates in path
  PATH="$(echo $PATH | perl -e 'print join(":", grep { not $seen{$_}++ } split(/:/, scalar <>))')"

  #export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

  export EDITOR="mvim"
  export VISUAL="mvim"
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

if [[ "$OSTYPE" = "linux"* ]]; then
  export IBUS_ENABLE_SYNC_MODE=1
  export PATH=$PATH:~/Developer/clion-2016.3.3/bin/
  export PATH=$PATH:/usr/local/cuda/bin/
fi

if [[ -e ~/.zshrc ]] ; then
  source ~/.zshrc
fi
