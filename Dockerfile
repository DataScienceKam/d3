FROM node:8
LABEL maintainer="Kam d3 Images"

ENV PORT 8080
EXPOSE 8080

# Create app directory
WORKDIR /app
COPY package.json .

# Bundle app source
COPY . .

CMD ["npm", "start"]