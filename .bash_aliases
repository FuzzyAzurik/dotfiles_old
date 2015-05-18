#Navigation
alias 8semester='cd ~/Dropbox/Uni/8.\ semester/'
alias 9semester='cd ~/Dropbox/Uni/9.\ semester/'
alias report='cd ~/git/report-ccs'

#Innowell
alias innostart='cd ~/vbox/innobox/ && vagrant up && cd ~/'
alias innosuspend='cd ~/vbox/innobox/ && vagrant suspend && cd ~/'
alias innostop='cd ~/vbox/innobox/ && vagrant halt && cd ~/'
alias mounthtml='cd ~/ && sshfs -p 2222 -o Ciphers=arcfour jacob@localhost:/var/www/html ~/html'
alias unmounthtml='cd ~/ && fusermount -uqz ~/html'

#Battery powersaving
alias ac='sudo tlp ac'
alias bat='sudo tlp bat'

#Shutdown
alias shutdown='sudo poweroff'
alias reboot='sudo reboot'
alias lock='gnome-screensaver-command -l'
alias sleep='sudo pm-suspend'

#Commands
alias copy='xclip -selection clipboard'
alias aptupup='sudo apt-get update && sudo apt-get upgrade'
alias nemo='nemo --no-desktop'
alias nautilus='nautilus --no-desktop'

#jacobwortman.dk
alias sshjw='ssh jacob@151.236.216.182' #jacob@jacobwortmann.dk will also work

#School
alias sshcaal='ssh caal.cs.aau.dk -l jwortm10@student.aau.dk'
alias supercom='ssh frontend1.mcc.uppaal.org -l jwortm10'
alias ls='ls -h --color=auto'
