source config/mars.env

eval $(docker-machine env $exo_machine)
docker-compose -f docker-compose.prod.yml up --build -d
eval $(docker-machine env -u)
