FROM node
RUN apt-get update && apt-get install -y build-essential
COPY package.json package-lock.json /home/node/app/
WORKDIR /home/node/app
RUN npm install
