FROM golang AS builder

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential && \
    apt-get clean && \
    mkdir -p "/elasticsearch-head-light"

ADD . "/elasticsearch-head-light"

RUN cd "/elasticsearch-head-light" && \
    CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build --installsuffix cgo --ldflags="-s" -o elasticsearch-head-light elasticsearch-head-light.go

# FROM bitnami/minideb:stretch
FROM scratch
# RUN install_packages ca-certificates
COPY --from=builder /elasticsearch-head-light/elasticsearch-head-light /elasticsearch-head-light
COPY ./_site "/_site"

EXPOSE 9100
# ENTRYPOINT ["/bin/sh"] 
ENTRYPOINT ["/elasticsearch-head-light"] 
