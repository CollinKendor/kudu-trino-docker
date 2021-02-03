# Trino Docker Image

## About the Container
This Docker image is designed to provide the following
* An out-of-the-box 3 node cluster with the JMX, memory, TPC-DS, TPC-H and Kudu
  catalogs
* An image that can be deployed as a full cluster by mounting in configuration
* An image to be used as the basis for the Kubernetes Trino operator

## Quickstart
### Run the Trino CLI

Run the [Trino CLI](https://trino.io/docs/current/installation/cli.html),
which connects to `localhost:8081` by default:

```bash
docker exec -it worker01 trino
```

You can pass additional arguments to the Trino CLI:

```bash
docker exec -it worker01 trino --catalog kudu --schema default
```

## Configuration

Configuration is expected to be mounted `/etc/trino`. If it is not mounted
then the default single node configuration will be used.

### Specific Config Options

#### `node.id`

The container supplied `run-trino` command will set the config property
`node.id` to the hostname of the container if it is not specified in the
`node.properties` file. This allows for `node.properties` to be a static file
across all worker nodes if desired. Additionally this has the added benefit of
`node.id` being consistent, predictable, and stable through restarts.

#### `node.data-dir`

The default configuration uses `/data/trino` as the default for
`node.data-dir`. Thus if using the default configuration and a mounted volume
is desired for the data directory it should be mounted to `/data/trino`.

## Building a custom Docker image

To build an image:

```bash
./build-remote.sh
```

The Docker build process will print the ID of the image, which will also
be tagged with `trino-worker01:xxx`, where `xxx` is the version
number of the Trino Maven build.

## Getting Help

Join the Trino community [Slack](https://trino.io/slack.html).
