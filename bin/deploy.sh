eval $(docker-machine env marsden)
docker-compose -f docker-compose.prod.yml build && docker-compose -f docker-compose.prod.yml up
eval $(docker-machine env -u)
