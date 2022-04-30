FROM ubuntu:18.04

# install golang-migrate
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y curl gnupg2 vim && \
    curl -L https://github.com/golang-migrate/migrate/releases/download/v4.11.0/migrate.linux-amd64.tar.gz | tar xvz && \
    mv ./migrate.linux-amd64 /usr/bin/migrate

# install mysql-client
RUN apt-get update &&\
    apt-get install -y mysql-client

ENV MYSQL_URL='mysql://root:root@tcp(mysql:3306)/react_go_app?parseTime=true'

#COPY init.sql /root/migrations/example1/init.sql
