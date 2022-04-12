#---------------------------------------------------------------------------

FROM ubuntu:20.04
RUN sudo apt-get -y update
RUN sudo apt-get -y install apache2
RUN sudo echo "This is a test docker" > /var/www/html/index.html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

