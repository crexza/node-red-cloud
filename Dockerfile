FROM nodered/node-red:latest

USER root

RUN npm install -g \
    node-red-dashboard@3.6.6 \
    node-red-node-ui-table@0.4.5 \
    node-red-contrib-modbus@5.45.2 \
    @flowfuse/node-red-dashboard

RUN mkdir -p /data/.npm && chown -R node-red:node-red /data

USER node-red

EXPOSE 1880