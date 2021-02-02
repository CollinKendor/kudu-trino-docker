TRINO_VERSION = 351

trino-install:
	./trino-coordinator/build-remote.sh $(TRINO_VERSION)
	./trino-worker01/build-remote.sh $(TRINO_VERSION)
	./trino-worker02/build-remote.sh $(TRINO_VERSION)

run-with-log:
	docker-compose up

run:
	docker-compose up -d

start:
	docker-compose start coordinator
	docker-compose start worker01
	docker-compose start worker02

stop:
	docker-compose stop

clear:
	docker-compose down
