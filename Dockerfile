FROM node:7-slim
LABEL maintainer="Vidsy <tech@vidsy.co>"

ARG VERSION
LABEL version=$VERSION

RUN mkdir /swagger
RUN npm install -g multi-file-swagger@2.0.0

WORKDIR /swagger

ENTRYPOINT ["multi-file-swagger"]