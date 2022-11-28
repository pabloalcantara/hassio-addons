ARG BUILD_FROM
FROM $BUILD_FROM
#FROM alpine

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq bash curl
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
COPY run.sh /
RUN chmod a+x /run.sh
EXPOSE 9568

CMD /run.sh
