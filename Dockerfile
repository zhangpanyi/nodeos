FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install curl wget -y

RUN wget -P /eosio https://github.com/$(curl -s -L https://github.com/EOSIO/eos/releases/latest | egrep -o -m 1 '/EOSIO/eos/releases/download/(.+)/eosio(.+)-ubuntu-18.04_amd64.deb')
RUN apt-get install /eosio/$(ls /eosio | egrep -o -m 1 '^eosio(.+)ubuntu-18.04_amd64.deb$') -y
RUN rm -rf /eosio

EXPOSE 8888