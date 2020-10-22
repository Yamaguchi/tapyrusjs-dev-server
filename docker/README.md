# Docker Image

This Dockerfile and the surrounding bash scripts will create an image that runs
a dev instance alongside a node http server that is to be used with the
tapyrusjs-client library.

## Build

From this folder, just run:

```bash
docker build -t tapyrusjs-dev-server .
```

## Run

And you will have a local image called tapyrusjs-dev-server which you can run with
the following command.

```bash
docker run -d -p 8080:8080 tapyrusjs-dev-server
```

## Docker Hub

maintains an image of this Dockerfile as
`tapyrus/tapyrusjs-dev-server` on Docker Hub.

```bash
# Downloads the image from docker hub automatically
docker run -d -p 8080:8080 tapyrus/tapyrusjs-dev-server
```

## TapyrusJS Integration Test Usage

With this running on your computer you can run tapyrusjs integration tests much
faster with the `APIURL` environment variable.

```bash
# Run in the tapyrusjs folder
APIURL=http://localhost:8080/1 npm run integration
```
