#specify the editor to use for control-x control-u
export EDITOR="vi"

#enable colors!
export CLICOLOR=1

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/Users/mark/bin
export PATH=$PATH:/Developer/NVIDIA/CUDA-7.0/bin

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
