FROM httpd:2.4

WORKDIR /usr/local/apache2/htdocs/
COPY  [ "dist/", "./" ]
EXPOSE 80

