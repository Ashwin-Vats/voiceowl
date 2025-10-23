# Stage 1: Build
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .


# Stage 2: Run as non-root
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app /app
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
EXPOSE 8080
CMD ["node", "server.js"]