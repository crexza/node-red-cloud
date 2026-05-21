FROM nodered/node-red:latest

USER root

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production \
    node-red-dashboard \
    node-red-contrib-ui-led \
    node-red-node-ui-table

USER node-red

COPY flows.json /data/flows.json

EXPOSE 1880
