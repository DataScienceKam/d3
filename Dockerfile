FROM node:carbon
LABEL maintainer="Kam d3 Images"
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD ["echo", "This is a message from docker for node application"]
CMD ["node", "index.js"]

FROM python:latest
CMD python -m http.server 8080
EXPOSE 8080
