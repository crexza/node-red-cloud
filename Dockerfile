FROM nodered/node-red:latest

USER root
RUN mkdir -p /data
WORKDIR /data

RUN npm install --save node-red-dashboard@3.6.6

COPY flows.json /data/flows.json

RUN chown -R node-red:node-red /data

USER node-red

EXPOSE 10000