FROM alpine:3.4

RUN apk --no-cache update && \
    apk --no-cache add python py-pip py-setuptools ca-certificates groff less && \
    pip --no-cache-dir install awsebcli && \
    rm -rf /var/cache/apk/*

WORKDIR /data