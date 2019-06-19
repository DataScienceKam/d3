FROM node:carbon
LABEL maintainer="Kam d3 Images"

ENV PORT 8080
EXPOSE 8080

# Create app directory
WORKDIR /app
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

CMD ["npm", "start"]