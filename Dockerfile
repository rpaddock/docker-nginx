FROM nginx:stable-alpine
MAINTAINER Ryan Paddock "rpaddock@gmail.com"

RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./sites-available/default /etc/nginx/sites-available/default
RUN ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default
