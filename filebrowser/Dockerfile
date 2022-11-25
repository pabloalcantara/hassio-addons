#ARG BUILD_FROM
#FROM $BUILD_FROM
FROM alpine

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq bash build-base curl file git gzip libc6-compat ncurses ruby ruby-dbm ruby-etc ruby-irb ruby-json
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
# Copy data for add-on
COPY run.sh /
#COPY rsyncd.conf /etc
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
