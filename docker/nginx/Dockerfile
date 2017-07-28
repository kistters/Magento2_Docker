FROM alpine:3.2

RUN apk add --update nginx && rm -rf /var/cache/apk/*
RUN mkdir -p /tmp/nginx/client-body

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./includes.d /etc/nginx/includes.d
COPY ./conf.d/* /etc/nginx/conf.d/

WORKDIR /srv/www

CMD ["nginx", "-g", "daemon off;"]