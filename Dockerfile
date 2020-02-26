FROM centos:latest
MAINTAINER idealphase
RUN yum -y install httpd
COPY index.html /var/www/html
COPY robots.txt /var/www/html
COPY CHANGELOG.txt /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
