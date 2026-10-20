FROM node:22-alpine
WORKDIR /app
COPY server ./server
COPY dist ./dist
COPY data/seed-divisions.json ./data/seed-divisions.json
COPY package.json ./
ENV NODE_ENV=production PORT=8787 HOST=0.0.0.0 DATA_DIR=/app/data TRUST_PROXY=1
EXPOSE 8787
CMD ["node", "server/server.mjs"]
