FROM gliderlabs/alpine:3.3
RUN apk update && apk-install openssh-client
ENTRYPOINT ["ssh"]
