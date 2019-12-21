# build stage
FROM node:alpine as build-stage
WORKDIR /app
COPY package*.json ./
RUN npm ci --production

# production stage
FROM node:alpine as production-stage
WORKDIR /app
COPY --from=build-stage /app .
COPY . .

EXPOSE 3000
CMD ["node", "__sapper__/build"]