# Dockerfile
FROM node:20

WORKDIR /app

# Installer pnpm
RUN npm install -g pnpm

COPY package*.json ./
RUN pnpm install

COPY . .

RUN pnpm run build

EXPOSE 3000
CMD ["pnpm", "start"]