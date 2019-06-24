FROM node:carbon
LABEL maintainer="Kam d3 Images"
# Create app directory
WORKDIR /app
COPY package*.json ./
RUN npm install

# Bundle app source
COPY d3 /app

EXPOSE 8080

CMD ["npm", "start"] 
CMD ["node", "index.js"] 

FROM python:latest
CMD python -m http.server 8080
