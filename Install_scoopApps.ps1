cd $PSScriptRoot


# git is first
scoop install git

# add buckets
scoop bucket add extras
scoop bucket add rkbk60 https://github.com/rkbk60/scoop-for-jp
scoop bucket add jfut https://github.com/jfut/scoop-jfut.git
scoop bucket add iyokan-jp https://github.com/tetradice/scoop-iyokan-jp

# other apps
scoop install 7zip
scoop install peco
scoop install pwsh
scoop install python
scoop install busybox
scoop install vim
scoop install vscode
scoop install sakura-editor
scoop install winmerge-jp
scoop install wireshark
scoop install nodejs-lts
scoop install android-studio
scoop install sublime-text
