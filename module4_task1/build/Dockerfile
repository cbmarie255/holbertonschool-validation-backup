FROM golang:1.15.8-buster
COPY ./setup.sh /
RUN chmod u+x /setup.sh
ENTRYPOINT ["/setup.sh"]
CMD ["OK"]