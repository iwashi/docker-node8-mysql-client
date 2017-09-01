FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

# Install YARN
RUN apt-get update && apt-get install -y curl apt-transport-https ca-certificates && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list 

RUN apt-get update && apt-get install -y \
  mysql-client \
  git \
  yarn


RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash - && \
  apt-get install -y nodejs
