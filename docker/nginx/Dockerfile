FROM nginx:1.12.1-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./includes.d /etc/nginx/includes.d
COPY ./conf.d/* /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]