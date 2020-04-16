FROM debian:10

COPY protoc/bin/protoc /usr/bin/protoc
ENTRYPOINT [ "/usr/bin/protoc" ]

