FROM golang:1.15.8-buster
RUN apt-get update && apt-get install curl make npm -y -f \
&& npm install -g n \
&& n 16.0.0 \
&& hash -r \
&& npm install netlify-cli -g \
&& apt-get install curl -y \
&& npm install npm@latest -g -y \
&& npm install -g npm@9.4.0 \
&& npm install -g markdownlint-cli -g \
&& sudo apt install zip \
&& rm -rf /usr/local/go && tar -C /usr/local -xzf go1.19.5.linux-amd64.tar.gz \
&& export PATH=/usr/local/go/bin:$PATH \
&& curl -LO https://storage.googleapis.com/container-structure-test/latest/container-structure-test-linux-amd64 && chmod +x container-structure-test-linux-amd64 && sudo mv container-structure-test-linux-amd64 /usr/local/bin/container-structure-test