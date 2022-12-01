ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq bash git go curl
RUN mkdir -p /root/go/bin
RUN cd /temp
RUN git clone https://github.com/portainer/agent.git agent
RUN cd agent	
RUN ./dev.sh compile
RUN mkdir -p /opt/agent
RUN cp /tmp/agent/dist/* /opt/agent

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
EXPOSE 9001
#CMD [ "sleep 365d" ]
ENTRYPOINT ["tail", "-f", "/dev/null"]
