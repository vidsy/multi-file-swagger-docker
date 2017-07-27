FROM node:7-slim
MAINTAINER charlie@vidsy.co

RUN mkdir /swagger
RUN npm install -g multi-file-swagger@2.0.0

WORKDIR /swagger

ENTRYPOINT ["multi-file-swagger"]