FROM node:14

ENV PORT 3000
ENV MONGO_URL mongodb://mongobadbank:27017/badbank

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package*.json /usr/src/app/
RUN npm install

# Copy the source code to the Docker image
COPY . /usr/src/app

EXPOSE 3000

CMD ["npm", "start"]


