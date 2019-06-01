### STAGE 1: Build ###
FROM node:12-alpine AS builder

WORKDIR /app
COPY . .
RUN npm ci
RUN npm run clean
RUN npm run build

FROM node:8-alpine AS ts-sample-prod
WORKDIR /app
ENV NODE_ENV=production
COPY --from=builder ./app/dist ./dist
COPY package* ./
RUN npm ci --production

EXPOSE 8000

CMD npm start