FROM gliderlabs/alpine:3.1
RUN apk-install openssh-client
ENTRYPOINT ["ssh"]
