## Abstract

This is basically a fork from https://github.com/cron-eu/neos-playground used for internal training purposes.

### Setup your cron Gitlab User correctly

Make sure you have the global ENV var `GITLAB_USERNAME` configured with your
Github username. The `docker-compose.yml` file will use that.

```bash
echo "GITHUB_USERNAME=MY_GITHUB_USERNAME" >> .env
# or
echo "GITLAB_USERNAME=MY_GITLAB_USERNAME" >> .env
echo "GITLAB_URL=https://gitlab.my-company.org" >> .env
```

OR

```bash
export GITHUB_USERNAME=MY_GITHUB_USERNAME
```

### Docker Setup

#### .dev Hostname

Setup a "dev." Hostname for the docker-machine IP Address, in e.g. `/etc/hosts`:

```
192.168.99.100 dev.neos-playground.docker
```

#### Docker Compose UP

```bash
docker-compose up -d
docker-compose logs -f web
```

.. wait 'till you see the line:

```
.. NOTICE: ready to handle connections
```

The Web-Server is now ready to serve incoming requests:

<http://dev.neos-playground.docker:8081/>


### Access the Web Container via SSH

```bash
make dev-ssh
```

If this fails, check your `GITLAB_USERNAME` ENV var:

```bash
echo $GITLAB_USERNAME
``` 
