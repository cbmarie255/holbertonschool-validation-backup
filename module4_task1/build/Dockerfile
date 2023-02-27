FROM golang:1.15.8-buster
WORKDIR /app
COPY ./setup.sh /app/module4_task1/
RUN chmod u+x /app/module4_task1/setup.sh
ENTRYPOINT ["/app/module4_task1/setup.sh"]
CMD ["./setup.sh"]