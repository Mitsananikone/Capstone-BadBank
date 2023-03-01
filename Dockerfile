FROM node:14

ENV PORT 3000
ENV MONGO_URL mongodb://mongobadbank:27017/badbank

RUN mkdir -p /usr/index.js
WORKDIR /usr/src/app

COPY package*.json /usr/index.js
RUN npm install

# Copy the source code to the Docker image
COPY . /usr/index.js

EXPOSE 3000

CMD ["npm", "start"]


