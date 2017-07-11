alias ls='ls --color=auto'
alias ssh-athena='ssh -X athena.dialup.mit.edu'
alias ssh-desktop='ssh agarret7@18.238.1.14'
alias chrome='google-chrome-stable &> /dev/null'
alias test='ping google.com'
alias log-out='gnome-session-quit'
alias pycharm='/bin/pycharm-community-4.5.4/bin/pycharm.sh'
alias I='sudo apt-get install'
alias min='xdotool windowminimize $(xdotool getactivewindow)'
alias cd-d='cd ~/Dropbox\ \(MIT\)'
alias files='nautilus'
alias cd-s='cd ~/Dropbox\ \(MIT\)/school'
alias cd-r='cd ~/Dropbox\ \(MIT\)/research'
alias cd-py='cd ~/Dropbox\ \(MIT\)/Other/"Personal Programming"/Python'
alias cd-space='cd ~/Dropbox\ \(MIT\)/Other/"Personal Programming"/Python/"The Space Beyond"'
alias cd-m='cd ~/Dropbox\ \(MIT\)/Media/Music'
alias memorylist='libreoffice ~/Dropbox\ \(MIT\)/Other/Miscellaneous/"Memory List.odt"'
alias sc='cd-d && vim scratch'
alias rb='exec bash'
alias minecraft='java -jar ~/Games/Minecraft.jar'
alias superplot='python ~/programming/libraries/superplot/superplot/super_gui.py'
alias aliases='gedit ~/.bash_aliases&'
alias ssh-fas='ssh agarrett@login.rc.fas.harvard.edu'
alias sshfs-fasme='sshfs agarrett@login.rc.fas.harvard.edu:/n/home02/agarrett/ ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'
alias sshfs-fas='sshfs agarrett@login.rc.fas.harvard.edu:/n/mvogelsfs01/agarrett/ ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'
alias sshfs-umount='fusermount -u ~/Dropbox\ \(MIT\)/research/darkMatterSims/snapshots/mnt/'
alias away='cd && min && reset'
alias loot='python3 ~/programming/python/loot/loot.py'
alias eclipse='~/programming/lib/eclipse/eclipse'
alias eclipse-cdt='~/programming/lib/eclipse-cdt/eclipse'
alias push-www='python3.5 ~/programming/web/austingarrett/backend/generate && rsync --checksum -r ~/programming/web/austingarrett/* agarret7@athena.dialup.mit.edu:~/web_scripts/personal/'
alias zb='sh ~/programming/lib/ZeroBraneStudio/zbstudio.sh/'
alias cd-c='cd ~/Dropbox\ \(MIT\)/research/cocosci/FluidEnvironment/Framework/liquid_framework/src/'

mz ()
{
    curl 'http://musicazoo.mit.edu/nlp' -H 'Content-Type: text/json' --data-binary "[{\"cmd\":\"do\",\"args\":{\"message\":\"$1\"}}]";
        echo
}

replace ()
{
    find /path/to/files -type f -exec sed -i 's/oldstring/new string/g' {} \;
}
