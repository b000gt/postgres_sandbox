FROM ubuntu:20.04

RUN apt update
RUN apt install -y postgresql-client-12

COPY ./go.sh /go.sh
COPY ./psql-commands.sql /psql-commands.sql

CMD ["/go.sh"]