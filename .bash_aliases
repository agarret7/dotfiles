# SSH
alias ssh-athena='ssh -X athena.dialup.mit.edu'
alias ssh-desktop='ssh agarret7@18.238.1.14'
alias ssh-fas='ssh agarrett@login.rc.fas.harvard.edu'
alias sshfs-fasme='sshfs agarrett@login.rc.fas.harvard.edu:/n/home02/agarrett/ ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fas='sshfs agarrett@login.rc.fas.harvard.edu:/n/mvogelsfs01/agarrett/ ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'
alias sshfs-umount='fusermount -u ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'

# File Navigation
alias cd-d='cd ~/Dropbox\ \(MIT\)'
alias cd-s='cd ~/Dropbox\ \(MIT\)/school'
alias cd-r='cd ~/Dropbox\ \(MIT\)/research'
alias cd-py='cd ~/Dropbox\ \(MIT\)/Other/"Personal Programming"/Python'
alias cd-space='cd ~/Dropbox\ \(MIT\)/Other/"Personal Programming"/Python/"The Space Beyond"'
alias cd-m='cd ~/Dropbox\ \(MIT\)/Media/Music'
alias cd-c='cd ~/Dropbox\ \(MIT\)/research/cocosci/FluidEnvironment/Framework/liquid_framework/src/'

# Program Shortcuts
alias minecraft='java -jar ~/Games/Minecraft.jar'
alias loot='python3 ~/programming/python/loot/loot.py'
alias eclipse='~/programming/lib/eclipse/eclipse'
alias zb='sh ~/programming/lib/ZeroBraneStudio/zbstudio.sh/'

# Misc
alias ls='ls --color=auto'
alias test='ping google.com'
alias sc='vim ~/Dropbox (MIT)/scratch'
alias rb='exec bash'
alias push-www='python3.5 ~/programming/web/austingarrett/backend/generate && rsync --checksum -r ~/programming/web/austingarrett/* agarret7@athena.dialup.mit.edu:~/web_scripts/personal/'
