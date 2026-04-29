FROM nodered/node-red:latest

USER root

RUN mkdir -p /data/.npm
RUN chown -R 1000:1000 /data

USER node-red

WORKDIR /data

ENV NPM_CONFIG_CACHE=/data/.npm

RUN npm install --save \
    node-red-dashboard@3.6.6 \
    node-red-contrib-ui-led@0.4.11

CMD ["node-red", "-p", "10000", "-u", "/data"]