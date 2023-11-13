FROM nginx:latest

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

COPY ./nginx/index.html /var/www/html/public/index.html

EXPOSE 80/tcp

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]