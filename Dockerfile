FROM nodered/node-red:latest

USER root
RUN npm install -g @flowfuse/node-red-dashboard
USER node-red

EXPOSE 1880