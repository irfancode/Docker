<<<<<<< HEAD
#!/bin/bash

date "+DAY : %A%nDATE: %m/%d/%y%nTIME: %H:%M:%S"

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get install docker-ce

sudo docker run hello-world
=======
#!/bin/sh
## Usage: docker_ce_install.sh [options] ARG1
##
## Options:
##   -h, --help    Display this message.
##   -n            Dry-run; only show what would be done.
##

usage() {
  [ "$*" ] && echo "$0: $*"
  sed -n '/^##/,/^$/s/^## \{0,1\}//p' "$0"
  exit 2
} 2>/dev/null

main() {
  while [ $# -gt 0 ]; do
    case $1 in
    (-n) DRY_RUN=1;;
    (-h|--help) usage 2>&1;;
    (--) shift; break;;
    (-*) usage "$1: unknown option";;
    (*) break;;
    esac
  done
  : do echo 'stuff'.
}
>>>>>>> 8e197e4706848d10dd3e5b768e0e06d4ce025fcb
