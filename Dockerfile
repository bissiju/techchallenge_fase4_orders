FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
WORKDIR /usr/src/app/orders-api/
EXPOSE 3000
RUN npm ci 2>/dev/null
RUN rm -rf dist && npm run build
CMD npm run start
