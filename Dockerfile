FROM node:15.3.0-alpine3.10

# install chrome for tests
RUN apk add chromium
ENV CHROME_BIN='/usr/bin/chromium-browser'

RUN mkdir -p /opt/spa
WORKDIR  /opt/spa
COPY  [ "package*.json", "./" ]
RUN npm install
RUN npm install -g @angular/cli@9.1.0
COPY [".","./"]

# run tests
RUN ng lint
RUN ng test --watch=false
#RUN ng e2e --port 4202
EXPOSE 4200
CMD ng serve --host 0.0.0.0

