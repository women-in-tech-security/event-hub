# Stage 1: Build npm dependencies
FROM node:22-alpine AS node-builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
COPY pnpm-lock.yaml* ./
RUN npm ci --only=production=false

# Copy full app source
COPY . .

# Build Tailwind CSS
RUN npm run watch:tw -- --watch=false


# Stage 2: Hugo + runtime
FROM hugomods/hugo:exts-0.125.7

WORKDIR /app

# Copy everything from builder
COPY --from=node-builder /app .

# Expose Hugo's default port
EXPOSE 1313

CMD ["hugo", "server", "--bind", "0.0.0.0", "--port", "1313", "--baseURL", "http://localhost:1313"]
