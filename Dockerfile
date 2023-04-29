# Generated via a combination of experience, chatGPT, and https://github.com/vercel/next.js/blob/canary/examples/with-docker-multi-env/docker/development/Dockerfile

FROM node:19-alpine AS base

# 1. Install dependencies only when needed
FROM node:19-alpine AS deps
# To see why we need libc6-compat:
# https://github.com/nodejs/docker-node/tree/b4117f9333da4138b03a546ec926ef50a31506c3#nodealpine
RUN apk add --no-cache libc6-compat
WORKDIR /app
# Install dependencies. Buildx cache mounting is used to improve speed.
COPY package*.json ./
RUN --mount=type=cache,target=/home/node/.npm-cache \
  chown -R node:node /app \
  && npm ci \
  && npm cache clean --force

# 2. Rebuild source only when needed
FROM base AS builder
WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY . .
ENV NODE_ENV=production
RUN npx next build

# 3. Actual dev environment
FROM base AS dev
WORKDIR /app

ENV NODE_ENV=production

RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001

COPY --from=builder /app/public ./public

# Automatically leverage output traces to reduce image size
# https://nextjs.org/docs/advanced-features/output-file-tracing
COPY --from=builder --chown=nextjs:nodejs /app/.next/standalone ./
COPY --from=builder --chown=nextjs:nodejs /app/.next/static ./.next/static

USER nextjs
EXPOSE 3000
ENV PORT 3000














# FROM base AS dev
# ENV NODE_ENV=development
# RUN npm ci --production=false
# COPY --chown=node:node . .
# USER node
# CMD ["npm", "run", "dev"]

# # Build stage
# FROM dev AS build
# ENV NODE_ENV=production
# RUN npm run build

# # Final stage: for serving the built application with NGINX
# FROM nginx:alpine
# COPY --from=build /app/out /usr/share/nginx/html
# EXPOSE 8080
# USER nginx
# CMD ["nginx", "-g", "daemon off;"]
