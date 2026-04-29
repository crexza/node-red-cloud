FROM nodered/node-red:latest

USER root
RUN mkdir -p /data && chown -R node-red:node-red /data
USER node-red

WORKDIR /data

RUN npm install --save \
    node-red-dashboard@3.6.6 \
    node-red-node-ui-table@0.4.5 \
    node-red-contrib-modbus@5.45.2

EXPOSE 1880