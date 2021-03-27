# Sudo last command:
alias fuck='printf "Ok, since you ask so nice:\n" && sleep 1 && echo sudo $(history -p !!) && sleep 0.5 && sudo $(history -p !!)'

# List command:
alias list='ls -lah --time-style=long-iso'

# Xmodmap keyboard mapping:
alias xmod='xmodmap ~/.Xmodmap'

# Kvaser CAN drivers usually breaks on reboot:
alias fixcan='(cd ~/Documents/linuxcan/ && sudo make && sudo make purge && sudo make load)'

# cmake build for DEM and UDS:
alias cmake_uds='cmake -B build -S ~/git/rt-platform-vcm/dem/ -DCMAKE_TOOLCHAIN_FILE=~/git/rt-platform-vcm/cmake/toolchain/rt-kernel.cmake -G "Unix Makfiles"'
alias cmake_dem=''

# Shorts for a lot of often used things:
alias v='vim'
alias g='git'
alias gs='git status'
alias gg='git graph'
alias gp='git pull'
alias sv='sudo vim'
alias gl='git log --oneline'
alias gdf='git diff'
alias gvdf='git vdiff'
alias ggvdf='git gvdiff'
alias :q=exit

alias vcm_on='robot --suite VCM_PowerOn  --test "VCM On" /home/rtlsiho/svn/robotest'
alias vcm_off='robot --suite VCM_PowerOn  --test "VCM Off" /home/rtlsiho/svn/robotest'

