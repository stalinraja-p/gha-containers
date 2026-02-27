FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS test-project.tam4g1s.mongodb.net
ENV MONGODB_USERNAME stalin
ENV MONGODB_PASSWORD Sampras@8525

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]