# Kudu Cluster and Trino Cluster Docker Image.
## About
The docker images is designed to provide the following:
* Small development environment for development and testing.
* An out of box 8 node Kudu cluster with 3 master nodes and 5 worker nodes.
* An out of box 3 node Trino cluster with 1 coordinator node and 2 worker nodes.
  * The cluster will have the following catalog:
    * JMX
    * memory
    * TPC-DS
    * TPC-H 
    * Kudu
## Quickstart
Before starting, this repository needs to be cloned.
```bash
git clone https://github.com/CollinKendor/kudu-trino-docker
```
### Kudu
#### Install Service
1. Enter the `kudu-cluster` directory:
```bash
cd kudu-cluster
```
2. Get Kudu docker image:
```bash
make kudu-install
```
#### Start Cluster
Start Kudu cluster:
```bash
make run
```
#### Stop Cluster
To stop the Kudu service, run:
```bash
make stop
```
#### Stop and Clear
To clear Kudu docker images entirely:
```bash
make clear
```
### Trino
#### Install Service
1. Enter the `trino-cluster` directory:
```bash
cd trino-cluster
```
2. Build Trino docker images:
```bash
make trino-install
```
#### Start Cluster
Start Trino cluster and create Container:
```bash
make run
```
To see the logs during start up, use:
```bash
make run-with-log
```
To start just the Trino service without creating new container:
```bash
make start
```
<br/><br/>
Wait for the following message log line:
```
INFO	main	io.trino.server.Server	======== SERVER STARTED ========
```
The Trino cluster is now running on `localhost:8080` (the default port).
#### Stop Cluster
To stop Trino cluster:
```bash
make stop
```
#### Stop and Clear
To stop Trino cluster and remove container:
```bash
make clear
```