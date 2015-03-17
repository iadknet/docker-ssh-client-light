FROM gliderlabs/alpine:3.1
RUN apk update && apk-install openssh-client
ENTRYPOINT ["ssh"]
