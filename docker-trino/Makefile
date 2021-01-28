trino-install:
	git clone https://github.com/trinodb/trino
	cp etc trino/core/docker/default/

run:
	docker run -p 8080:8080 --name trino trinodb/trino -d