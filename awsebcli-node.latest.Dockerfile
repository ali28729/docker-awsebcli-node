# using ubuntu LTS version
FROM ubuntu:20.04 AS builder-image

# avoid stuck build due to user prompt
ARG DEBIAN_FRONTEND=noninteractive

# all necessaries for next RUN
RUN set -e; \
    apt-get update && \
    apt-get install -qqy --no-install-recommends git \
	curl wget nano gnupg2 software-properties-common
    
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -qqy nodejs \
	python3.9 python3-pip python3-wheel && \
	apt-get clean && rm -rf /var/lib/apt/lists/*

RUN npm install -g db-migrate db-migrate-mysql

RUN pip3 install --no-cache-dir awsebcli