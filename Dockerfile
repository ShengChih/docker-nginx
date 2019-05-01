FROM nginx:latest
MAINTAINER ms0529756@gmail.com

RUN apt-get update -y \
    && apt-get install -y procps net-tools vim telnet 

EXPOSE 80 443

COPY nginx.conf /etc/nginx/nginx.conf
COPY web-service.conf /etc/nginx/conf.d/web-service.conf
COPY .gitconfig /root/.gitconfig

CMD ['/usr/sbin/nginx']
