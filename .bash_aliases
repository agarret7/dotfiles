# SSH
alias ssh-172='mosh agarret7@agarret7.perf.engineering'
alias ssh-athena='ssh -X athena.dialup.mit.edu'
alias ssh-desktop='ssh agarret7@18.238.1.14'
alias ssh-fas='ssh agarrett@login.rc.fas.harvard.edu'
alias ssh-om='ssh agarret7@openmind7.mit.edu'
alias sshfs-fas-u='fusermount -u ~/programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fas='sshfs agarrett@login.rc.fas.harvard.edu:/n/mvogelsfs01/agarrett/ ~/programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fasme='sshfs agarrett@login.rc.fas.harvard.edu:/n/home02/agarrett/ ~/programming/research/darkMatterSims/snapshots/mnt/'
alias sshfs-om-u='fusermount -u ~/programming/research/mnt/'
alias sshfs-om='sshfs agarret7@openmind7.mit.edu:/home/agarret7/ ~/programming/research/mnt/'

# Program Shortcuts
alias minecraft='java -jar ~/Games/Minecraft.jar'
alias loot='python3 ~/programming/python/loot/loot.py'
alias eclipse='~/programming/lib/eclipse/eclipse'
alias zb='sh ~/programming/lib/ZeroBraneStudio/zbstudio.sh/'
alias python='python3.5'
alias pip='pip3.5'

# Misc
alias ls='ls --color=auto'
alias test='ping google.com'
alias sc='vim ~/Dropbox\ \(MIT\)/scratch'
alias rb='exec bash'
alias push-www='python3.5 ~/programming/web/austingarrett/backend/generate && rsync --checksum -r ~/programming/web/austingarrett/* agarret7@athena.dialup.mit.edu:~/web_scripts/personal/'
alias tex-clean='rm *.aux && rm *.log && rm *.out'
alias git-hpull='git fetch --all && git reset --hard origin/master'
alias rm-swp='rm .*.sw*'

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
