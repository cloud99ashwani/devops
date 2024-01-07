FROM node:8.16.1-alpine
WORKDIR /app
COPY . /app
RUN npm install

EXPOSE 8000
CMD node index.js

#ENTRYPOINT ["node", "index.js"]
#COPY package.json /app


# docker build -t hello-world-nodejs .
# docker run -p 8000:8000 hello-world-nodejs