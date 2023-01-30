#!/bin/bash
sudo apt-get update -y
wget -qO- https://github.com/koalaman/shellcheck/releases/download/v0.7.0/shellcheck-v0.7.0.linux.x86_64.tar.xz | tar -xJf -
cd shellcheck-v0.7.0/
sudo cp shellcheck /usr/local/bin
sudo apt-get install -y hugo make golang-go git curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb
sudo apt-get remove -y golang-go
sudo apt-get remove -y --auto-remove golang-go
rm -rvf /usr/local/go
wget https://dl.google.com/go/go1.19.5.linux-amd64.tar.gz
rm -rf ./go && tar -C . -xzf go1.19.5.linux-amd64.tar.gz
currentDirectory=$(pwd)
export PATH=$currentDirectory/go/bin:$PATH
