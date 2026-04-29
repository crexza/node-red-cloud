FROM nodered/node-red:latest

USER root

RUN cd /usr/src/node-red && \
    npm install @flowfuse/node-red-dashboard@1.30.2

ENV PORT=10000

USER node-red

CMD ["node-red", "-p", "10000", "-u", "/data"]