ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk update
RUN apk add --no-cache jq bash git go curl
RUN mkdir -p /root/go/bin
RUN cd /tmp
RUN git clone https://github.com/portainer/agent.git agent
RUN cd agent	
RUN ./dev.sh compile
RUN mkdir -p /opt/agentl
RUN cp /tmp/agent/dist/* /opt/agent

# Copy data for add-on
COPY run.sh /
RUN chmod a+x /run.sh
EXPOSE 9001
CMD [ "/opt/agent/agent --port 9001" ]
#ENTRYPOINT ["tail", "-f", "/dev/null"]
