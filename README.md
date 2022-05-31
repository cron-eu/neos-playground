## Abstract

A simple docker based Neos Setup for development and testing.

### Use docker-phpapp Docker Image

See https://github.com/cron-eu/docker-phpapp-php for details.

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

#### phpStorm Development

Do a composer install locally to allow phpStorm to index the Packages Folder and related files:

On the local machine, do:

```shell
cd app
composer i
```
