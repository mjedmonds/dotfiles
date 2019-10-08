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

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
conda_exec="${HOME}/miniconda3/bin/conda"
__conda_setup="$(${conda_exec} 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/mark/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/mark/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/mark/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

