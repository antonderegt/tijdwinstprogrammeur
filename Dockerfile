# build stage
FROM node:alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# production stage
FROM node:alpine as production-stage
WORKDIR /app
COPY --from=build-stage /app .
#COPY . .

EXPOSE 3000
CMD ["npm", "start"]
