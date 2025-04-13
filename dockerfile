# Stage 1: Base stage
FROM node:22-alpine AS base

WORKDIR /app

# Stage 2: Install dependencies
FROM base AS deps

RUN corepack enable
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile --production

# Stage 3: Build the application
FROM base AS build

ARG NUXT_APP_ENV
ENV NUXT_APP_ENV=$NUXT_APP_ENV

RUN corepack enable
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile
COPY . .
RUN yarn build

# Stage 4: Prepare production files
FROM base AS production

WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY --from=build /app/.output ./.output

# Stage 5: Nginx for serving the app
FROM nginx:1.27.0-alpine

# Copy Nginx configuration
COPY nginx.conf.template /etc/nginx/templates/

# Copy built application files to Nginx
COPY --from=production /app/.output /usr/share/nginx/html
