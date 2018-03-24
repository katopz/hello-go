# hello-go
Hello Golang! Here I come!

## Prerequisites
- Docker

## Setup
```shell
docker build -f ./builder/Dockerfile -t rabbotio/go-builder .
docker build -f ./Dockerfile -t rabbotio/hello-go .
docker-compose up
```

## Run
```shell
. start
```

## TODO
- [ ] Import external library
- [ ] Test