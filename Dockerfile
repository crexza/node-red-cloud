FROM nodered/node-red:latest

USER root

RUN mkdir -p /data

WORKDIR /data

RUN npm install --save \
    node-red-dashboard@3.6.6 \
    node-red-node-ui-table@0.4.5 \
    node-red-contrib-modbus@5.45.2

COPY flows.json /data/flows.json

RUN chown -R node-red:node-red /data

USER node-red

EXPOSE 10000

CMD ["sh", "-c", "node-red -p ${PORT:-10000} -u /data -h 0.0.0.0"]