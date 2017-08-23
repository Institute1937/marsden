start:
	docker-compose up
iku:
	./bin/iku/run.sh

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
