FROM node:10

COPY ["package.json", "package.json", "/usr/src/"]

WORKDIR /usr/src

RUN npm i

COPY [".", "/usr/src/"]

EXPOSE 3000

CMD [ "npx", "nodemon", "index.js" ]