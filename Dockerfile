# Generated via a combination of experience, chatGPT, and https://github.com/vercel/next.js/blob/canary/examples/with-docker-multi-env/docker/development/Dockerfile

# Shared root image
FROM node:19-alpine AS base

# To see why we need libc6-compat:
# https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine
# Install dependencies, configure user and group
RUN apk add --no-cache libc6-compat \
  && addgroup -g 1001 -S nodejs \
  && adduser -S nextjs -u 1001
USER nextjs
# shared workspace
WORKDIR /app

# Install dependencies only when needed
FROM base AS deps
USER nextjs
# Install dependencies. Buildx cache mounting is used to improve speed.
COPY package*.json .
RUN --mount=type=cache,target=/home/nextjs/.npm-cache \
  npm ci \
  && npm cache clean --force

# Dev environment
FROM base AS dev
USER nextjs
COPY --from=deps --chown=nextjs:nodejs /app/package*.json ./
COPY --from=deps --chown=nextjs:nodejs /app/node_modules ./node_modules
ENV NODE_ENV development
RUN npm ci

COPY --chown=nextjs:nodejs . .

EXPOSE 3000
ENV PORT 3000

CMD ["npx", "next", "dev"]


# Rebuild source only when needed
FROM base AS build
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
ENV NODE_ENV=production
RUN npx next build


# Production static content serving
FROM nginx:1.23-alpine AS prod
RUN rm -rf /usr/share/nginx/html/*
COPY --from=build /app/out /usr/share/nginx/html
# we should also copy in an nginx.conf to actually set up some stuff, like _working on port 8080_...
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
