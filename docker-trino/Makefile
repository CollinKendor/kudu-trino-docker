TRINO_VEERSION = 351

trino-install:
	./trino-coordinator/build-remote.sh TRINO_VERSION
	./trino-worker01/build-remote.sh TRINO_VERSION
	./trino-worker02/build-remote.sh TRINO_VERSION

run-with-log:
	docker-compose up

run:
	docker-compose up -d

stop:
	docker-compose down