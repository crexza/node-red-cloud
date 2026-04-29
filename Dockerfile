FROM nodered/node-red:latest

USER root

# Make sure data folder exists
RUN mkdir -p /data

# Switch to data folder
WORKDIR /data

# Install nodes HERE (IMPORTANT)
RUN npm install \
    node-red-dashboard@3.6.6 \
    node-red-contrib-ui-led

# Fix permissions
RUN chown -R node-red:node-red /data

USER node-red

EXPOSE 10000