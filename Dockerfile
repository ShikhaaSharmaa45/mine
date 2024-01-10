FROM ubuntu:14.04
MAINTAINER sanjay.dahiya332@gmail.com
RUN apt-get install -y apache2 \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
EXPOSE 80
