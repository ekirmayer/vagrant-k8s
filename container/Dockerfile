FROM node:8.11.1-alpine
RUN apk add --update curl tini && \
    rm -rf /var/cache/apk/*
ENV NODE_ENV=production

COPY . /home/node/app/
WORKDIR /home/node/app/
RUN npm install
EXPOSE 3000

# Tini is now available at /sbin/tini
ENTRYPOINT ["/sbin/tini", "--"]
# Run your program under Tini
CMD ["node", "/home/node/app/server.js"]

# At the end, set the user to use when running this image
USER node