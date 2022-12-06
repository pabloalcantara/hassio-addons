ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update; apk add --no-cache jq bash git go curl
RUN git clone https://github.com/portainer/agent.git /tmp/agent
RUN cd /tmp/agent ;./dev.sh compile; apk del git go
RUN mkdir -p /opt/agent; cp /tmp/agent/dist/* /opt/agent; rm -rf /tmp/agent

COPY run.sh /
RUN chmod a+x /run.sh
EXPOSE 9001
CMD [ "/run.sh" ]
