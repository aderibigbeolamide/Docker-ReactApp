FROM node:18.12.0-alpine3.16
# RUN addgroup app && adduser -S -G app app
# USER app
WORKDIR /app
RUN mkdir /data
COPY package*.json ./
RUN npm install 
COPY . .
ENV API_URL=http://api.myapp.com
EXPOSE 3000
CMD npm start