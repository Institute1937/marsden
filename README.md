# marsden

Docker Template for Development and Production. Javascript, Clojure and Nginx reverse proxy containers. Goodbye Mr CORS issues

## TLDR

```
git clone git@github.com:Institute1937/marsden.git
cd marsden
make build
```

### Prerequisites

```
docker
docker-machine
docker-compose
cloud server (eg digital ocean)
```

### Usage

```
make build
```

Installs packages and runs the starter template - browse to http://localhost

```
make start
```

Runs without installing any packages - browse to http://localhost

```
make bundle
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
make deploy

```
Deploys to cloud server running docker-machine named marsden - browse to http://your-cloud-ip eg http://mars.io37.ml

```
make rename name=myserver
```

Renames cloud server docker-machine to 'myserver'

## Explanation

* Client container runs vanilla Javascript. Webpack-dev-server runs dev and express runs bundles version in production. Both run on port 5000
* Server container runs Clojure on port 3003
* Client app makes fetch request to Clojure API
* Nginx reverse proxy between client and server runs on port 80
* No CORS configuration needed, handled by nginx
* All appropriate commands in Makefile
* Deploys to Digital Ocean - others to follow

## Built With

* [Docker](http://www.docker.com) - Containers
* [Docker-Machine](https://github.com/docker/machine) - Provision Docker in cloud
* [Docker-Compose](https://github.com/docker/compose) - Chain Docker containers
* [CoreOS](http://www.coreos.com) - Container Linux for hosting docker
* [Digital Ocean](https://github.com/docker/machine) - Cloud Provider
* [Nginx](https://www.nginx.com/solutions/) - Web Proxy
