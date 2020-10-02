# Simple nginx image
FROM ubuntu:bionic

ENV NGINX_VERSION 1.14.0-0ubuntu1.7

RUN apt-get update && apt-get install -y curl 
RUN apt-get update && apt-get install -y nginx=$NGINX_VERSION

CMD ["nginx", "-g", "daemon off;"]
