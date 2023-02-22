#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y shellcheck
sudo apt install -y zip
sudo apt-get install -y npm
npm install -g n
n 16.0.0
hash -r
npm install netlify-cli -g
npm install -g npm@9.4.0
npm install -g markdownlint-cli
sudo apt-get install curl -y
sudo apt-get install -y hugo make
curl -Lo install_hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.109.0/hugo_extended_0.109.0_linux-amd64.deb
sudo apt install ./hugo.deb
sudo apt install zip
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
export PATH=/usr/local/go/bin:$PATH