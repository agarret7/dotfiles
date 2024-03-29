# SSH
alias ssh-172='mosh agarret7@agarret7.perf.engineering'
alias ssh-athena='ssh -X agarret7@athena.dialup.mit.edu'
alias ssh-desktop='ssh agarret7@18.238.1.14'
alias ssh-om='ssh -X agarret7@openmind7.mit.edu'
alias ssh-gpu='ssh -p 49689 agarret7@probcomp-gpu-1.mit.edu'
alias sshfs-fas-u='fusermount -u ~/Programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fas='sshfs agarrett@login.rc.fas.harvard.edu:/n/mvogelsfs01/agarrett/ ~/Programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fasme='sshfs agarrett@login.rc.fas.harvard.edu:/n/home02/agarrett/ ~/Programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-om='sshfs agarret7@openmind7.mit.edu:/om2/user/agarret7/ ~/Programming/research/mnt/'
alias sshfs-pcg='sshfs pcg:/home/agarret7/src /home/austin/src/mnt'
alias sshfs-home='sshfs home:/home/austin/src /home/austin/src/mnt'
alias sshfs-u='sudo umount -l ~/Programming/research/mnt/'
alias ssh-isee='ssh austin@10.0.0.101'
# alias home='ssh -X austin@10.238.0.13'
alias home='ssh -X austin@18.110.155.67'
alias pass='date +%s | sha256sum | base64 | head -c 32 ; echo'
alias ovpn-start='sudo openvpn $HOME/Programming/scripts/isee.ovpn'
alias home-up='ssh -fNTM home'
alias home-status='ssh -TO check home'
alias home-down='ssh -TO exit home'

# Program Shortcuts
alias loot='python3 ~/Programming/python/loot/loot.py'
alias eclipse='~/Programming/lib/eclipse/eclipse'
alias zb='sh ~/Programming/lib/ZeroBraneStudio/zbstudio.sh/'
# alias python='python3.8'
# alias pip='pip3'
alias pip='python -m pip'
alias julia="/bin/julia"
alias jl='PYTHON=python3 JULIA_NUM_THREADS=10 julia --project'

# Misc
alias fe='~/src/scripts/fe_amd64'
alias sc='vim ~/Documents/.sc'
alias rb='exec bash'
alias tex-clean='rm *.aux *.log *.out *.run.xml *.nav *.bcf *.snm *.toc 2>/dev/null'
alias git-hpull='git fetch --all && git reset --hard origin/main'
alias git-rem='git config --global credential.helper "cache --timeout=15552000"'
alias rm-swp='rm .*.sw*'
alias lo='i3-msg exit'
alias hibernate='lock -g && systemctl hibernate'
# alias sleep='lock -g && systemctl suspend'
alias l='ls'  # Yes, I'm that lazy
alias wifi-ls='nmcli device wifi rescan; nmcli device wifi list'
alias al='vim ~/.bash_aliases'
alias fix-i3='sudo service network-manager restart && pkill nm-applet && pkill blueman-applet && nm-applet && blueman-applet &'
alias kill-bar='pkill nm-applet & pkill blueman-applet'
alias release='lsb_release -r && echo "Kernel:         $(uname -r)"'
alias mkvid='ffmpeg -start_number 0 -i %d.png -vcodec mpeg4 $1'
alias cora='sudo $HOME/src/GenSceneGraphs.jl/scripts/staging/run_docker.sh'
alias settings='gnome-control-center'
alias xa='xrandr --auto'
alias mvl='i3-msg move workspace to output left'
alias mvr='i3-msg move workspace to output right'
alias fix-audio-jack='pacmd set-default-sink 1'
alias cap='grim -g "$(slurp)" ~/pic/screenshot.png'
alias ls='lsd -Isnap -IZomboid'
alias vedit='${VISUAL}'
alias edit='TERM=rxvt-unicode-256color ${EDITOR}'

# fasd commands
alias a='fasd -a'              # any
alias s='fasd -si'             # show / search / select
alias d='fasd -d'              # directory
alias f='fasd -f'              # file
alias sd='fasd -sid'           # interactive directory selection
alias sf='fasd -sif'           # interactive file selection
alias z='fasd_cd -d'           # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i'       # cd with interactive selection
alias v='f -e vim'             # quick opening files with vim
alias m='f -e vlc'             # quick opening files with mplayer
e () { f $1 .pdf -e evince; }  # quick opening files with xdg-open
alias c='fasd_cd -d'           # c now does what z did (navigation).
alias f_add='find -type f -exec touch {} +' # Recursively touch a directory.

# Keyboard layouts
alias arst="setxkbmap us"
alias asdf="setxkbmap us -variant colemak"

# Games
alias minecraft='~/Games/minecraft/minecraft-launcher &'
alias cata='~/Games/cataclysmdda-0.D/cataclysm-launcher &'
alias sun='wine "C:\Westwood\SUN\game.exe"'