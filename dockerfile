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

# Stage 4: Production stage
FROM base AS production

WORKDIR /app
COPY --from=deps /app/node_modules ./node_modules
COPY --from=build /app/.output ./.output

# Install Nginx
RUN apk add --no-cache nginx

# Copy Nginx configuration template
COPY nginx.conf.template /etc/nginx/templates/default.conf.template

# Expose port 80 for Nginx
EXPOSE 80
