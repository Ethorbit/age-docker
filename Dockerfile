FROM alpine:latest
RUN apk update &&\
    apk add --no-cache age
VOLUME /keys
VOLUME /secrets
ENTRYPOINT [ "age" ]
CMD [ "/bin/sh" ]
