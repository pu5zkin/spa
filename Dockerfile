FROM node:15.3.0-alpine3.10

RUN mkdir -p /opt/spa
WORKDIR  /opt/spa
COPY  [ "package*.json", "./" ]
RUN npm install
RUN npm install -g @angular/cli@9.1.0
COPY [".","./"]
EXPOSE 4200
CMD ng serve --host 0.0.0.0

