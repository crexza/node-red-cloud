FROM nodered/node-red:latest

USER root
RUN mkdir -p /data/.npm && chown -R node-red:node-red /data

USER node-red
WORKDIR /data

ENV NPM_CONFIG_CACHE=/data/.npm

RUN npm install --no-audit --no-fund --omit=dev \
    @flowfuse/node-red-dashboard@1.30.2

ENV PORT=10000

CMD ["node-red", "-p", "10000", "-u", "/data"]