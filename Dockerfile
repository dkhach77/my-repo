#---------------------------------------------------------------------------

FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install apache2
COPY /home/ec2-user/dkhachJob-docker-amazon/index.html /var/www/html

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80

