FROM python:3.10.4-slim

RUN pip install --no-cache-dir awsebcli && \
    apt-get update && apt-get install wget gnupg2 git -y && \
    echo "deb https://deb.nodesource.com/node_16.x bullseye main" > /etc/apt/sources.list.d/nodesource.list && \
    wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    apt-get update && \
    apt-get install -yqq nodejs=$(apt-cache show nodejs|grep Version|grep nodesource|cut -c 10-) && \
    npm install -g db-migrate db-migrate-mysql && \
    rm -rf /var/lib/apt/lists/*