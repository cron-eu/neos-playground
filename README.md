## Abstract

A simple docker based Neos Setup for development and testing.

### Use docker-phpapp Docker Image

See https://github.com/cron-eu/docker-phpapp-php

#### Build a php:8 Docker Image

```shell
cd /tmp
git clone https://github.com/cron-eu/docker-phpapp-php
cd docker-phpapp-php
make build-fpm PLATFORMS=linux/amd64 PHP_VERSION=8 BUILDX_OPTIONS=--load
cd ..
rm -rf docker-phpapp-php
```

#### Docker Compose UP

```shell
docker compose up -d
```

#### Setup a new Neos Environment

```shell
docker compose exec -u application php bash
```

Then, inside the new shell, do:

```bash
/scripts/setup-neos-demo.sh
```

Then, access the Neos Demo Site here: http://localhost:8000/ (when using Docker for Mac).
