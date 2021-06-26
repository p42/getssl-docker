FROM project42/s6-alpine:3.12
MAINTAINER Jordan Clark mail@jordanclark.us

RUN apk add --no-cache curl bash openssl nginx && \
apk --no-cache --update upgrade && \
mkdir /run/nginx && \
curl --silent https://raw.githubusercontent.com/srvrco/getssl/master/getssl --output /usr/local/bin/getssl && \
chmod +x /usr/local/bin/getssl

COPY container-files /

EXPOSE 80
#ENTRYPOINT ["/usr/local/bin/getssl"]
