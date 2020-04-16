
Dockerfile for https://hub.docker.com/repository/docker/benlittle6/protoc

```
ARCH=x86_64
PROTOC_VERSION=3.11.4
wget -O protoc.zip https://github.com/protocolbuffers/protobuf/releases/download/v$PROTOC_VERSION/protoc-3.11.4-linux-$ARCH.zip
unzip protoc.zip
docker build -t protoc .
```
