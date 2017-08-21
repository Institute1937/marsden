source config/mars.env

docker-machine create --driver=digitalocean \
--digitalocean-access-token=$digitalocean-access-token \
--digitalocean-image=coreos-stable \
--digitalocean-region=lon1 \
--digitalocean-size=1GB \
--digitalocean-ssh-user=core barnowl
