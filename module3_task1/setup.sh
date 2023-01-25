#!/bin/bash
apt-get update -y
apt-get install -y hugo make golang-go git curl
curl -L https://github.com/gohugoio/hugo/releases/download/v0.84.0/hugo_0.84.0_Linux-64bit.deb -o hugo.deb
apt install ./hugo.deb
apt-get install -y shellcheck