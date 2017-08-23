eval $(docker-machine env york)
docker-compose up --build
eval $(docker-machine env -u)
