FROM stackbrew/ubuntu

MAINTAINER Ukang'a Dickson

VOLUME ["/data"]

RUN apt-get update
RUN apt-get install -y nano wget dialog net-tools
RUN apt-get install -y nginx

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
CMD service nginx start
