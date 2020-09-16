FROM nginx:alpine

ENV CN raspberrypi

RUN apk add --no-cache openssl && \
    openssl req -x509 -nodes -newkey rsa:4096 -days 3650 -sha256 \
    -subj "/C=PL/ST=Slaskie/L=Katowice/O=Dis/CN=${CN}" \
    -keyout /etc/ssl/private/nginx.key \
    -out /etc/ssl/private/nginx.crt