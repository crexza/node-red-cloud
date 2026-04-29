FROM nodered/node-red:latest

USER root

# Install FlowFuse globally
RUN npm install -g @flowfuse/node-red-dashboard

# Tell Node-RED to load global modules
ENV NODE_PATH=/usr/local/lib/node_modules

ENV PORT=10000

USER node-red

CMD ["node-red", "-p", "10000", "-u", "/data"]