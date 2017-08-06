include config/mars.env

start:
	docker-compose up

bundle:
	cd client && npm run build

build:
	docker-compose build && docker-compose up

deploy-do:
	./bin/digital_ocean/deploy.sh

deploy-aws:
	./bin/aws/deploy.sh