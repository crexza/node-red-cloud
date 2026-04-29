FROM nodered/node-red:latest

USER root
RUN mkdir -p /data && chown -R node-red:node-red /data
USER node-red

WORKDIR /data

# Install your nodes into /data so Node-RED can see them
RUN npm install --save \
    node-red-dashboard@3.6.6 \
    node-red-node-ui-table@0.4.5 \
    node-red-contrib-modbus@5.45.2

# Use Render's PORT
ENV PORT=10000

# Start Node-RED on the correct port
CMD ["sh","-c","node-red -p $PORT -u /data"]

EXPOSE 10000