start:
	docker-compose up
york:
	./bin/york/deploy.sh

bundle:
	cd client && npm run build

build:
	docker-compose build && docker-compose up 

deploy-do:
	./bin/digital_ocean/deploy.sh

deploy-aws:
	./bin/aws/deploy.sh

deploy-exo:
	./bin/exo/deploy.sh
