
# docker-barterdex-api

[![Build Status](https://travis-ci.org/lukechilds/docker-barterdex-api.svg?branch=master)](https://travis-ci.org/lukechilds/docker-barterdex-api)
[![Image Layers](https://images.microbadger.com/badges/image/lukechilds/barterdex-api.svg)](https://microbadger.com/images/lukechilds/barterdex-api)
[![Docker Pulls](https://img.shields.io/docker/pulls/lukechilds/barterdex-api.svg)](https://hub.docker.com/r/lukechilds/barterdex-api/)

## Usage

```shell
docker run -e PASSPHRASE="secure passphrase" -p 127.0.0.1:7783:7783 lukechilds/barterdex-api
```

## Building your own

Checkout this repo and run:

```shell
docker build -t barterdex-api .
```

You can also specify a custom branch/commit to build via a build arg:

```shell
# Build at tip of master
docker build -t barterdex-api --build-arg CHECKOUT=master .

# Build at commit 715b02e
docker build -t barterdex-api --build-arg CHECKOUT=715b02e .
```

## License

MIT © Luke Childs
