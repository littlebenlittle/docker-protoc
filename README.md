
Dockerfile for https://hub.docker.com/repository/docker/benlittle6/protoc

## Build Image

```
ARCH=x86_64
PROTOC_VERSION=3.11.4
wget -O protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/protoc-3.11.4-linux-$ARCH.zip
unzip protoc.zip
docker build -t protoc .
```

## Use Image

You need to mount any extensions into the container's `$PATH`. For instance, to create a `protoc` alias for compiling go:

```
EXTENSION=$HOME/go/bin/protoc-gen-go
alias protoc="docker run -it --rm -u `id -u` \
--workdir /work \
--volume  $EXTENSION:/usr/bin/protoc-gen-go \
--volume  $PWD:/work \
--entrypoint protoc \
benlittle6/protoc"
```

