FROM golang:1.15.8-buster
RUN apt-get update && apt-get install curl make npm -y
RUN npm install -g n -y
RUN n 16.0.0
RUN hash -r
RUN npm install netlify-cli -g
RUN apt-get install curl -y
RUN npm install npm@latest -g -y
RUN npm install -g npm@9.4.0
RUN npm install -g markdownlint-cli -g
RUN sudo apt install zip
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz
RUN export PATH=/usr/local/go/bin:$PATH