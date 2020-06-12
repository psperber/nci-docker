FROM node:alpine

RUN apk --update add python make g++

WORKDIR /app

RUN npm install \
    leveldown \
    nci \
    nci-classic-ui \
    nci-mail-notification \
    nci-projects-reloader \
    nci-rest-api-server \
    nci-scheduler \
    nci-static-server \
    nci-yaml-reader \
    nci-docker-node

ENTRYPOINT ["node_modules/.bin/nci"]
