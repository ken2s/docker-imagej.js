FROM node:12

WORKDIR /app

RUN git clone https://github.com/imjoy-team/imagej.js

WORKDIR /app/imagej.js

RUN npm install   &&\
    npm run build &&\
    sh get-imagej.sh

EXPOSE 9090

CMD [ "npm", "run", "serve" ]
