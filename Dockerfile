FROM nginx

RUN openssl req -x509 -nodes -newkey rsa:4096 -days 3650 -sha256 -subj "/C=PL/ST=Slaskie/L=Katowice/O=Dis/CN=$(hostname)" -keyout /etc/ssl/private/nginx.key -out /etc/ssl/private/nginx.crt 

COPY nginx.conf /etc/nginx/nginx.conf