FROM node:carbon
LABEL maintainer="Kam d3 Images"

ENV PORT 8080
EXPOSE 8080

# Create app directory
WORKDIR /app
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

CMD ["npm", "start"] 
CMD ["node", "index.js"] 

FROM python:latest
CMD python -m http.server 8080
EXPOSE 8080
