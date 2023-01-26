#!/bin/bash
sudo sudo apt-get update -y
sudo apt-get install -y hugo make golang-go git curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
sudo apt install ./hugo.deb
sudo apt-get install -y shellcheck
sudo apt-get install -y markdownlint
sudo apt-get remove golang-go
sudo apt-get remove --auto-remove golang-go
sudo rm -rvf /usr/local/go
wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz
make build