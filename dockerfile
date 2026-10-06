FROM node:22-alpine
WORKDIR /app
# Dependencies first, so editing the code doesn't reinstall them.
COPY package.json package-lock.json ./
RUN npm ci --omit=dev
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
