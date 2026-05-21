# syntax=docker/dockerfile:1
FROM nginx
COPY static-html-directory /usr/share/nginx/html
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./ssl/ /etc/ssl/certs/nginx/

