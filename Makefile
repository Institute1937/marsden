local:
	docker-compose up

bundle:
	cd client && npm run build

build:
	docker-compose build && docker-compose up

deploy:
	./bin/deploy.sh
