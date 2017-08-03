# CDV

Docker Template for Development and Production. Javascript, Clojure and Nginx reverse proxy containers.

## Getting Started

```
#git clone git@github.com:Institute1937/marsden.git
#cd marsden
#make build
```

### Prerequisites

What things you need to install the software and how to install them

```
docker
docker-machine
docker-compose
cloud server (eg digital ocean)
```

### Usage

A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
#make build

browse to http://localhost
```

Installs packages and runs the starter template

```
#make start
```

Runs without installing any packages

```
#make bundle
```
packages up front end javascript into production build ready for deployment


## Deployment

```
docker-machine create --driver=digitalocean \
--digitalocean-access-token=yourtokengoeshere \
--digitalocean-image=coreos-stable \
--digitalocean-region=lon1 \
--digitalocean-size=1GB \
--digitalocean-ssh-user=core marsden
```

Creates a docker-machine on CoreOS at Digital Ocean

```
#make deploy
browse to http://your-cloud-ip
```
Deploys to cloud server running docker-machine named marsden

```
#make rename name=myserver
```

Renames cloud server docker-machine to 'myserver'

## Built With

* [Docker](http://www.docker.com) - Containers
* [Docker-Machine](https://github.com/docker/machine) - Provision Docker in cloud
* [Docker-Compose](https://github.com/docker/compose) - Chain Docker containers
* [CoreOS](http://www.coreos.com) - Container Linux for hosting docker
* [Digital Ocean](https://github.com/docker/machine) - Cloud Provider
* [Nginx](https://www.nginx.com/solutions/) - Web Proxy