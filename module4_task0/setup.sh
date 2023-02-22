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
sudo apt-get install -y hugo make
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb