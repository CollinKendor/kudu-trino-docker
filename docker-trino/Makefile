trino-install:
	cd trino-base
	./build-remote.sh

run-with-log:
	docker run -p 8080:8080 --name trino trino:352-SNAPSHOT

run:
	docker run -d -p 8080:8080 --name trino trino:352-SNAPSHOT