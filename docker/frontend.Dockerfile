FROM alpine:latest
RUN apk add npm

COPY package.json package-lock.json /code/
WORKDIR /code
RUN npm install
