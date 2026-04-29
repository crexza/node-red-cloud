FROM nodered/node-red:latest

USER root
RUN mkdir -p /data
WORKDIR /data

RUN npm install \
    node-red-dashboard@3.6.6 \
    node-red-contrib-ui-led

RUN chown -R node-red:node-red /data

USER node-red

CMD ["npm", "start", "--", "--userDir", "/data"]