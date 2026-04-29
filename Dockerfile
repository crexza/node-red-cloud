FROM nodered/node-red:latest

USER root

RUN npm install -g \
    node-red-dashboard@3.6.6 \
    node-red-contrib-ui-led

USER node-red