source config/mars.env
eval $(docker-machine env $digital_ocean_machine)
docker-compose -f docker-compose.prod.yml build && docker-compose -f docker-compose.prod.yml up -d
eval $(docker-machine env -u)
