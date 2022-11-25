#ARG BUILD_FROM
#FROM $BUILD_FROM
FROM alpine

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq bash curl
#RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
RUN curl -fsSL https://raw.githubusercontent.com/filebrowser/get/master/get.sh | bash
# Copy data for add-on
COPY run.sh /
#COPY rsyncd.conf /etc
RUN chmod a+x /run.sh
EXPOSE 80

CMD [ "/run.sh" ]
