#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y shellcheck
sudo apt install -y zip
sudo apt-get install -y npm
npm install -g n
n 16.0.0
hash -r
npm install -g npm@7.10.0
npm install -g markdownlint-cli
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
