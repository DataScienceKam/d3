FROM node:carbon
LABEL maintainer="Kam d3 Images"
# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE 8080
CMD ["npm", "start"] 
CMD ["node", "index.js"] 
CMD python -m http.server 8080
