## EB-CLI with Node.js

### 🏷 Latest Tag

The `latest` tag is built from python:3.10.4-slim and have the following dependencies on top of it:

- Node: 16.x
- npm: 8.x
- Python: 3.10.4-slim
- pip: 22.0.4
- EB CLI: 3.20.3
- db-migrate: latest
- db-migrate-mysql: latest
- git: latest

### 🏷 Debian Tag

The `debian` tag is built from ubuntu:20.04 and have the following dependencies on top of it:

- Node: 16.x
- npm: 8.x
- Python: 3.8.10
- pip: 22.0.2
- EB CLI: 3.20.3
- db-migrate: latest
- db-migrate-mysql: latest
- git: latest

## Common tasks
```bash
# Pull from Docker Hub
docker pull ali28729/awsebcli-node:latest
# Build from GitHub
docker build -t ali28729/awsebcli-node github.com/ali28729/docker-awsebcli-node
# Run image
docker run -it ali28729/awsebcli-node bash
```

### Use as base image
```Dockerfile
FROM ali28729/awsebcli-node:latest
```

## Disclaimer
> ⚠️ This repository is experimental and might break from time to time. Use at your own risk! ⚠️
