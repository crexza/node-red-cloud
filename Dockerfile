FROM nodered/node-red:latest

USER root

# install dashboard nodes in correct place
RUN npm install -g \
    node-red-dashboard@3.6.6 \
    node-red-contrib-ui-led

# force Node-RED to use Render port
ENV PORT=10000

USER node-red

# IMPORTANT: explicit start command
CMD ["node-red", "-p", "10000", "-u", "/data"]