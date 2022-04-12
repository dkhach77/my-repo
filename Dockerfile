#---------------------------------------------------------------------------

FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2
RUN echo "This is a test docker" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

