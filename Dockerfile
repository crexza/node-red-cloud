FROM nodered/node-red:latest

USER root

RUN npm install -g @flowfuse/node-red-dashboard

ENV PORT=10000

USER node-red

CMD ["node-red", "-p", "10000", "-u", "/data"]