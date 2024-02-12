# Pull base images
FROM node:alpine
WORKDIR /app
COPY . .
RUN npm install --force
RUN npm run build
EXPOSE 4200
CMD ["npm" ,"start"]
