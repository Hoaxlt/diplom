FROM debian:stable
RUN apt-get update && apt-get install -y curl nginx
COPY ./html/ /var/www/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
EXPOSE 80