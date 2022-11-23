ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq rsync

# Copy data for add-on
COPY run.sh /
COPY rsyncd.conf /etc
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
