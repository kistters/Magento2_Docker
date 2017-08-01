FROM nginx:stable-alpine

# ensure www-data user exists
RUN set -x ; \
  addgroup -g 82 -S www-data ; \
  adduser -u 82 -D -S -G www-data www-data && exit 0 ; exit 1

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./includes.d /etc/nginx/includes.d
COPY ./conf.d/* /etc/nginx/conf.d/

WORKDIR /src/www

CMD ["nginx", "-g", "daemon off;"]