FROM debian:10

COPY bin/protoc /usr/bin/protoc
ENTRYPOINT [ "/usr/bin/protoc" ]

